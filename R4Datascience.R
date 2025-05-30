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



