builds <- get_builds()

set_build_releases()


builds |>
    dplyr::filter(new_users != 0) |>
    dplyr::mutate(
        new_users_cum_max = cumsum(new_users),
        new_users_cum_min = new_users_cum_max - new_users + 1,
        user = purrr::map2(new_users_cum_min, 
        new_users_cum_max,
        ~paste('user', .x:.y, sep = "_"))
    ) |>
    unnest(user) |>
    select()
