% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/samplers.R
\name{sample_bernoulli}
\alias{sample_bernoulli}
\title{Bernoulli sample}
\usage{
sample_bernoulli(
  probs = NULL,
  logits = NULL,
  dtype = tf$int32,
  sample_shape = list(),
  seed = NULL
)
}
\arguments{
\item{probs}{probabilities}

\item{logits}{logits}

\item{dtype}{the data type}

\item{sample_shape}{a list/vector of integers}

\item{seed}{integer, random seed}
}
\value{
a Tensor
}
\description{
Samples from Bernoulli distribution.
}
