launch_ui<-function(){
require(shiny)
fls<-c(" ",list.files(system.file(package='seascripts',path='scripts')))
shinyUI(fluidPage(
  titlePanel("Seastar"),
    mainPanel(
      selectInput("drop", "scripts", fls, selected = NULL, multiple = FALSE,
                  selectize = TRUE, width = NULL, size = NULL)
    )
  )
)
}
