library(polite)
library(tidyverse)
library(rvest)
library(kableExtra)
library(gt)
library(blastula)



url <- "https://finance.yahoo.com/cryptocurrencies/?count=25&offset=0"

webshot::install_phantomjs()


session = bow(user_agent = "EPL-Table-Scrape", url)

CryptoStocks <- scrape(session) %>% html_nodes("tbody:nth-child(2)") %>% html_table()

CryptoStocks <- as.data.frame(CryptoStocks) 

numbers <- 1:10

Columns=c("Name", "Price (Intraday)", "Change", "% Change", "Market Cap", "Volume in Currency", "Volume in Currency (24Hr)", "Total Volume All", "Currencies (24Hr)", "Circulating Supply" )

for (i in numbers){names(CryptoStocks)[i] <- Columns[i]}


CryptoStocks %>% select( c(1:10)) %>% slice(1:10) %>% gt() %>% cols_align() %>% tab_options(column_labels.font.size = 11.5, column_labels.font.weight = "bold", data_row.padding = px(5)) %>% tab_source_note(
  source_note = md("*Source: Yahoo Finance*")) %>% tab_header(
    
    title = md("<img src='https://upload.wikimedia.org/wikipedia/commons/9/9a/BTC_Logo.svg' style='height:94px;'> "),
    subtitle = md("*A Breakdown of the top 10 CryptoStocks currently trading.*")) %>% cols_align(
      align = "center",
      columns = 2
    ) %>% tab_source_note(
      source_note = md(sprintf("Last successful Webscrape time was %s", date()))) %>% tab_options(table.font.size = px(15)) %>%
  opt_table_font(
    font = list(
      google_font(name = "Roboto Condensed"))) %>% data_color(
        
        columns = "Name",
        colors = scales::col_factor("#7E909A", n = 2 , domain = NULL),
        alpha = NULL,
        apply_to = c("fill", "text"),
        autocolor_text = TRUE )%>% data_color(
          
          columns = Columns[2],
          colors = scales::col_factor("#7E909A", n = 2 , domain = NULL),
          alpha = NULL,
          apply_to = c("fill", "text"),
          autocolor_text = TRUE ) %>% data_color(
            
            columns = Columns[3],
            colors = scales::col_factor("Set3", n = 2 , domain = NULL),
            alpha = NULL,
            apply_to = c("fill", "text"),
            autocolor_text = TRUE ) %>% data_color(
              
              columns = Columns[4],
              colors = scales::col_factor("Set3", n = 2 , domain = NULL),
              alpha = NULL,
              apply_to = c("fill", "text"),
              autocolor_text = TRUE ) %>% data_color(
                
                columns = Columns[5],
                colors = scales::col_factor("Set3", n = 2 , domain = NULL),
                alpha = NULL,
                apply_to = c("fill", "text"),
                autocolor_text = TRUE ) %>% data_color(
                  
                  columns = Columns[6],
                  colors = scales::col_factor("Greens", n = 2 , domain = NULL),
                  alpha = NULL,
                  apply_to = c("fill", "text"),
                  autocolor_text = TRUE ) %>% data_color(
                    
                    columns = Columns[7],
                    colors = scales::col_factor("Greens", n = 2 , domain = NULL),
                    alpha = NULL,
                    apply_to = c("fill", "text"),
                    autocolor_text = TRUE ) %>% data_color(
                      
                      columns = Columns[8],
                      colors = scales::col_factor("Greens", n = 2 , domain = NULL),
                      alpha = NULL,
                      apply_to = c("fill", "text"),
                      autocolor_text = TRUE ) %>% data_color(
                        
                        columns = Columns[9],
                        colors = scales::col_factor("Greens", n = 2 , domain = NULL),
                        alpha = NULL,
                        apply_to = c("fill", "text"),
                        autocolor_text = TRUE ) %>% data_color(
                          
                          columns = Columns[10],
                          colors = scales::col_factor("Greens", n = 2 , domain = NULL),
                          alpha = NULL,
                          apply_to = c("fill", "text"),
                          autocolor_text = TRUE ) %>% gtsave("cryptostocks.png", path = '/opt/crypto/scripts')



