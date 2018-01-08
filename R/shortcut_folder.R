shortcut_folder<-function(){
fldr<-file.path(Sys.getenv("USERPROFILE"),"Desktop","seastar")
  if(!dir.exists(fldr)){
    dir.create(fldr)
  }
links<-list.files(system.file(package="seascripts",path="scripts"))
sapply(links,shortcut_vbs)
message('seastar shortcuts created in ')
cat(fldr)
}
