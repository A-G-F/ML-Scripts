#Data-URI to clipboard

This service makes the power of Rodney Rehms [datauri.php](https://gist.github.com/rodneyrehm/1372758/) available as a System service in Finder and other native (not Java!) applications with integrated file browser.

If you don't have Developer Tools installed, use **Data-URI to file** instead!

To install the service, just double click it.


##Download and install datauri.php with Terminal

Use [our Gist](https://gist.github.com/A-G-F/972441b645ff5e57cd05/raw/a461e8793d1d80e4d30f6ec7d280a173a70fc152/datauri.php) to download and install easily:
In Terminal type
`cd /usr/bin`
and hit enter.

Then type or paste
`sudo curl -L -o 'datauri.php' 'https://gist.github.com/A-G-F/972441b645ff5e57cd05/raw/a461e8793d1d80e4d30f6ec7d280a173a70fc152/datauri.php'`
and hit enter. You will be asked for your administrator password to grant permission for downloading to that directory. 
Type it (will not be visible) and hit enter.

Then type or paste
`chmod ugo+rx /usr/bin/datauri.php`
and hit enter. This makes the file executable as a Terminal command.


##To use datauri.php in Terminal

datauri.php can convert more than just images. For a whole list of possible file types that become additionally available if you use it in the command line, [look at the long array in the file beginning in line 54](https://gist.github.com/A-G-F/972441b645ff5e57cd05).

**Copy the data uri to clipboard (Mac OS X, Developer Tools installed):** 
`datauri.php some-image.png | pbcopy`


Drag & drop is supported, so you can drop an image instead of typing the full path to `some-image.png`.

<hr>

To install the service, just double click it.