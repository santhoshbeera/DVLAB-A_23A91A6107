data(AirPassengers)

# Verify dataset
class(AirPassengers)
head(AirPassengers)

ap_df <- data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

# DataFrame with year and month separately
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

# View data
head(ap_df)
head(ap_df_months)

plot(AirPassengers,
     type = "l",
     main = "Air Passengers Trend Analysis",
     xlab = "Year",
     ylab = "Number of Passengers",
     col = "red",
     lwd = 1.5
)

points(AirPassengers,
       type = "o",
       pch = 16,
       col = "blue"
)

grid()

# install.packages("ggplot2")  
library(ggplot2)

ggplot(ap_df, aes(x = year, y = passengers)) +
  geom_line(color = "darkgreen", linewidth = 0.6) +
  geom_point(color = "red", size = 0.8) +
  geom_smooth(se = FALSE, color = "orange") +
  labs(
    title = "Trend Analysis of Air Passengers",
    subtitle = "From 1949 to 1960",
    caption = "Using Built-in AirPassengers Dataset",
    x = "Year",
    y = "Number of Passengers"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 10)
  )

