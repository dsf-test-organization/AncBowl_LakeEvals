
# TEST PROJECT
# this file creates 'messy' data by adding NA's
# then 'cleans' the data by removing them
# for the purpose of demonstrating project structure 


# ================== Setup ==================


# Initialize folders if necessary

# dir.create(paste0(getwd(),"/data"))
# dir.create(paste0(getwd(),"/scripts"))


# generate and write out 'messy' data

dat <- rnorm(100, mean = 400, sd = 100)

# put NA's in the dataframe to make it messy
for (i in 1:100){
  if (i%%12==0){
    dat[i] <- NA
  }
}

#  Used a relative file path
#  ./ means "look in the wd for the data folder, and write raw_data.csv
# ../ means "look in the parent directory of the wd

write.csv(dat, "./data/raw_data.csv", row.names = F)



# ================== cleaning ==================



# remove NA's to make the data clean

clean_data <- data.frame(length = dat[!is.na(dat)])

write.csv(clean_data, "./data/clean_data.csv", row.names = F)
