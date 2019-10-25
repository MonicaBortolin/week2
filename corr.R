corr <- function(directory, threshold = 0)
{
  files <- list.files(directory, full.names= TRUE)
  data <- vector(mode = "numeric", length = 0)
  for(i in 1:length(files)) {
    temporary <- read.csv(files[i])
    tot <- sum((!is.na(temporary$sulfate)) & (!is.na(temporary$nitrate)))
    if (tot > threshold) {
      sulf <- temporary[which(!is.na(temporary$sulfate)), ]
      nitr <- sulf[which(!is.na(sulf$nitrate)), ]
      data <- c(data, cor(nitr$sulfate, nitr$nitrate))
    }
  }
  data
}