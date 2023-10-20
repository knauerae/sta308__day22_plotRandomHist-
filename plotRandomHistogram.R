#* plotRandomHistogram.R
#* 
#* Author: Alex Knauer
#* 
#* Purpose: a function that willl generate a random sample of normal 
#* observatins and plot 
#* a historgam 
#* of the data
#* 
#* Inputs:
#*    num_pts = number of observatoins to
#*        to generate random
#*    mu= the theoretifcal mean of the normal
#*    sigma= the theortical standard deviation
#*         of the normat
#*     seed=a random number generate seed, to endure
#*          reproducability
#*  
#*  Outputs:
#*     a plot of the histogram is provided!
#*     a list with the following elements
#*     random_values = a vector with the generated 
#*     random values
#*     mean_random_values= corrosponding sampl means
#*     sd_rancome_va;ies = corresponging standared deviation
#*     

plotRandomHistogram <- function(num_pts=30, mu=0, sigma= 1, 
                       seed=NULL, meanColor = "royalblue") { #when you change it to NULL, you get a different plot everytime you run it
  set.seed(seed)
  x <- rnorm(n=num_pts, mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x) #creates a histogram
  abline(v=mean_x, col=meanColor, lwd=5) #draws line with slope and indercet for any plot, lwd is the line width
  
  #the last line of code in the function is output from the function
  list(Random_values = x,
       Mean_Random_Values = mean_x,
       SD_Random_values = ((sd))
}

plotRandomHistogram()
plotRandomHistogram(seed=1)
plotRandomHistogram(seed=1, num_pts=1000000)
plotRandomHistogram(seed=1, num_pts=1000000, meanColor = "forestgreen")
plotRandomHistogram(seed=1, num_pts=1000000, meanColor = "hotpink")
