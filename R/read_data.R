read_deputy_data <- function(path_file) {
  diputaciones <- readr::read_delim(path_file, delim = "|", show_col_types = FALSE) |>
    janitor::clean_names()
}
