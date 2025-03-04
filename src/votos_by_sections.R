library(tidyverse)

dipu <- read_csv("data/raw/Computos2024-Diputado.txt", show_col_types = FALSE) |>
  janitor::clean_names()

secciones <- read_csv("data/raw/secciones.csv", show_col_types = FALSE) |>
  janitor::clean_names()

secciones_sonora <- secciones |>
  filter(estado == 26) |>
  select(c("seccion", "nombre_municipio")) |>
  unique()

sonora <- dipu |>
  filter(id_entidad == 26, id_distrito_federal == "4") |>
  select(c(4,7,16:35)) |>
  pivot_longer(4:22, names_to = "partido", values_to = "votos") |>
  mutate(votos = as.numeric(votos), seccion = as.numeric(seccion))

total_votos_distrito_4 <- sonora |>
  left_join(secciones_sonora, by = c("seccion"="seccion")) |>
  group_by(nombre_municipio) |>
  summarize(votos = sum(votos, na.rm =T)) |>
  write_csv("/workdir/total_de_votos_por_municipio.csv")