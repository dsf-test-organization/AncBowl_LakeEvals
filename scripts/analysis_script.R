

# ========= setup =========


# dir.create(paste0(getwd(),"/figures"))
clean_data <- read.csv("./data/clean_data.csv")





# ========= analysis =========

mean_len <- mean(clean_data$length)




# ========== output =========

# open device
png(filename="./figures/length_histogram.png")

# create plot
hist(clean_data$length)
abline(v=mean_len, col = "red", lwd = 5)

# close device
dev.off()


