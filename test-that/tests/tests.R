setwd("/Users/MandyZhang/Desktop/stat_159/stat159labs/test-that/tests/")
x = c(1,2,3,4,5)
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
  y = c(1,2,3,4,NA)
  
  expect_length(range_value(y),1)
  expect_equal(range_value(y), NA_real_)
})

test_that("range works as expected", {
  expect_length(range_value(z), 1)
  expect_type(range_value(z), "integer")
  expect_equal(range_value(z), 1L)
})

test_that("range works as expected", {
  expect_that(range_value(w), throws_error())
})

center_meansure = function(x){
c(mean(x), median(x))
}

spread_measures = function(x){
c(range(x), IQR(x), sd(x))
}

spread_measures(w)
{}





