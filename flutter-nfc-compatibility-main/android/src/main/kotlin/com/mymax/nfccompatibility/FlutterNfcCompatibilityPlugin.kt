package com.mymax.nfccompatibility

import android.Manifest
import android.app.Activity
import android.content.Context
import android.nfc.NfcAdapter
import android.nfc.NfcManager
import android.nfc.Tag
import android.os.Build
import androidx.annotation.RequiresApi
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.util.concurrent.CopyOnWriteArrayList

const val PERMISSION_NFC: Int = 1007

class FlutterNfcCompatibilityPlugin : FlutterPlugin, ActivityAware, MethodCallHandler, EventChannel.StreamHandler {

    private var nfcAdapter: NfcAdapter? = null
    private var nfcManager: NfcManager? = null
    private var activity: Activity? = null

    internal var eventSink: EventChannel.EventSink? = null
    private var methodChannel: MethodChannel? = null
    private var eventChannel: EventChannel? = null


    override fun onMethodCall(call: MethodCall, result: Result) {
        require(activity != null) { "Plugin not ready yet" }
        val nfcAdapter by lazy {
            if (nfcAdapter == null) {
                result.error("404", "NFC Hardware not found", null)
            }
            nfcAdapter ?: error("NFC hardware not found")
        }

        when (call.method) {
            "NfcAvailable" -> {
                when {
                    this.nfcAdapter == null -> result.success("NotSupported")
                    nfcAdapter.isEnabled -> result.success("Enabled")
                    else -> result.success("Disabled")
                }
            }
            else -> result.notImplemented()
        }
    }

    // EventChannel.StreamHandler methods
    override fun onListen(arguments: Any?, events: EventChannel.EventSink) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }


    @Suppress("ReplaceNotNullAssertionWithElvisReturn")
    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        val messenger = binding.binaryMessenger
        methodChannel = MethodChannel(messenger, "flutter_nfc_compatibility")
        methodChannel!!.setMethodCallHandler(this)
        eventChannel = EventChannel(messenger, "com.mymax.nfccompatibility.flutter_nfc_compatibility")
        eventChannel!!.setStreamHandler(this)
    }

    @Suppress("ReplaceNotNullAssertionWithElvisReturn")
    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel!!.setMethodCallHandler(null)
        eventChannel!!.setStreamHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        val activity = binding.activity
        this.activity = activity

        nfcManager = activity.getSystemService(Context.NFC_SERVICE) as? NfcManager
        nfcAdapter = nfcManager?.defaultAdapter
        activity.requestPermissions(
                arrayOf(Manifest.permission.NFC),
                PERMISSION_NFC
        )

    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding): Unit = onAttachedToActivity(binding)

    override fun onDetachedFromActivityForConfigChanges(): Unit = onDetachedFromActivity()

    override fun onDetachedFromActivity() {
        activity = null
    }

}
