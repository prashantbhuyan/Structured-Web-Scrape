# Prashant B. Bhuyan

install.packages("XML")
require(XML)



###### Problem 1 #####

theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool
class(bowlPool)

# Solution:
# bowlpool is a data frame and a data frame or data table.   
#
# Results:
# [1] "data.frame"

##### Problem 2 #####

theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)
hvalues
class(hvalues)

# Solution:
# Calling readHTMLTable() with just the URL argument returns a list data structure instead of a data frame or data table. 
#
# Results: 
# [1] "list"


##### Problem 3 #####

length(hvalues)

# Solution:
# There is 7 html table represented in hvalues.  
#   
# Results
# > length(hvalues)
# [1] 7

##### Problem 4 #####
hvalModified <- readHTMLTable(theURL, which = 1, header = TRUE, stringsAsFactors=FALSE, as.data.frame = TRUE)
hvalModified
class(hvalModified)

# Results:
# Number First Name Last Name Points
# 1      1        Eve   Jackson     94
# 2      2       John       Doe     80
# 3      3       Adam   Johnson     67
# 4      4       Jill     Smith     50

# [1] "data.frame"

##### Problem 5 #####
colnames(hvalModified) <- c("Number", "FN", "LN", "Points")
hvalmod.lastname.points <- data.frame(hvalModified$LN,hvalModified$Points)
colnames(hvalmod.lastname.points) <- c("LastName", "Points")
hvalmod.lastname.points
class(hvalmod.lastname.points)

# Results:
# LastName Points
# 1  Jackson     94
# 2      Doe     80
# 3  Johnson     67
# 4    Smith     50
#
# [1] "data.frame"

##### Problem 6 #####

url.table.example <- "http://www.highcharts.com/demo/column-parsed"
rare.to.find.table <- readHTMLTable(url.table.example, which = 1, header = FALSE, stringsAsFactors = FALSE)
rare.to.find.table
class(rare.to.find.table)
length(rare.to.find.table)

# Results: 
#        V1 V2 V3
# 1  Apples  3  4
# 2   Pears  2  0
# 3   Plums  5 11
# 4 Bananas  1  1
# 5 Oranges  2  4

# class(rare.to.find.table)
# [1] "data.frame"

##### Problem 7 #####

length(rare.to.find.table)

# Solution: 
# That page contains 3 tables.

# Results:
# length(rare.to.find.table)
# [1] 3

##### Problem 8 #####

# Solution:
# I user Safari 7.02 on Mac OS X. The way to view the source of a web page is:
#
# 1. Go to File in the Menu Bar
# 2. Click on Preferences
# 3. Go to Advanced
# 4. Check the box that says 'Show Develop Menu in the Menu Bar'
# 5. Close the Preferences Box
# 6. Go back to he Menu Bar
# 7. Select 'Develop' 
# 8. From the 'Develop' drop down, select 'Page Source'.  
