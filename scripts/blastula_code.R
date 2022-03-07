#!/usr/bin/R
library(blastula)
library(dplyr)
library(magrittr)
library(glue)
library(ggplot2)
library(keyring)

create_smtp_creds_key(
  id = "gmail",
  user = "user_name@gmail.com",
  provider = "gmail"
)
