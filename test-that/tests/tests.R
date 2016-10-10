setwd("/Users/MandyZhang/Desktop/stat_159/stat159labs/test-that/tests/")
x = c(1,2,3,4,5)
y = c(1,2,3,4,NA)
z = c(TRUE, FALSE, TRUE)
w = letters[1:5]
library(testthat)
source("../functions/rang_value.R")
source("../functions/missing_value.R")

context("Test for range value")



test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})



context("Test for range value")
test_that("range works as expected", {
  expect_length(range_value(y),1)
  expect_output(range_value(y), "NA_real")
})

test_that("range works as expected", {
  expect_length(range_value(z), 1)
  expect_type(range_value(z), is.integer)
  expect_equal(range_value(z), "1L")
})

test_that("range works as expected", {
  expect_that(range_value(y), throws_error())
})











