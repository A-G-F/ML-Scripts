#Data-URI to clipboard or file

These services make the power of [Rodney Rehms datauri.php](https://gist.github.com/rodneyrehm/1372758/) available as a System service in Finder and other native applications with integrated file browser.

When you have [Xcode](https://developer.apple.com/xcode/) installed, use **Data-URI to clipboard**, otherwise create a textfile next to the selected image with **Data-URI to file**.


###Downloads and installs datauri.php on first run

No need for the manual install procedure anymore: For those not familiar with using the Terminal, the workflow checks if [datauri.php](https://gist.github.com/A-G-F/972441b645ff5e57cd05/raw/a461e8793d1d80e4d30f6ec7d280a173a70fc152/datauri.php) is installed and puts it as executable into [/usr/bin](file:///usr/bin) if not present. A Terminal window will open, where you have to enter your system administrator password and hit "enter" to continue.


###How to use datauri.php in Terminal

datauri.php can convert more than just images. For a whole list of possible file types that become additionally available if you use it in the command line, [look at the long array in the file beginning in line 54](https://gist.github.com/A-G-F/972441b645ff5e57cd05).

**Save the data uri to a file:** 
`datauri.php some-image.png > some-image.png.txt`

**Copy the data uri to clipboard (Mac OS X, Xcode installed):** 
`datauri.php some-image.png | pbcopy`


Drag & drop is supported, so you can drop an image instead of typing the full path to `some-image.png`. Note that you have to **put it twice in the first command** and add a new suffix `.txt`!

<hr>

#Serve folder with Jekyll
**Jekyll Serve Folder** is a System service in Finder and other native applications with integrated file browser.

###Serve a folder with Jekyll with a single ctrl-click: 
Jekyll will be started in a free Terminal session (script does recognize if active window is busy and chooses a free one or creates a new one if necessary).

Jekyll will serve the folder with address http://0.0.0.0:4000 and watch for changes. A browser window will open that location after a 10 seconds delay. 

<hr>

**To install a service, just double click it.**
