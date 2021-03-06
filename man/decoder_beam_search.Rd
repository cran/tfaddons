% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seq2seq.R
\name{decoder_beam_search}
\alias{decoder_beam_search}
\title{BeamSearch sampling decoder}
\usage{
decoder_beam_search(
  object,
  cell,
  beam_width,
  embedding_fn = NULL,
  output_layer = NULL,
  length_penalty_weight = 0,
  coverage_penalty_weight = 0,
  reorder_tensor_arrays = TRUE,
  ...
)
}
\arguments{
\item{object}{Model or layer object}

\item{cell}{An RNNCell instance.}

\item{beam_width}{integer, the number of beams.}

\item{embedding_fn}{A callable that takes a vector tensor of ids (argmax ids).}

\item{output_layer}{(Optional) An instance of tf.keras.layers.Layer,
i.e., tf$keras$layers$Dense. Optional layer to apply to the RNN output prior
to storing the result or sampling.}

\item{length_penalty_weight}{Float weight to penalize length. Disabled with 0.0.}

\item{coverage_penalty_weight}{Float weight to penalize the coverage of source
sentence. Disabled with 0.0.}

\item{reorder_tensor_arrays}{If `TRUE`, TensorArrays' elements within the cell
state will be reordered according to the beam search path. If the TensorArray
can be reordered, the stacked form will be returned. Otherwise, the TensorArray
will be returned as is. Set this flag to False if the cell state contains
TensorArrays that are not amenable to reordering.}

\item{...}{A list, other keyword arguments for initialization.}
}
\value{
None
}
\description{
BeamSearch sampling decoder
}
\note{
If you are using the `BeamSearchDecoder` with a cell wrapped in
`AttentionWrapper`, then you must ensure that:
 - The encoder output has been tiled to `beam_width` via
 `tile_batch()` (NOT `tf$tile`).
 - The `batch_size` argument passed to the `get_initial_state` method of
 this wrapper is equal to `true_batch_size * beam_width`.
 - The initial state created with `get_initial_state` above contains a
 `cell_state` value containing properly tiled final state from the encoder.
}
