package io.nearpay.flutter.plugin.operations;

import android.graphics.Bitmap;

import androidx.annotation.Nullable;

import com.google.gson.Gson;

import java.util.Map;

import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.listeners.BitmapListener;

public class ReceiptToImageOperation extends BaseOperation{

    public ReceiptToImageOperation(PluginProvider provider) {
        super(provider);
    }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {

        String stringfiedReceipt = filter.getReceipt();


        TransactionReceipt receipt = new Gson().fromJson(stringfiedReceipt, TransactionReceipt.class);
        System.out.println("=-=-=-=-=-=-=-=receipt: ");
        System.out.println(receipt);

        try{
            ReceiptUtilsKt.toImage(receipt, provider.getNearpayLib().context, 100, 10,  bitmap -> {
                System.out.println("=-=-=-=-=-=-=-=bitmap: ");
                System.out.println(bitmap);
            });
        } catch (Exception e) {

//            we still ge the error:
//            - android.util.AndroidRuntimeException: Calling startActivity() from outside of an Activity
//              context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?
            System.out.println("=-=-=-==-error in bitmap : ");
            System.out.println(e);
        }
    }
}
