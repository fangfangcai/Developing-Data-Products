library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Household Monthly Income Per Person Calculator"),
  sidebarPanel(
    numericInput('id1', 'Income 1', 0, min = 0),
    numericInput('id2', 'Income 2', 0, min = 0),
    numericInput('id3', 'Income 3', 0, min = 0),
    numericInput('id4', 'Income 4', 0, min = 0),
    numericInput('id5', 'Income 5', 0, min = 0),
    numericInput('id6', 'Income 6', 0, min = 0),
    numericInput('id7', 'Number of members in Household', 0, min = 0, max = 100, step = 1),
    submitButton('Submit')
  ),
  mainPanel(
    h3('About the App'),
    h4('This app helps to calculate the Household Monthly Income Per Person. Household Monthly Income Per Person is the total gross household monthly income divided by the number of members living in the household.'),
    h4('Knowing the Household Monthly Income Per Person can help in the financial planning of a household.'),
    h3('How the App works'),
    h4('1. Enter the monthly income of a member in the household under "income 1"'),
    h4('2. If there is another member in the household who is earning income, please enter the monthly income of that member in the household under "income 2" and so on. (Maximum of 6 incomes) You do not need to enter the income of members who do not have any income. You do not have to fill up all 6 incomes.'),
    h4('3. After entering the individual income of the household members who are earning, please enter the number of members living in the household.'),
    h4('4. Click on the submit button.'),
    h4('5. The Household Monthly Income Per Person has been calculated below.'),
    h3('The Average Household Monthly Income Per Person for the household is'),
    verbatimTextOutput("calculation")
  )
))
