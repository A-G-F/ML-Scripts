# Data-URI to clipboard

This service makes the power of [Rodney Rehms datauri.php](https://gist.github.com/rodneyrehm/1372758/) available as a System service in Finder and other native applications with integrated file browser.

#### Requirements:
* [datauri.php](https://gist.github.com/A-G-F/972441b645ff5e57cd05/raw/a461e8793d1d80e4d30f6ec7d280a173a70fc152/datauri.php)
* Admin privileges
* [Xcode](https://developer.apple.com/xcode/)

If you don't have Xcode installed, use [**Data-URI to file**](../Data-URI%20to%20file) instead!


### Downloads and installs datauri.php on first run

No need for manual download and installation anymore: For those not familiar with using the Terminal, the workflow itself checks if [datauri.php](https://gist.github.com/A-G-F/972441b645ff5e57cd05/raw/a461e8793d1d80e4d30f6ec7d280a173a70fc152/datauri.php) is installed and puts it as an executable into [/usr/local/bin](file:///usr/local/bin) if not present. A Terminal window will open, where you have to enter your system administrator password and hit "enter" to continue.


## How to use datauri.php in Terminal

datauri.php can convert more than just images. For a whole list of possible file types that become additionally available if you use it in the command line, [look at the long array in the file beginning in line 54](https://gist.github.com/A-G-F/972441b645ff5e57cd05).

**Copy the data uri to clipboard (Mac OS X, Developer Tools installed):** 
`$ datauri.php some-image.png | pbcopy`


Drag & drop is supported, so you can drop an image instead of typing the full path to `some-image.png`.

<hr>

**To install the service, just double click it.**
