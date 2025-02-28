describe("Test 2006 data", {
  it("Read 2006 data", {
    path <- "/workdir/tests/data/diputados_2006.txt"
    obtained <- read_deputy_data(path)
    n_rows_obtained <- nrow(obtained)
    n_rows_expected <- 7
    expect_equal(n_rows_expected, n_rows_obtained)
  })
  it("Read 2009 data", {
    path <- "/workdir/tests/data/diputados_2009.txt"
    obtained <- read_deputy_data(path)
    n_rows_obtained <- nrow(obtained)
    n_rows_expected <- 12
    expect_equal(n_rows_expected, n_rows_obtained)
  })
  it("Read 2012 data", {
    path <- "/workdir/tests/data/diputados_2012.txt"
    obtained <- read_deputy_data(path)
    n_rows_obtained <- nrow(obtained)
    n_rows_expected <- 13
    expect_equal(n_rows_expected, n_rows_obtained)
  })
  it("Read 2015 data", {
    path <- "/workdir/tests/data/diputados_2015.txt"
    obtained <- read_deputy_data(path)
    n_rows_obtained <- nrow(obtained)
    n_rows_expected <- 17
    expect_equal(n_rows_expected, n_rows_obtained)
  })
  it("Read 2018 data", {
    path <- "/workdir/tests/data/diputados_2018.txt"
    obtained <- read_deputy_data(path)
    n_rows_obtained <- nrow(obtained)
    n_rows_expected <- 22
    expect_equal(n_rows_expected, n_rows_obtained)
  })
})
