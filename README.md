# Retention

`Retention` is an R package that contains datasets related to user
activity, user details, and build versions. These datasets can be used
for analyses such as user retention, activity patterns, and the impact
of different build versions on user activity.

It has functions for simulating builds, users, and activity data, each
of which is customisable to control scale of data output.

## Inspiration

The inspiration for these data is Unity Analytics game events. In order
to present retention analytics on game data open source, I need
simulated data that imitates the data structure I worked with at a video
game studio.

## Installation

You can install the `Retention` package from GitHub using the `devtools`
package. Run the following commands in your R console:

    # Install devtools if you haven't already
    if (!require(devtools)) {
      install.packages("devtools")
    }

    # Install the Retention package from GitHub
    devtools::install_github("softloud/retention")

## Using the package

    library(retention)

## Data

The data in this package was generated using the
`simulate_retention_data.R` script. The datasets are stored as RDS
files, called by the retention package, or accessed as csv files in
retention\_data/ and are:

1.  `user_activity`: This dataset tracks the activity of users across
    different build versions and dates. It contains 146,463 rows and 3
    variables: `user`, `build`, and `activity_date`.

<!-- -->

    dim(retention::user_activity)

    ## [1] 146463      3

    retention::user_activity %>% head()

    ## # A tibble: 6 × 3
    ##   user     build activity_date
    ##   <chr>    <chr> <date>       
    ## 1 user_1   0.0.0 2023-01-21   
    ## 2 user_10  0.0.0 2023-01-23   
    ## 3 user_10  0.0.0 2023-01-26   
    ## 4 user_10  0.0.2 2023-02-06   
    ## 5 user_100 0.0.0 2023-01-12   
    ## 6 user_100 0.0.0 2023-01-13

1.  `users`: This dataset tracks the activity of users from their first
    build version and date. It contains 47,031 rows and 4 variables:
    `user`, `first_build`, `activity_start`, and `activity_days`.

<!-- -->

    dim(retention::users)

    ## [1] 47031     4

    retention::users %>% head()

    ## # A tibble: 6 × 4
    ##   user   first_build activity_start activity_days
    ##   <chr>  <chr>       <date>                 <int>
    ## 1 user_1 0.0.0       2023-01-21               300
    ## 2 user_2 0.0.0       2023-01-17               443
    ## 3 user_3 0.0.0       2023-01-14               381
    ## 4 user_4 0.0.0       2023-01-09               190
    ## 5 user_5 0.0.0       2023-01-24               505
    ## 6 user_6 0.0.0       2023-01-11               552

1.  `builds`: This dataset tracks the release information of different
    build versions. It contains 57 rows and 4 variables: `build`,
    `release_length`, `release_start`, and `release_end`.

For more detailed information about these datasets, please refer to the
documentation in the `pkg_data.R` file.

    dim(retention::builds)

    ## [1] 57  4

    retention::builds %>% head()

    ## # A tibble: 6 × 4
    ##   build release_length release_start release_end
    ##   <chr>          <int> <date>        <date>     
    ## 1 0.0.0             24 2023-01-07    2023-01-30 
    ## 2 0.0.1              4 2023-01-31    2023-02-03 
    ## 3 0.0.2             27 2023-02-04    2023-03-02 
    ## 4 0.1.0             30 2023-03-03    2023-04-01 
    ## 5 0.1.1             12 2023-04-02    2023-04-13 
    ## 6 0.1.2             15 2023-04-14    2023-04-28

## Functions that simulate user activity for different versions of an app

Simulate builds.

    versions <- 
      get_versions(
              major_change_max = 2, 
              minor_change_max = 1, 
              hot_fix_max = 1) 

    versions

    ## # A tibble: 6 × 4
    ##   major_change minor_change hot_fix build
    ##          <int>        <int>   <int> <chr>
    ## 1            0            0       0 0.0.0
    ## 2            0            1       0 0.1.0
    ## 3            0            1       1 0.1.1
    ## 4            1            0       0 1.0.0
    ## 5            2            0       0 2.0.0
    ## 6            2            0       1 2.0.1

Simulate release dates for builds.

    builds <- builds %>% set_build_releases(release_length_max = 7)

    builds

    ## # A tibble: 57 × 4
    ##    build release_length release_start release_end
    ##    <chr>          <int> <date>        <date>     
    ##  1 0.0.0              5 2023-01-07    2023-01-11 
    ##  2 0.0.1              5 2023-01-12    2023-01-16 
    ##  3 0.0.2              4 2023-01-17    2023-01-20 
    ##  4 0.1.0              2 2023-01-21    2023-01-22 
    ##  5 0.1.1              2 2023-01-23    2023-01-24 
    ##  6 0.1.2              6 2023-01-25    2023-01-30 
    ##  7 0.1.3              5 2023-01-31    2023-02-04 
    ##  8 0.2.0              3 2023-02-05    2023-02-07 
    ##  9 0.3.0              4 2023-02-08    2023-02-11 
    ## 10 0.3.1              7 2023-02-12    2023-02-18 
    ## # ℹ 47 more rows

Simulate users for builds.

    users <- get_users(
        builds, 
        new_users_max = 3, 
        max_activity_days = 14)

    users

    ## # A tibble: 71 × 4
    ##    user    first_build activity_start activity_days
    ##    <chr>   <chr>       <date>                 <int>
    ##  1 user_1  0.0.0       2023-01-10                 8
    ##  2 user_2  0.0.1       2023-01-16                 3
    ##  3 user_3  0.0.1       2023-01-15                 8
    ##  4 user_4  0.0.1       2023-01-13                 2
    ##  5 user_5  0.0.2       2023-01-18                12
    ##  6 user_6  0.0.2       2023-01-19                14
    ##  7 user_7  0.0.2       2023-01-17                 2
    ##  8 user_8  0.1.1       2023-01-24                12
    ##  9 user_9  0.1.1       2023-01-24                 7
    ## 10 user_10 0.1.2       2023-01-26                 2
    ## # ℹ 61 more rows

Simulate activity.

    user_activity_data <- get_activity(builds, users) %>% 
      dplyr::filter(active_on_date == TRUE)

    head(user_activity_data, 50)

    ## # A tibble: 50 × 8
    ##    user    first_build activity_start activity_days build activity_date
    ##    <chr>   <chr>       <date>                 <int> <chr> <date>       
    ##  1 user_1  0.0.0       2023-01-10                 8 0.0.0 2023-01-10   
    ##  2 user_1  0.0.0       2023-01-10                 8 0.0.1 2023-01-14   
    ##  3 user_10 0.1.2       2023-01-26                 2 0.1.2 2023-01-26   
    ##  4 user_10 0.1.2       2023-01-26                 2 0.1.2 2023-01-27   
    ##  5 user_11 0.1.2       2023-01-27                 1 0.1.2 2023-01-27   
    ##  6 user_12 0.1.3       2023-02-01                11 0.1.3 2023-02-01   
    ##  7 user_12 0.1.3       2023-02-01                11 0.1.3 2023-02-02   
    ##  8 user_12 0.1.3       2023-02-01                11 0.2.0 2023-02-05   
    ##  9 user_12 0.1.3       2023-02-01                11 0.2.0 2023-02-06   
    ## 10 user_13 1.1.0       2023-03-02                 9 1.1.0 2023-03-02   
    ## # ℹ 40 more rows
    ## # ℹ 2 more variables: days_from_start <drtn>, active_on_date <lgl>

## Limitation

One limitation of these data is that the simulation assumes that users
update when the software is released, which is not necessarily the case.
However for the retention analytics I intend to generate with this, that
shouldn’t be too much of an issue.
