gui2<-function(){
  require(tcltk2)
  EXIT<-FALSE
  onOK <- function() {
    fruitChoice <- fruits[as.numeric(tkcurselection(win1$env$lst)) + 1]
    str<-system.file(package='seascripts',path='scripts',fruitChoice)
    source(str)
  }
  onExit<-function(){
    EXIT<<-T
    tkdestroy(win1)
  }
  win1 <- tktoplevel()
  tktitle(win1)<-"Seastar"
  fontFixedWidth <- tkfont.create(family = "Courier New", size = 14)
  win1$env$butOK <-tk2button(win1, text = "Launch", width = 30, command = onOK)
  win1$env$exits <-tk2button(win1, text = "exit", width = 30, command = onExit)
  win1$env$lst <- tk2listbox(win1, height = 0,width=50, selectmode = "single",font=fontFixedWidth)
  tkgrid(win1$env$lst, padx = 70, pady = c(60, 60))
  fruits <- seascripts::show()
  for (fruit in fruits)
    tkinsert(win1$env$lst, "end", fruit)

  tkselection.set(win1$env$lst, 10)
  tkgrid(win1$env$butOK,win1$env$exits)
  while(EXIT==FALSE){
  }
}
