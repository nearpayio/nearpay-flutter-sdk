package io.nearpay.flutter.plugin.common.operations;

import android.graphics.Bitmap;

import com.google.gson.Gson;

import java.io.ByteArrayOutputStream;

import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;

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

            sender.send(NearpayLib.ApiResponse(200,"", byteArray));
        });

    }
}
