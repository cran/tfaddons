% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/losses.R
\name{loss_npairs_multilabel}
\alias{loss_npairs_multilabel}
\title{Npairs multilabel loss}
\usage{
loss_npairs_multilabel(name = "npairs_multilabel_loss")
}
\arguments{
\item{name}{Optional name for the op.}
}
\value{
npairs_multilabel_loss: float scalar.
}
\description{
Computes the npairs loss between multilabel data `y_true` and `y_pred`.
}
\details{
Npairs loss expects paired data where a pair is composed of samples from
the same labels and each pairs in the minibatch have different labels.
The loss takes each row of the pair-wise similarity matrix, `y_pred`,
as logits and the remapped multi-class labels, `y_true`, as labels. To deal with
multilabel inputs, the count of label intersection
is computed as follows:
```
L_{i,j} = | set_of_labels_for(i) `\\cap` set_of_labels_for(j) |
```
Each row of the count based label matrix is further normalized so that
each row sums to one. `y_true` should be a binary indicator for classes.
That is, if `y_true[i, j] = 1`, then `i`th sample is in `j`th class;
if `y_true[i, j] = 0`, then `i`th sample is not in `j`th class. The similarity matrix
`y_pred` between two embedding matrices `a` and `b`
with shape `[batch_size, hidden_size]` can be computed as follows:
```
# y_pred = a * b^T
y_pred = tf.matmul(a, b, transpose_a=FALSE, transpose_b=TRUE)
```
}
\section{See}{
 http://www.nec-labs.com/uploads/images/Department-Images/MediaAnalytics/papers/nips16_npairmetriclearning.pdf
}

