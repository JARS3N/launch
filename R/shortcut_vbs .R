shortcut_vbs <-function(ScriptName){
  LNKcreateVBS <- system.file(package="launch",path="vbs/shortcut.vbs")
  shell(paste("Cscript //B ",shQuote(LNKcreateVBS),shQuote(ScriptName),sep=" ")) 
}
