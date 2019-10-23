pollutantmean <- function(directory, pollutant, id = 1:332) {
	files <- list.files(directory, full.names = T) 
	data <- data.frame()
      for (i in id) {
      	data <- rbind(data, read.csv(files[i]))
      }
    	mean_pollutant <- mean(data[, pollutant], na.rm = T)
      return(mean_pollutant)
}