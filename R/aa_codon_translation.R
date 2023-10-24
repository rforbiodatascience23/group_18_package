#' amino acids to codons translation
#'
#' @param aa_seq original sequence of amino acids
#' @param start first position of the input sequence
#'
#' @return codons sequence corresponding to the aa original sequence
#' @export

aa_to_codons <- function(aa_seq, start = 1){
  seq_length <- nchar(aa_seq)
  codons <- substring(aa_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
