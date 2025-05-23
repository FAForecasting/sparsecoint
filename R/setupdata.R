#' Set up data for the sparsecoint model by differencing and lagging it
#' @param data The data to use
#' @param exo Exogenous data to use
#' @param p The number of lags to use
setupData <- function (data, exo, p = 1, exo_p = 0) {
  q <- ncol(data)
  if (is.null(colnames(data))) colnames(data) <- paste0("X", seq_len(q))
  temp_data <- embed(diff(data), p + 1)
  if (!is.null(exo)) {
    temp_exo_data <- embed(diff(exo), exo_p + 1)
    exo_diff <- tail(temp_exo_data, nrow(temp_data))
  } else {
    exo_diff <- NULL
  }
  level <- tail(data, nrow(temp_data))
  diff <- temp_data[, seq_len(q), drop = FALSE]
  diff_lag <- temp_data[, -seq_len(q), drop = FALSE]
  return(list(level = level, diff = diff, diff_lag = diff_lag, exo = exo, exo_diff = exo_diff))
}
