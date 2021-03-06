% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/samplers.R
\name{sample_categorical}
\alias{sample_categorical}
\title{Categorical sample}
\usage{
sample_categorical(
  logits,
  dtype = tf$int32,
  sample_shape = list(),
  seed = NULL
)
}
\arguments{
\item{logits}{logits}

\item{dtype}{dtype}

\item{sample_shape}{the shape of sample}

\item{seed}{random seed: integer}
}
\value{
a Tensor
}
\description{
Samples from categorical distribution.
}
