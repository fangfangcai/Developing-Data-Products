monthlyIncomePerPerson <- function(id1, id2, id3, id4, id5, id6, id7) (id1 + id2 + id3 + id4 + id5 + id6) / id7
shinyServer(
  function(input, output) {
    output$calculation <- renderPrint({monthlyIncomePerPerson(input$id1, input$id2, input$id3, input$id4, input$id5, input$id6, input$id7)})
  }
)
