#' Transcription
#'
#' @param DNA_sequence a DNA sequence to be transcribed
#'
#' @return Returns a RNA sequence of the inserted DNA sequence
#' @export
#'
transcription <- function(DNA_sequence){
  RNA_sequence <- gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}

