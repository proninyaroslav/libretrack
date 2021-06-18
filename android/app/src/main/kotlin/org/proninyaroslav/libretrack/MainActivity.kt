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

import android.content.Intent
import com.google.zxing.integration.android.IntentIntegrator
import org.proninyaroslav.libretrack.channel.BarcodeScannerChannel
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val barcodeScannerChannel: BarcodeScannerChannel = BarcodeScannerChannel {
        IntentIntegrator(activity).apply {
            setPrompt("")
            setOrientationLocked(false)
            captureActivity = BarcodeScannerActivity::class.java
        }.initiateScan()
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val binaryMessenger = flutterEngine.dartExecutor.binaryMessenger

        MethodChannel(binaryMessenger, BarcodeScannerChannel.channelName)
                .setMethodCallHandler(barcodeScannerChannel)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        val result = IntentIntegrator.parseActivityResult(requestCode, resultCode, data)
        if (result != null) {
            barcodeScannerChannel.sendScanResult(result.contents)
        } else {
           super.onActivityResult(requestCode, resultCode, data)
        }
    }
}
