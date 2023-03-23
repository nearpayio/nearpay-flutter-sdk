package io.nearpay.flutter.plugin;

public class PluginProvider {
    private ChannelManager channelManager;

    public PluginProvider(){

        channelManager = new ChannelManager(this);
    }


    ChannelManager getChannelManager(){
        return  this.channelManager;
    }

}
