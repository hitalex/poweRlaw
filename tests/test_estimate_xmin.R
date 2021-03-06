test_that("Testing estimate_xmin function", {
  
  ##Discrete Power-law
  load("discrete_data.RData")
  mt = displ$new(discrete_data)
  est = estimate_xmin(mt, pars=seq(2, 3, 0.01))
  expect_equal(est$pars, 2.58, tol=1e-1)
  expect_equal(est$xmin, 2)
  
  ##Poisson
  set.seed(1)
  x = rpois(10000, 10)
  x = x[x >= 10]
  x = c(x, sample(1:9, 10000-length(x), replace=TRUE))
  
  mt = dispois$new(x)
  est = estimate_xmin(mt)
  expect_equal(est$pars, 9.948, tol=1e-4)
  expect_equal(est$xmin, 13)
  
  ##Discrete Log-normal
  set.seed(1)
  x = ceiling(rlnorm(10000, 3, 1))
  x = x[x >= 10]
  x = c(x, sample(1:9, 10000-length(x), replace=TRUE))
  
  mt = dislnorm$new(x)
  est = estimate_xmin(mt)
  expect_equal(est$pars, c(2.981, 1.012), tol=1e-3)
  expect_equal(est$xmin, 10)
  
  
  ##CTN Power-law
  load("ctn_data.RData")
  mt = conpl$new(ctn_data)
  est = estimate_xmin(mt)
  expect_equal(est$pars, 2.53282, tol=1e-4)
  expect_equal(est$xmin, 1.43628, tol=1e-4)
  
  ##Log-normal
  set.seed(1)
  x = rlnorm(10000, 3, 1)
  x = x[x >= 10]
  x = c(x, runif(10000-length(x), 0, 10))
  
  mt = conlnorm$new(x)
  est = estimate_xmin(mt, xmins=1:50)
  expect_equal(est$pars, c(2.966, 1.022), tol=1e-4)
  expect_equal(est$xmin, 10)
  
  
  ##Exponential
  set.seed(1)
  x = rexp(10000, 0.01)
  x = x[x >= 10]
  x = c(x, runif(10000-length(x), 0, 10))
  
  mt = conexp$new(x)
  est = estimate_xmin(mt, xmins=1:50)

  expect_equal(est$pars, 0.01003, tol=1e-3)
  expect_equal(est$xmin, 4)
}
)