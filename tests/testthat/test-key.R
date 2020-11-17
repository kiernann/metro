test_that("key is is proper character if exists", {
  skip_if_no_key()
  key <- wmata_key()
  expect_length(key, 1)
  expect_type(key, "character")
})

test_that("key returns empty if not found", {
  old_key <- Sys.getenv("WMATA_KEY")
  Sys.unsetenv("WMATA_KEY")
  expect_false(nzchar(wmata_key()))
  Sys.setenv("WMATA_KEY" = old_key)
})

test_that("key instructions given if possible", {
  skip_if_no_key()
  skip_if_not_installed("usethis")
  expect_invisible(usethis::ui_silence(browse_wmata_key()))
})

test_that("demo can be scraped with rvest", {
  skip_if_not_installed("rvest")
  key <- wmata_demo()
  expect_length(key, 1)
  expect_type(key, "character")
})