#' Frequency of amino acids
#'
#' This function calculates and plots the frequency of amino acids in a given amino acid sequence.
#'
#' @param amino_acid_sequence A character vector representing the amino acid sequence.
#'
#' @return amino_acid_frequency_plot A plot with the amino acid counts of the given amino acid sequence.
#'
#' @export
#'
#' @import ggplot2
#' @import stringr
#'
plot_aa_frequency <- function(amino_acid_sequence) {
  # Split the amino acid sequence into individual amino acids and get unique values
  amino_acid <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Calculate the counts of each unique amino acid in the sequence
  counts <- sapply(amino_acid, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern = amino_acid)) |>
    as.data.frame()

  # Set column names for the counts data frame
  colnames(counts) <- c("Counts")
  counts[["Amino_Acids"]] <- rownames(counts)

  # Create a bar plot of amino acid counts
  amino_acid_frequency_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acids, y = Counts, fill = Amino_Acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the amino acid frequency plot
  return(amino_acid_frequency_plot)
}

