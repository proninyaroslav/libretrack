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

package org.proninyaroslav.libretrack.channel

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class BarcodeScannerChannel(val onScan: () -> Unit) : MethodChannel.MethodCallHandler {
    private var callResult: MethodChannel.Result? = null

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            Methods.scan -> {
                callResult = result
                onScan()
            }
            else -> result.notImplemented()
        }
    }

    fun sendScanResult(data: String?) = callResult?.success(data)

    object Methods {
        const val scan = "scan"
    }

    companion object {
        const val channelName = "org.proninyaroslav.libretrack.barcode_scanner"
    }
}
