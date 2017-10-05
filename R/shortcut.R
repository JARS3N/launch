shortcut<-(){
R.utils::createWindowsShortcut(
  pathname=file.path(gsub("Documents","Desktop",Sys.getenv()['R_USER']),"seastar.lnk"),
  target= file.path(system.file(package="launch"),"seastar.exe")
  overwrite=T)
}
