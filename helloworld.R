data(mtcars)

mtcars

View(mtcars)

write.csv(mtcars,
          'mtcars.csv'
)

head(mtcars)

tail(mtcars)

colnames(mtcars)


model = lm(mpg ~ hp,
           data = mtcars)

model = lm(mtcars$mpg ~ mtcars$hp)

mtcars$mpg

summary(model)



