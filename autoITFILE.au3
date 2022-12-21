#include <MsgBoxConstants.au3>
Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')

;accept Aspera Connect Security Concern
WinWaitActive("IBM Aspera Connect - Security")
MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is running", "IBM is activated. This message box will timeout after 3 seconds or select the OK button.", 3)
Sleep(500);
WinActivate("IBM Aspera Connect - Security")
Sleep(200);
ControlClick("IBM Aspera Connect","IBM Aspera Connect","[CLASS:Qt5157QWindowIcon; INSTANCE:4]")
Sleep(200);

;wait for open window
For $i = 1 To $CmdLine[0]
	$x = $CmdLine[$i]

	;enforce going to documents folder
        WinWaitActive("Open")
	controlClick("Open","","[CLASS:ToolbarWindow32; INSTANCE:4]","left",1,18,15)
	sleep(500);
	Send("{BS}");
	sleep(500);
	controlSetText("Open", "","[CLASS:Edit; INSTANCE:2]", "Documents")
	sleep(500);
	Send("{ENTER}")

	;Enter file name file
	controlSetText("Open", "","[CLASS:Edit; INSTANCE:1]", $x)
	Sleep(200);
	controlClick("Open","","[CLASS:Button; INSTANCE:1]")
	Sleep(200);
Next

MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is completed", "Comleted", 3)