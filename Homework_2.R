total_data <- data.frame()
file_list <- list.files(path = " /Users/wcl/Downloads/data/assignment_idaccuracy/Aminer", full.names = TRUE)
for (file in file_list) {
  data <- read.csv(file, header = TRUE, stringsAsFactors = FALSE)
  total_data <- rbind(total_data, data)
}
sample <- head(total_data, 10)

#使用apply家族函数替代上述步骤中的for循环
total_data_apply <- data.frame()
file_list <- list.files(path = "/Users/wcl/Downloads/data/assignment_idaccuracy/Aminer", full.names = TRUE)
data_list <- lapply(file_list, function(file) {
  data <- read.csv(file, header = TRUE, stringsAsFactors = FALSE)
})
total_data_apply <- do.call(rbind, data_list)

