Set oWS = WScript.CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

ScriptName = WScript.Arguments.Item(0)
TargetFolder = WScript.Arguments.Item(1)

' Build full .lnk path dynamically
sLinkFile = TargetFolder & "\" & ScriptName & ".LNK"

Set oLink = oWS.CreateShortcut(sLinkFile)

oLink.TargetPath = "Rscript.exe"

script = "source(system.file(package='seascripts',path='scripts','" & ScriptName & "'))"
oLink.Arguments = " -e " & chr(34) & script & chr(34)

' Set working directory (optional)
oLink.WorkingDirectory = TargetFolder

oLink.Save

' Force Windows to resolve TargetPath properly
Set oLink2 = oWS.CreateShortcut(sLinkFile)
oLink2.TargetPath = oLink2.TargetPath
oLink2.Save
