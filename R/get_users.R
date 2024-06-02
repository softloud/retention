#' Get users from builds
#'
#' This function filters out builds with no new users, calculates cumulative sums of new users, 
#' generates user IDs, and unnests the user IDs into a single column. It also assigns each user a random activity start date 
#' between the release start and end dates of the build. Defaults to a maximum of 2 new users per build.
#'
#' @param builds A data frame of builds. This should be the output of the `set_build_releases` function and should include a `new_users` column.
#' @param new_users_max The maximum number of new users. This is used to generate a random number of new users for each build. Default is 2.
#' @param max_activity_days The maximum number of days for which to generate activity data. Default is 30.
#'
#' @return A data frame with user IDs, the build they belong to, their activity start date, and the number of activity days for each new user in each build.
#' @export
#' @importFrom dplyr filter mutate select
#' @importFrom purrr map2
#' @importFrom tidyr unnest
#' @importFrom magrittr %>%
#' @importFrom assertthat assert_that see_if
#'
#' @examples
#' builds <- get_versions()
#' builds <- set_build_releases(builds, release_length_max = 30)
#' get_users(builds)
#' 
#' @name get_users

get_users <- function(builds, 
    new_users_max = 2,
    max_activity_days = 5
    ) {
    result <- builds |>
        dplyr::mutate(new_users = sample(0:new_users_max, nrow(builds),
                                                                         replace = TRUE)) |>
        dplyr::filter(new_users != 0) |>
        dplyr::mutate(
                new_users_cum_max = cumsum(new_users),
                new_users_cum_min = new_users_cum_max - new_users + 1,
                user = purrr::map2(new_users_cum_min, 
                new_users_cum_max,
                ~paste('user', .x:.y, sep = "_"))
        ) |>
        tidyr::unnest(user) |>
        dplyr::select(user, build, release_start, release_end) |>
        dplyr::mutate(
                activity_days = purrr::map_int(
                        user,
                        ~sample(1:max_activity_days, 1)
                ),
                activity_start = purrr::map2(
                        release_start, 
                        release_end, 
                        ~sample(seq(.x, .y, by = "day"), 1)
                ),
                activity_start = lubridate::as_date(unlist(activity_start))
        ) 
        
    assertthat::assert_that(
        all(result$activity_start >= result$release_start & 
            result$activity_start <= result$release_end)) 

    return(result |>
        dplyr::select(user, first_build = build, activity_start, activity_days))
}