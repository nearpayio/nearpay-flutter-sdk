package io.nearpay.flutter.plugin;

import io.nearpay.flutter.plugin.util.ArgsFilter;

public class PluginProvider {
    private NearpayLib nearpayLib;
    public PluginProvider(){
        nearpayLib = new NearpayLib(this);

    }


    public NearpayLib getNearpayLib() {
        return nearpayLib;
    }

//    public ArgsFilter getArgsFilter() {
//        return argsFilter;
//    }
}
