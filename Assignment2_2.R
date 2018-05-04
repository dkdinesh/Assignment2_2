#Assign 2.2 
#1

install.packages("rjson") 
library(rjson)
read.filejson<-list.files(pattern = ".json",full.names = TRUE) #reading multiple JSON files
print(read.filejson)


# 2
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'

js


require(RJSONIO)  
install.packages("RJSONIO")
library(RJSONIO)

json_file <- fromJSON(js) # loading file
json_file
df<-as.data.frame(do.call("cbind", json_file)) # converting JSON as Data frame
df




#3

x <- 1:100
x 
brk <- c(1,20,50,100)
brk 
table(cut(x = x, breaks = brk, include.lowest = TRUE))  #example for binning Variable 

