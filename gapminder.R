gapminder_orig <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv")
gapminder <- gapminder_orig
dim(gapminder)
names(gapminder)
head(gapminder)
gapminder %>% map_dbl(n_distinct)
gapminder %>% map_df(~(data.frame(n_distinct = n_distinct(.x),
                                  class = class(.x))))