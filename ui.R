#--------------------------------------------------
# R UI Code for the Capstone Project Shiny App
#--------------------------------------------------

suppressWarnings(library(shiny))

shinyUI(fluidPage(
 
    # Application title
    titlePanel("Predict Next Word"),
    
    fluidRow(HTML("<strong>Author: Ruby Annette install.packages('rsconnect')</strong>") ),
    fluidRow(HTML("<strong>Date: 1-10-2016</strong>") ),
    
    fluidRow(
      br(),
      p("This Shiny application predicts the next word using the N-Gram Back Off model when a user enters a word sequence. This was acheieved by cleaning and processing the data collected form various social networking sites and platforms  like  twitter, news and blogs data 
         etc. Then data frames of four, three, two and one-grams with corresponding sorted cumulative frequencies were created. 
         The Shiny app loads the four saved n-gram objects and apply a simple Katz's Back-off algorithm to predict the next word after user enters a partial sentence.")),
    br(),
    br(),
  
    fluidRow(HTML("<strong>Enter an incomplete sentence. Press \"Next Word\" button to predict the next word</strong>") ),
    fluidRow( p("\n") ),
    
    # Sidebar layout
    sidebarLayout(
        
        sidebarPanel(
            textInput("inputString", "Enter a partial sentence here",value = ""),
            submitButton("Next Word")
        ),
        
        mainPanel(
            h4("Predicted Next Word"),
            verbatimTextOutput("prediction"),
            textOutput('text1'),
            textOutput('text2')
        )
    )
))
