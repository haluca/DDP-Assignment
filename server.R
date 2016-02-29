library(UsingR)

shinyServer(  
  function(input, output) {    
    output$YearPlot <- renderPlot({      
      exp<-input$pop/input$dec
      yeardec<-data.frame(year=2016,dec=1:input$years)
      for (i in 1:input$years) {
         exppop<-input$pop*(1+input$popcoef/100)^i
         expage<-exp+input$expcoef/12*i
         yeardec$year[i]<-2016+i
         yeardec$dec[i]<-exppop/expage
         }
      plot(yeardec$year,yeardec$dec, xlab='year', ylab='deaths (*1000)', col='blue', type='b', lwd = 5, main='expected deaths per year')    
      })      }
)