property commandString : "cd '/usr/bin'; sudo curl -L -o 'datauri.php' 'https://gist.githubusercontent.com/A-G-F/972441b645ff5e57cd05/raw/a461e8793d1d80e4d30f6ec7d280a173a70fc152/datauri.php'; sudo chmod ugo+rx /usr/bin/datauri.php; osascript -e 'tell app \"System Events\" to display dialog \"datauri.php has been installed and is now available as a shell command.\" buttons \"OK\" default button 1'"

on FinderItemExists(thePath)
	try
		set thePath to thePath as alias
	on error
		tell application "Terminal" -- Get a free window to run the commandString,
			activate
			delay (1) -- (being sure to avoid creating a new session unnecessarily,
			-- while also handling the possibility that frontmost window is busy):
			set windowCount to (count of the windows)
			if windowCount is greater than 0 then
				repeat with w from 1 to windowCount
					if window 1 is busy then
						set frontmost of window 1 to false
					else
						do script commandString in window 1
						set frontmost of window 1 to true
						return
					end if
				end repeat
			end if
			tell window 1
				do script commandString
				set frontmost to true
			end tell
		end tell
		return false
	end try
	return true
end FinderItemExists

FinderItemExists("MacBook HD:usr:bin:datauri.php")
