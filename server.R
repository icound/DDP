
library(shiny)
library(ISLR)
data(Wage)

shinyServer(function(input, output) {
   
        model1 <- lm(wage ~ age, data = Wage)
        model1pred <- reactive({
                ageInput <- input$slider_age
                predict(model1, newdata = data.frame(age = ageInput))
                
        })

        output$plot1 <- renderPlot({
                ageInput <- input$slider_age
                
                plot(Wage$age, Wage$wage, xlab = "Age", 
                     ylab = "Wage", bty = "n", pch = 16
                   )
               
                        abline(model1, col = "red", lwd = 2)
               
                        legend(25, 250, "Model  Prediction", pch = 16, 
                               col = "red", bty = "n", cex = 1.2)
                        points(ageInput, model1pred(), col = "red", pch = 16, cex = 2)
                 
                        
                        
                } )
        
        output$pred1 <- renderText({
                model1pred()
       
                 })
        
        
          
})

        
        
      
