write.csv(data.frame(x = rnorm(n = 10000000)),
          'bigData.csv',
          row.names = FALSE)

saveRDS(data.frame(x = rnorm(n = 10000000)),
        'bigData.rds')

data = read.csv('bigData.csv')

data = readRDS('bigData.rds')
