Dim xmlDoc, objNodeList, plot

Set wshShell = CreateObject( "WScript.Shell" )
tfolder =  wshShell.ExpandEnvironmentStrings("%TEMP%")
Set xmlDoc = CreateObject("Msxml2.DOMDocument")
xmlDoc.load(tfolder & "\rss.xml")
Set objNodeList = xmlDoc.getElementsByTagName("channel/item/description") 'Node to search for
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Write all found results into forecast.txt
Const ForWriting = 2
Set objTextFile = objFSO.OpenTextFile _
    (tfolder & "\bbcnews.txt", ForWriting, True)
If objNodeList.length > 0 then
For each x in objNodeList
plot=x.Text
objTextFile.WriteLine(plot)
Next 'just remove this?
objTextFile.Close	
End If

'Extract todays data (first line) from 'forecast.txt' and write each data type to seperate line in today.txt
Const ForReading = 1
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
    (tfolder & "\bbcnews.txt", ForReading)
    strNextLine = objTextFile.Readline
    'currentsplit = Split(strNextLine , ", ")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile(tfolder & "\headline.txt", ForWriting, True)	
    objTextFile.WriteLine(strNextLine)