#!/bin/bash
# sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg
# sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /
# sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/
osascript <<EOD
tell application "System Events"
	delay 5
	tell application process "Chrome"
		display dialog "waiting for chrome"
		repeat until exists button "Open" of sheet 1 of window 1
			delay 1
		end repeat
		display dialog "found window for chrome"
		click UI Element 1 of row 5 of outline 1 of scroll area 1 of splitter group 1 of sheet 1 of window 1
		delay 1
		keystroke "G" using {command down, shift down}
		delay 2
		keystroke "/Users/selenium/Desktop/Logo.jpg"
		delay 1
		keystroke return
		delay 2
		keystroke return
	end tell
end tell

