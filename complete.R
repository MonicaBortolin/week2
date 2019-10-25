complete <- function(directory, id = 1:332){
  files <- list.files(directory, full.names = T)
  data <- data.frame()
  for (i in id) {
    temporary <- read.csv(files[i])
    nobs <- sum(complete.cases(temporary))
    data <- rbind(data, data.frame(i, nobs))
  }
  return(data)
}