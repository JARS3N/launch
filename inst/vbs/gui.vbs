Set oWS = WScript.CreateObject("WScript.Shell")
sLinkFile = oWS.SpecialFolders("Desktop") + "Seastar.LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
oLink.TargetPath = "Rscript.exe"
oLink.Arguments = " -e "+ chr(34) + "launch::gui()" + chr(34)
oLink.Save
