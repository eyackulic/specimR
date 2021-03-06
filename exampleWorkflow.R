#load library
library(specimR)
library(raster)
library(shiny)
#chose wavelengths of interest
wavelengths <- c(570,590,615,630,660,665,690,730,790,845,900)

#set directory
directory <- "~/Downloads/Lakes380_FORSY_LC1U_2B_test_2020-06-05_04-05-39"

#function for normalization
normalized <- normalize(directory=directory,spectra = wavelengths)

#choose indices
indices <- c("RABD660","RABD845","R570R630","R590R690")

#calculate indices and y-axis
core_output <- CalcIndices(normalized = normalized,indices = indices)

normalize()
gc()
rm(list = ls(all.names = TRUE))
