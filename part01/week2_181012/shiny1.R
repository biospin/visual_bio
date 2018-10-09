# shiny1.R



install.packages(c("knitr","shiny","rmarkdown"))
install.packages(c("tidyverse","DT","moonBook"))
install.packages(c("ggiraph","ggiraphExtra"))


# 예제를 실행시키는 첫번째 방법
shiny::runGitHub('shinyLecture2', 'cardiomoon',subdir='inst/app0')

# 예제를 실행시키는 두번째 방법
# https://github.com/cardiomoon/shinyLecture2에 접속해서 zip파일을 다운로드
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app0")



#Minimal Valid Shiny App
library(shiny)
ui <- fluidPage()
server <- function(input,output){}
shinyApp(ui=ui,server=server)


shiny::runGitHub('shinyLecture2', 'cardiomoon',subdir='inst/app1')
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app1")


shiny::runGitHub('shinyLecture2', 'cardiomoon',subdir='inst/app2')
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app2")
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app3")
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app4")
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app5")
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app13")
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app14")
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app15")


# shinyBS
install.packages("shinyBS")
shiny::runApp("D:/Work_Git/visual_bio/part01/week2_181012/shinyLecture2/inst/app16")


# Shiny themes
install.packages("shinythemes")
shinyApp(
    ui = fluidPage(
        shinythemes::themeSelector(),  # <--- Add this somewhere in the UI
        sidebarPanel(
            textInput("txt", "Text input:", "text here"),
            sliderInput("slider", "Slider input:", 1, 100, 30),
            actionButton("action", "Button"),
            actionButton("action2", "Button2", class = "btn-primary")
        ),
        mainPanel(
            tabsetPanel(
                tabPanel("Tab 1"),
                tabPanel("Tab 2")
            )
        )
    ),
    server = function(input, output) {}
)


# shinydashboard
install.packages("shinydashboard")
library(shinydashboard)

ui <- dashboardPage(
    dashboardHeader(title = "Basic dashboard"),
    dashboardSidebar(),
    dashboardBody(
        # Boxes need to be put in a row (or column)
        fluidRow(
            box(plotOutput("plot1", height = 250)),
            
            box(
                title = "Controls",
                sliderInput("slider", "Number of observations:", 1, 100, 50)
            )
        )
    )
)

server <- function(input, output) {
    set.seed(122)
    histdata <- rnorm(500)
    
    output$plot1 <- renderPlot({
        data <- histdata[seq_len(input$slider)]
        hist(data)
    })
}

shinyApp(ui, server)



# shinyjs
install.packages("shinyjs")
library(shiny)
library(shinyjs)

ui <- fluidPage(
    useShinyjs(),  # Include shinyjs
    
    actionButton("button", "Click me"),
    textInput("text", "Text")
)

server <- function(input, output) {
    observeEvent(input$button, {
        toggle("text")  # toggle is a shinyjs function
    })
}

shinyApp(ui, server)

