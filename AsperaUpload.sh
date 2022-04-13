osascript <<EOD
tell application "Aspera Connect"
	activate
	tell application "System Events"
		tell process "Aspera Connect"
			repeat until exists button "Yes" of window 1
				delay 1
			end repeat
			delay 1
			click checkbox of window 1
			delay 1
			click button "Yes" of window 1
			repeat until exist button "Cancel" of window 1
				delay 1
			end repeat
			click pop up button "Where:" of window 1 of application process "Aspera Connect"
			delay 5
			click menu item "Users" of menu 1 of pop up button "Where:" of window 1 of application process "Aspera Connect"
			delay 5
			click group 1 of list 1 of scroll area 2 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1 of application process "IBM Aspera Connect"
			delay 5
            end tell
        end tell
end tell
        
-- Make a selection from the popupbutton.
delay 5
set timeoutSeconds to 2.000000
set uiScript to "click pop up button \"Where:\" of window 1 of application process \"IBM Aspera Connect\""
my doWithTimeout( uiScript, timeoutSeconds )

-- Users
delay 3
set timeoutSeconds to 2.000000
set uiScript to "click menu item \"Users\" of menu 1 of pop up button \"Where:\" of window 1 of application process \"IBM Aspera Connect\""
my doWithTimeout( uiScript, timeoutSeconds )
        
-- Click Username (selenium)
delay 3
set timeoutSeconds to 2.000000
set uiScript to "click group 3 of list 1 of scroll area 2 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1 of application process \"IBM Aspera Connect\""
my doWithTimeout( uiScript, timeoutSeconds )

-- Mouse Clicked (desktop)
delay 3
set timeoutSeconds to 2.000000
set uiScript to "click group 3 of list 1 of scroll area 2 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1 of application process \"IBM Aspera Connect\""
my doWithTimeout( uiScript, timeoutSeconds )

-- Mouse Clicked (select file)
delay 3
set timeoutSeconds to 2.000000
set uiScript to "click group 1 of list 1 of scroll area 4 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1 of application process \"IBM Aspera Connect\""
my doWithTimeout( uiScript, timeoutSeconds )

-- Click the “Open” button.
delay 1.822998
set timeoutSeconds to 2.000000
set uiScript to "click UI Element \"Open\" of window 1 of application process \"IBM Aspera Connect\""
my doWithTimeout( uiScript, timeoutSeconds )

EOD


