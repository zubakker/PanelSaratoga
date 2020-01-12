#!/bin/sh
main=pluginz # Change this to your plugin's name

gcc -Wall -shared -o libplugin.so -fPIC ${main}.c `pkg-config --cflags --libs libxfce4panel-2.0` `pkg-config --cflags --libs gtk+-3.0`

cp libplugin.so /usr/lib/xfce4/panel/plugins
cp plugin.desktop /usr/share/xfce4/panel/plugins


# gcc -Wall -shared -o libsample.so -fPIC sample.c sample-dialogs.c `pkg-config --cflags --libs libxfce4panel-2.0` `pkg-config --cflags --libs gtk+-3.0`
