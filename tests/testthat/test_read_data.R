describe("Test 2006 data", {
  it("Return one", {
    path <- "/workdir/tests/data/diputados_2006.txt"
    obtained <- read_deputy_data(path)
    n_rows_obtained <- nrow(obtained)
    n_rowsexpected <- 7
    expect_equal(n_rows_expected, n_rows_obtained)
  })
})