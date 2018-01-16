vbs_gui<-function(){
  LNKcreateVBS <- system.file(package="launch",path="vbs/gui.vbs")
  shell(paste("Cscript //B ",shQuote(LNKcreateVBS),sep=" ")) 
}
