#' user_activity
#'
#' A dataset containing information about the activity of users.
#'
#' @format A data frame with 146,463 rows and 3 variables:
#' \describe{
#'   \item{user}{A character vector that represents the user ID. Each user is denoted as `user_x`, where `x` is a unique identifier for each user.}
#'   \item{build}{A character vector that represents the build version that the user is on. It is denoted in the format `major.minor.hotfix`.}
#'   \item{activity_date}{A Date vector that represents the date of the user's activity.}
#' }
#' @details This dataset is used to track the activity of users across different build versions and dates. It can be used for analyses such as user retention, activity patterns, and the impact of different build versions on user activity.
"user_activity"

#' users
#'
#' A dataset containing information about the users.
#'
#' @format A data frame with 47,031 rows and 4 variables:
#' \describe{
#'   \item{user}{A character vector that represents the user ID. Each user is denoted as `user_x`, where `x` is a unique identifier for each user.}
#'   \item{first_build}{A character vector that represents the first build version that the user was on. It is denoted in the format `major.minor.hotfix`.}
#'   \item{activity_start}{A Date vector that represents the start date of the user's activity.}
#'   \item{activity_days}{An integer vector that represents the number of days the user has been active.}
#' }
#' @details This dataset is used to track the activity of users from their first build version and date. It can be used for analyses such as user retention, activity patterns, and the impact of different build versions on user activity.
"users"

#' builds
#'
#' A dataset containing information about the builds.
#'
#' @format A data frame with 57 rows and 4 variables:
#' \describe{
#'   \item{build}{A character vector that represents the build version. It is denoted in the format `major.minor.hotfix`.}
#'   \item{release_length}{An integer vector that represents the length of the release in days.}
#'   \item{release_start}{A Date vector that represents the start date of the release.}
#'   \item{release_end}{A Date vector that represents the end date of the release.}
#' }
#' @details This dataset is used to track the release information of different build versions. It can be used for analyses such as release cycle time, build version impact on user activity, and release scheduling.
"builds"