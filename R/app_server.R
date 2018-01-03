launch_server<-function(){
require(shiny)
fls<-list.files(system.file(package='seascripts',path='scripts'))
shinyServer(function(input, output) {

observeEvent(input$drop,{
  if(input$drop!=" "){
  s1<-paste0("system.file(package='seascripts',path='scripts', '",input$drop,"' )")
  print(s1)
  s2<-paste0('Rscript -e "source(',s1,')"')
  system(s2)
  }
})

})
}
