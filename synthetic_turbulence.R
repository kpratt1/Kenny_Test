
rm(list=ls())

t <- seq(1/20, 1638.4, by = 1/20) 

X <- rnorm(32768) #27.3 minutes of data with data taken at 20Hz
Z <- rnorm(32768)

myfilter <- butter(2, 0.1, type = 'low', plane='z')   #filter .1 times the sample frequency

Xfiltered <- signal:::filter(myfilter,X) #apply filter
Zfiltered <- signal:::filter(myfilter,Z) #apply filter


rho_xy <- .5

Y <- rho_xy*X + ((1-rho_xy^2)^.5)*Z
