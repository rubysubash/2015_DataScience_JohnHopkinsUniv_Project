# Set working directory
setwd("D:\Ruby_Imp_Sep15_BckUp_PHDWork\Ruby_Phd_OtherImpFiles\DataScientist\CapstoneProject")

# Load packages
require(knitr)
require(markdown)

# Create slides
knit("MyPresentation.Rmd")
system("pandoc -s -t slidy My_Analysis.md -o My_Analysis.html")

