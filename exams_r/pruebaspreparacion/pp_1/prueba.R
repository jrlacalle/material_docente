setwd("../pruebaspreparacion/pp_1")

myexam <- c("01-Descriptiva.Rmd", 
            "02-Descriptiva.Rmd", 
            "03-Descriptiva.Rmd", 
            "04-Descriptiva.Rmd",
            "05-Descriptiva.Rmd",
            "06-Descriptiva.Rmd",
            "07-Descriptiva.Rmd",
            "08-Descriptiva.Rmd",
            "09-Descriptiva.Rmd",
            "10-Descriptiva.Rmd",
            "11-Descriptiva.Rmd",
            "12-Descriptiva.Rmd",
            "13-Descriptiva.Rmd",
            "14-Descriptiva.Rmd",
            "15-Descriptiva.Rmd")
myexam_g <- sample(myexam)
exams2pdf(myexam, n = 1,
          encoding = "UTF-8",
          edir = "exercises")

exams2pdf(myexam, n = 3, name = c("pdf-exam", "pdf-solution"),
          encoding = "UTF-8",
          dir = "output",
          #edir = "pp_1",
          header = list(
            Date = "2018-07-01",
            ID = function(i) formatC(i, width = 5, flag = "0")
          ))
exams_metainfo(exams2html("boxplots.Rmd"))

exams2html(myexam)

exams2html(myexam, n = 3, name = c("pdf-exam", "pdf-solution"),
          encoding = "UTF-8",
          dir = "output",
            ID = function(i) formatC(i, width = 5, flag = "0")
          ))
