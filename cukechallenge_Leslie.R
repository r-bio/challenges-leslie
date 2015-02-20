download.file("http://r-bio.github.io/data/holothuriidae-specimens.csv",
              "data/holothuriidae-specimens.csv")
download.file("http://r-bio.github.io/data/holothuriidae-nomina-valid.csv",
              "data/holothuriidae-nomina-valid.csv")
hol <- read.csv(file="data/holothuriidae-specimens.csv", stringsAsFactors=FALSE)
nom <- read.csv(file="data/holothuriidae-nomina-valid.csv", stringsAsFactors=FALSE)

hol


## 1. How many specimens are included in data.frame hol?
length(hol$specimen)
dim(hol)
ncol(hol)
nrow(hol)
length(hol$specimen)
names(hol)
length(hol$dwc.scientificName)

## 2. The column dwc.institutionCode in the hol data frame lists the museum where the specimens are housed:
##    How many institutions house specimens?
##    Draw a bar plot that shows the contribution of each institution

unique(hol$dwc.institutionCode) ## 2848
table(hol$dwc.institutionCode)
barplot(table(hol$dwc.institutionCode)) ## here's the fix for doing the barplot -S.C. 

##Do not understand how to generate plots??

## 3. The column dwc.year indicates when the specimen was collected:
##    When was the oldest specimen included in this data frame collected ? (hint: It was not in year 1)
##    What proportion of the specimens in this data frame were collected between the years 2006 and 2014 (included)?

names(hol) ##checking to see what names are listed in the data.frame
   ##attempting to find what is the oldest specimen. Using min will always give me year 1. I am not sure that I fully understand the data
min(hol$dwc.year)

 ##not finished

## 4. How many specimens do not have the information for class listed?
nzchar(hol$dwc.class) ##gives me all TRUE and FALSE data. How can I sort that to know the number of true and the number of false

TF_hol <- nzchar(hol$dwc.class)
TF_hol
T_hol <- unique(TF_hol,TRUE)
T_hol
length(T_hol)
TF_hol
F_hol <- unique(TF_hol,FALSE)
length(F_hol)
## There are definitely more than 2 false....