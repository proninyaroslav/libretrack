/*
 * Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
 * Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
 *
 * This file is part of LibreTrack.
 *
 * LibreTrack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LibreTrack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.
 */

package org.proninyaroslav.libretrack

import android.content.pm.PackageManager
import android.os.Bundle
import android.view.KeyEvent
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.DataBindingUtil
import org.proninyaroslav.libretrack.databinding.ActivityBarcodeScannerBinding
import com.journeyapps.barcodescanner.CaptureManager
import com.journeyapps.barcodescanner.DecoratedBarcodeView

class BarcodeScannerActivity : AppCompatActivity(), DecoratedBarcodeView.TorchListener {
    private lateinit var binding: ActivityBarcodeScannerBinding
    private lateinit var capture: CaptureManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = DataBindingUtil.setContentView(this, R.layout.activity_barcode_scanner)
        binding.barcodeView.setTorchListener(this)
        binding.handlers = Handlers()
        binding.flashlightEnabled = savedInstanceState?.getBoolean(tagFlashlightEnabled) ?: false
        binding.flashlightSupported = hasFlash()

        capture = CaptureManager(this, binding.barcodeView)
        capture.initializeFromIntent(intent, savedInstanceState);
        capture.setShowMissingCameraPermissionDialog(false);
        capture.decode();
    }

    override fun onResume() {
        super.onResume()
        capture.onResume()
    }

    override fun onPause() {
        super.onPause()
        capture.onPause()
    }

    override fun onDestroy() {
        super.onDestroy()
        capture.onDestroy()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        outState.putBoolean(tagFlashlightEnabled, binding.flashlightEnabled)
        capture.onSaveInstanceState(outState)

        super.onSaveInstanceState(outState)
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean =
            binding.barcodeView.onKeyDown(keyCode, event) || super.onKeyDown(keyCode, event)

    override fun onTorchOn() {
        binding.flashlightEnabled = true
    }

    override fun onTorchOff() {
        binding.flashlightEnabled = false
    }

    private fun hasFlash(): Boolean = applicationContext.packageManager
            .hasSystemFeature(PackageManager.FEATURE_CAMERA_FLASH)

    inner class Handlers {
        fun onFlashlightSwitched() {
            if (binding.flashlightEnabled) {
                binding.barcodeView.setTorchOff()
            } else {
                binding.barcodeView.setTorchOn()
            }
        }

        fun onClose() = onBackPressed()
    }

    companion object {
        private const val tagFlashlightEnabled = "flashlight_enabled"
    }
}
