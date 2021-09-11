# old-style-copy-extension
*Old style Copy&Paste extension*

Now days *copy&paste* is achieved by `Ctrl+C` and `Ctrl+V`, but before Windows came, the standard was `Ctrl+Ins` and `Shift+Ins`.
Nothing special and perfectly supported, but some sites are starting to deprecate these keybindings, and it's quite
frustrating. With this extension, maybe the most simple/short Firefox/Chrome extension, it's now possible to
reuse old fashion style keybindings.

## Build: ##

To build you need the jq utility
``` console
$ make clean
$ make
```

## Install ##

For **Chrome** users:
The extension is not yet available on chrome store, so you have to load it manually.
1. Go to chrome://extensions/
2. Enable "developer mode"
3. Load unpacked and choose **chrome_extension**
