#!/bin/bash

cp 30-cjk-aliases.conf /usr/share/fontconfig/conf.avail;
cp 56-language-selector-prefer.conf /usr/share/fontconfig/conf.avail;
cp 64-language-selector-cjk-prefer.conf /usr/share/fontconfig/conf.avail;
cp 69-language* /usr/share/fontconfig/conf.avail;
ln -s /usr/share/fontconfig/conf.avail/10-sub-pixel-rgb.conf /usr/share/fontconfig/conf.default/10-sub-pixel-rgb.conf;
ln -s /usr/share/fontconfig/conf.avail/10-yes-antialias.conf /usr/share/fontconfig/conf.default/10-yes-antialias.conf;
ln -s /usr/share/fontconfig/conf.avail/30-cjk-aliases.conf /usr/share/fontconfig/conf.default/30-cjk-aliases.conf;
ln -s /usr/share/fontconfig/conf.avail/56-language-selector-prefer.conf /usr/share/fontconfig/conf.default/56-language-selector-prefer.conf;
ln -s /usr/share/fontconfig/conf.avail/64-language-selector-cjk-prefer.conf /usr/share/fontconfig/conf.default/64-language-selector-cjk-prefer.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-ja.conf /usr/share/fontconfig/conf.default/69-language-selector-ja.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-cn.conf /usr/share/fontconfig/conf.default/69-language-selector-zh-cn.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-hk.conf /usr/share/fontconfig/conf.default/69-language-selector-zh-hk.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-mo.conf /usr/share/fontconfig/conf.default/69-language-selector-zh-mo.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-sg.conf /usr/share/fontconfig/conf.default/69-language-selector-zh-sg.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-tw.conf /usr/share/fontconfig/conf.default/69-language-selector-zh-tw.conf;
ln -s /usr/share/fontconfig/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d/10-sub-pixel-rgb.conf;
ln -s /usr/share/fontconfig/conf.avail/10-yes-antialias.conf /etc/fonts/conf.d/10-yes-antialias.conf;
ln -s /usr/share/fontconfig/conf.avail/30-cjk-aliases.conf /etc/fonts/conf.d/30-cjk-aliases.conf;
ln -s /usr/share/fontconfig/conf.avail/56-language-selector-prefer.conf /etc/fonts/conf.d/56-language-selector-prefer.conf;
ln -s /usr/share/fontconfig/conf.avail/64-language-selector-cjk-prefer.conf /etc/fonts/conf.d/64-language-selector-cjk-prefer.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-ja.conf /etc/fonts/conf.d/69-language-selector-ja.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-cn.conf /etc/fonts/conf.d/69-language-selector-zh-cn.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-hk.conf /etc/fonts/conf.d/69-language-selector-zh-hk.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-mo.conf /etc/fonts/conf.d/69-language-selector-zh-mo.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-sg.conf /etc/fonts/conf.d/69-language-selector-zh-sg.conf;
ln -s /usr/share/fontconfig/conf.avail/69-language-selector-zh-tw.conf /etc/fonts/conf.d/69-language-selector-zh-tw.conf;
fc-cache -rv

exit 0
