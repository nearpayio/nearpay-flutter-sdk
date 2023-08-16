package io.nearpay.flutter.plugin.operations;

import android.graphics.Bitmap;

import androidx.annotation.Nullable;

import com.google.gson.Gson;

import java.io.ByteArrayOutputStream;
import java.util.Map;

import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.listeners.BitmapListener;

public class ReceiptToImageOperation extends BaseOperation {

    public ReceiptToImageOperation(PluginProvider provider) {
        super(provider);
    }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {
//        get args
        String stringfiedReceipt = filter.getReceipt();
        int receiptWidth = filter.getReceiptWidth();
        int receiptFontSize= filter. getReceiptFontSize();

//        create receipt object
        TransactionReceipt receipt = new Gson().fromJson(stringfiedReceipt, TransactionReceipt.class);

//        convert receipt to image
        ReceiptUtilsKt.toImage(receipt, provider.getNearpayLib().context, receiptWidth, receiptFontSize, bitmap -> {

//            convert (Bitmap) type to fit what flutter understand (byte)
            ByteArrayOutputStream stream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
            byte[] byteArray = stream.toByteArray();
            bitmap.recycle();

            sender.send(NearpayLib.QueryResponse(200,"", byteArray));
        });

    }
}
