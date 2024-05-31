#' Get users from builds
#'
#' This function filters out builds with no new users, calculates cumulative sums of new users, 
#' generates user IDs, and unnests the user IDs into a single column.
#'
#' @param builds A data frame of builds. This should be the output of the `set_build_releases` function and should include a `new_users` column.
#'
#' @return A data frame with user IDs for each new user in each build.
#' @export
#' @importFrom dplyr filter mutate select
#' @importFrom purrr map2
#' @importFrom tidyr unnest
#' @importFrom magrittr %>%
#'
#' @examples
#' builds <- get_builds()
#' builds <- set_build_releases(builds, new_users_max = 100, release_length_max = 30)
#' get_users(builds)

get_users <- function(builds) {
  builds |>
    dplyr::filter(new_users != 0) |>
    dplyr::mutate(
        new_users_cum_max = cumsum(new_users),
        new_users_cum_min = new_users_cum_max - new_users + 1,
        user = purrr::map2(new_users_cum_min, 
        new_users_cum_max,
        ~paste('user', .x:.y, sep = "_"))
    ) |>
    tidyr::unnest(user) |>
    dplyr::select(user)
}