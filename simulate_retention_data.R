
devtools::install()

library(retention)

builds <- get_versions(
        major_change_max = 3, 
        minor_change_max = 10, 
        hot_fix_max = 3) %>% 
        set_build_releases(release_length_max = 30)

users <- get_users(
    builds, 
    new_users_max = 1500, 
    max_activity_days = 600)

user_activity_data <- get_activity(builds, users)

user_activity <- user_activity_data %>% 
    dplyr::filter(active_on_date == TRUE) %>%
    dplyr::select(user, build, activity_date) 

nrow(user_activity)

dim(user_activity)


usethis::use_data(user_activity)
usethis::use_data(builds)
usethis::use_data(users)


--- # Check that files meet github limits


# Save a subset of your dataframe as an RDS file
saveRDS(user_activity, file = "retention_data/user_activity.rds")

# Check the file size
file.info("retention_data/user_activity.rds")$size

# Size of GitHub limit in bytes
github_limit_bytes <- 100 * 1024 * 1024

# Size of your test RDS file in bytes
test_rds_size_bytes <- file.info("retention_data/user_activity.rds")$size

test_rds_size_bytes < github_limit_bytes

write.csv(user_activity, 'retention_data/user_activity.csv')
write.csv(users, 'retention_data/users.csv')
write.csv(builds, 'retention_data/builds.csv')

# Check the file size
file.info("retention_data/user_activity.csv")$size < github_limit_bytes
