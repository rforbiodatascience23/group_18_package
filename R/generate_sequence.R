#' Random sequence
#'
#' @param number_nucleotides
#'
#' @return the function will return sequence corresponding with the number of nucleotides
#' @export
#'
generated_sequence <- function(number_nucleotides){
  selected_sequence <- sample(c("A", "T", "G", "C"), size = number_nucleotides, replace = TRUE)
  clean_sequence <- paste0(selected_sequence, collapse = "")
  return(clean_sequence)
}

