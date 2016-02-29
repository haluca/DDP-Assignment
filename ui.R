shinyUI(pageWithSidebar(  
  headerPanel("Expected deaths per year"),  
  sidebarPanel(    
    helpText('This app forecasts the number of deaths per year', 
             'based on the number of persons,',
             'the number of deceased persons last year,',
             'the yearly population growth and',
             'the yearly growth of life expectancy',
             '(all of people 65 year or older)'),
    numericInput('pop','population >= 65 year (in 1000)', value = 1000, min = 1000, max = 100000, step = 1000),
    numericInput('dec','last year deceased >= 65 year (in 1000)', value = 100, min = 100, max = 10000, step = 100),
    sliderInput('popcoef','growth of population >= 65 year (% per year)', value = 0, min = -5, max = 5, step = 0.1),
    sliderInput('expcoef','growth of life expectancy (months per year)', value = 0, min = -12, max = 12, step = .5),
    sliderInput('years','Years to evaluate',value = 6,min= 1, max=25, step=1)
      ), 
  mainPanel(    
    plotOutput('YearPlot')  
  )
))