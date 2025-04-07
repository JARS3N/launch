shortcut_vbs <- function(ScriptName, folder) {
  LNKcreateVBS <- system.file(package = "launch", path = "vbs/shortcut.vbs")
  shell(paste("Cscript //nologo //B", shQuote(LNKcreateVBS), shQuote(ScriptName), shQuote(folder)))
}
