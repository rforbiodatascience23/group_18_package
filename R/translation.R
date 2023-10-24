#' Translation
#'
#' @param codons
#'
#' @return RNA codons will be translated in aminoacids.
#' @export
#'
translation <- function(codons){
  translated_seq <- paste0(table_codons[codons], collapse = "")
  return(translated_seq)
}
