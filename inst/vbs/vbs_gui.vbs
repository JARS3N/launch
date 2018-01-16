Set oWS = WScript.CreateObject("WScript.Shell")
sLinkFile = oWS.SpecialFolders("Desktop") + "Seastar.LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
oLink.TargetPath = "Rscript.exe"
script = "launch::gui()\"
oLink.Arguments = " -e "+ chr(34) + script + chr(34)
oLink.Save
