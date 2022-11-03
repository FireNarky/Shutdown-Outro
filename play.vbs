Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")

' Play audio
oPlayer.URL = "C:\Users\Narky\Desktop\project shutdown\outro.mp3"
oPlayer.controls.play
while oPlayer.playState <> 1 ' 1 = Stopped
	WScript.Sleep 100
Wend

' Release the audio file
oPlayer.close