#' @title Generate build numbers
#' @description This function generates build numbers based on the maximum values for major, minor, and hotfix changes.
#' @param major_change_max The maximum value for major changes. Default is 1.
#' @param minor_change_max The maximum value for minor changes. Default is 1.
#' @param hot_fix_max The maximum value for hotfix changes. Default is 1.
#' @return A data frame with the build numbers.
#' @export
#' @importFrom tibble tibble
#' @importFrom purrr map
#' @importFrom tidyr unnest
#' @importFrom dplyr select
#' @importFrom dplyr mutate
#' @name get_builds
#' 
#' @examples
#' get_builds(1, 1, 2)

utils::globalVariables(c(".data", "max_minor", "max_fix", "major_change", "minor_change", "hot_fix"))

get_builds <- function(major_change_max = 1, minor_change_max = 1, hot_fix_max = 1) {
    major_minor_builds <- 
    tibble::tibble(
        major_change = seq(0, major_change_max),
        max_minor = sample(0:minor_change_max, major_change_max, replace = TRUE),
        minor_change = purrr::map(max_minor, ~seq(0, .x))
    ) |> 
        tidyr::unnest(.data$minor_change) |>
        dplyr::select(-.data$max_minor)

    major_minor_builds |>
        dplyr::mutate(
            max_fix = sample(
                0:hot_fix_max, 
                nrow(major_minor_builds), 
                replace = TRUE),
            hot_fix = purrr::map(.data$max_fix, ~seq(0, .x))
            ) |>
            tidyr::unnest(.data$hot_fix) |>
            dplyr::select(-max_fix) |>
            dplyr::mutate(build = 
                stringr::str_c(major_change, minor_change, hot_fix, sep = '.'))
}