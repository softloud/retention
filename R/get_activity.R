#' Generate user activity data
#'
#' This function generates a dataframe where each row is a combination of a row from `users` and a row from `activity_dates`.
#' It also calculates the `days_from_start` and simulates whether the user was active on a particular date, using the [get_activity_probability] function, dependent on number of days of activity, so that there is a much lower chance of activity the longer it has been from the user's start date.
#' The result is filtered so that `days_from_start` begins at 0.
#'
#' @param builds A dataframe with build release information.
#' @param users A dataframe with user information.
#' @return A dataframe with user activity dates and activity indicators.
#' @export
#' @examples
#' \dontrun{
#' builds <- get_versions() %>% set_build_releases()
#' users <- get_users(builds)
#' user_activity_data <- get_activity(builds, users)
#' }


get_activity <- function(builds, users) {
    activity_dates <- builds %>%
        dplyr::mutate(
            activity_date = purrr::map2(
                release_start, release_end,
                ~seq(.x, .y, by = '1 day')
            ) 
        ) %>%
        tidyr::unnest(activity_date) %>%
        dplyr::select(build, activity_date)

    user_activity_dates <- tidyr::crossing(users, activity_dates)

    user_activity_prob_application <- 
        user_activity_dates %>%
            dplyr::mutate(
                days_from_start = activity_date - activity_start,
                active_on_date = purrr::map_lgl(days_from_start, 
                    ~rbinom(1, 1, get_activity_probability(.x))
                ),
                # set activity to be false if exceeds length of activity for user
                active_on_date = dplyr::if_else(
                    days_from_start > activity_days,
                    FALSE,
                    active_on_date
                )
            ) 

    assertthat::assert_that(all(user_activity_prob_application %>% 
        dplyr::filter(days_from_start == 0) %>%
        dplyr::pull(active_on_date)
        ) == TRUE)

     assertthat::assert_that(all(user_activity_prob_application %>% 
        dplyr::filter(days_from_start < 0) %>%
        dplyr::pull(active_on_date)
        ) == FALSE)

    return(user_activity_prob_application)
}