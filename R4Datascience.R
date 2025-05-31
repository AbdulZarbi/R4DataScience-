# Already Installed the Tidyverse
# Loaded the package 
library(tidyverse)

# Run updates 
tidyverse_update()

# Install other excellent packages 
install.packages(
      c("arrow", "babynames", "curl", "duckdb", "gapminder", 
        "ggrepel", "ggridges", "ggthemes", "hexbin", "janitor", "Lahman", 
        "leaflet", "maps", "nycflights13", "openxlsx", "palmerpenguins", 
        "repurrrsive", "tidymodels", "writexl")
)

1 + 2
# ggplot2 implements the grammar of graphics

install.packages("palmerpenguins")

library(palmerpenguins)
#> 
#> Attaching package: 'palmerpenguins'
#> The following objects are masked from 'package:datasets':
#> 
#>     penguins, penguins_raw
library(ggthemes)

penguins

View(penguins)
glimpse(penguins)
?glimpse
str(penguins)
?penguins

?ggplot

ggplot(
      data = penguins,
      mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
      geom_point(mapping = aes(color = species)
                 ) +
      geom_smooth(method = "lm")

ggplot(
      data = penguins,
      mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
      geom_point(mapping = aes(color = species, shape = species)) +
      geom_smooth(method = "lm") +
      labs (
            title = "Body mass and flipper lenght",
            subtitle = " Dimension for Adelie, Chinstrap, and gentoo penguins",
            x = "Flipper length (mm)", y = "Body mass (g)",
            color = "Species", shape = "Species"
      ) +
      scale_color_colorblind()
#How many rows are in penguins? How many columns?
nrow(penguins)

?penguins
#Make scarter plot of bill depth and bill length?

ggplot(
      data = penguins, 
      mapping = aes(x = bill_length_mm, y = bill_depth_mm)
) +
      geom_point(mapping = aes(color = species, shape = species))

ggplot(data = penguins) + 
      geom_point()

ggplot(
      data = penguins,
      mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
      geom_point() +
      geom_smooth(se = FALSE)


ggplot(
      data = penguins,
      mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
      geom_point() +
      geom_smooth()

ggplot() +
      geom_point(
            data = penguins,
            mapping = aes(x = flipper_length_mm, y = body_mass_g)
      ) +
      geom_smooth(
            data = penguins,
            mapping = aes(x = flipper_length_mm, y = body_mass_g)
      )

#ggplot2 calls
ggplot(
      data = penguins,
      mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
      geom_point()

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
      geom_point()
#pipe
penguins |> 
      ggplot(aes(x = flipper_length_mm, y = body_mass_g)) + 
      geom_point()


#Visualizing distributions

ggplot(penguins, aes(x = species)) +
      geom_bar()

ggplot(penguins, aes(x = fct_infreq(species))) +
      geom_bar()

#A numerical variable 

ggplot(penguins, aes(x = body_mass_g)) + 
      geom_histogram(binwidth = 200)


ggplot(penguins, aes(x = body_mass_g)) + 
      geom_histogram(binwidth = 20)

ggplot(penguins, aes(x = body_mass_g)) +
      geom_density()

ggplot(penguins, aes(y = species, color = species)) +
      geom_bar()

ggplot(penguins, aes(x = species)) +
      geom_bar(color ="red")

ggplot(penguins, aes(x = species)) +
      geom_bar(fill ="red",)

ggplot(penguins, aes(x = species, y = body_mass_g)) +
      geom_boxplot()

ggplot(penguins, aes(x = body_mass_g, color = species)) +
      geom_density(linewidth = 0.75)

ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) +
      geom_density(alpha = 0.5)

ggplot(penguins, aes(x= island, fill = species)) +
      geom_bar(position = "fill")

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
      geom_point()

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
      geom_point(aes(color = species, shape = island))

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
      geom_point(aes(color = species, shape = species)) +
      facet_wrap(~island)

#Excercises 

?mpg

str(mpg)                 
summary(mpg)
head(mpg)
view(mpg)
print(mpg)
tail(mpg)

data(mpg)

ggplot(mpg, aes(y = hwy, x = displ, color = cty )) +
      geom_point()
ggplot(
      data = penguins,
      mapping = aes(
            x = bill_length_mm, y = bill_depth_mm, 
            color = species, shape = species
      )
) +
      geom_point() +
      labs(color = "Species")

ggplot(mpg, aes(x = class)) +
      geom_bar()
ggplot(mpg, aes(x = cty, y = hwy)) +
      geom_point()
ggsave("mpg-plot.png")


#Workflow 

this_is_a_really_long_name <- 2.5

r_rocks <- 2^3

r_rocks



library(tidyverse)
library(nycflights13)

?flights
flights

view(flights)

print(flights, width = Inf)

glimpse(flights)

summary(flights)

str(flights)







