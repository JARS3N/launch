shortcut2<-function(){
R.utils::createWindowsShortcut(
  pathname=file.path(gsub("Documents","Desktop",Sys.getenv()['R_USER']),"seastar.lnk"),
  target= file.path(system.file(package="launch"),"seastar_shiny.exe"),
  overwrite=T)
}
