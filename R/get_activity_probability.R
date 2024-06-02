#' Get the probability of a player returning on a given day
#'
#' This function calculates the probability of a player returning on a given day.
#' The probability decreases over time according to the following schedule:
#' - 100% on day 0
#' - 30% on day 1
#' - Linear decrease from 30% to 10% from day 1 to day 3
#' - Linear decrease from 10% to 5% from day 3 to day 7
#' - Linear decrease from 5% to 2% from day 7 to day 14
#' - Linear decrease from 2% to 0.05% from day 14 to day 30
#' - 0.05% on all days after day 30
#'
#' @param day The day from start, indexed from 0, for which to calculate the probability (integer).
#' @return The probability of a player returning on the given day (numeric).
#' 
#' @name get_activity_probability
#' 
#' @export
#' 
#' @examples
#' get_activity_probability(0)  # 1
#' get_activity_probability(1)  # 0.3
#' get_activity_probability(3)  # 0.1
#' get_activity_probability(7)  # 0.05
#' get_activity_probability(14) # 0.02
#' get_activity_probability(30) # 0.0005
#' get_activity_probability(31) # 0.0005

get_activity_probability <- function(day) {
    if (day < 0) return(0)
    if (day == 0) return(1)
    if (day == 1) return(0.3)
    if (day <= 3) return(0.3 - 0.2 * (day - 1) / 2)
    if (day <= 7) return(0.2 - 0.1 * (day - 3) / 4)
    if (day <= 14) return(0.1 - 0.05 * (day - 7) / 7)
    if (day <= 30) return(0.05 - 0.045 * (day - 14) / 16)
    return(0.0005)
}