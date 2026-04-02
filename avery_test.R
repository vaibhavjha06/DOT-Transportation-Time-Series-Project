data <- read.csv("Monthly_Modal_Time_Series.csv")

mbta <- data |>
  dplyr::filter(Agency == "Massachusetts Bay Transportation Authority",
                Mode == "HR")
mbta_ts <- ts(
  data = mbta$Unlinked.Passenger.Trips,
  start = c(2014, 1),
  frequency = 12
)

prt <- data |>
  dplyr::filter(Agency == "Pittsburgh Regional Transit",
                Mode == "MB")

prt_ts <- ts(
  data = prt$Unlinked.Passenger.Trips,
  start = c(2014, 1),
  frequency = 12
)
