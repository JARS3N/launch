Set oWS = WScript.CreateObject("WScript.Shell")
sLinkFile = oWS.SpecialFolders("Desktop") + "\\seastar\\"  + WScript.Arguments.Item(0) + ".LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
oLink.TargetPath = "Rscript.exe"
script = "source(system.file(package='seascripts',path='scripts','"+ WScript.Arguments.Item(0) +"'))"
oLink.Arguments = " -e "+ chr(34) + script + chr(34)
oLink.Save
