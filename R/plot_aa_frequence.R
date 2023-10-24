#' Frequency of amino acids
#'
#' @param amino_acid_sequence
#'
#' @return amino_acid_frequency_plot a plot with the amino acid counts of a given amino acid sequence
#' @export
#'
plot_aa_frequence <- function(amino_acid_sequence){
  amino_acid <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(amino_acid, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_Acids"]] <- rownames(counts)

  name_me4 <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acids, y = Counts, fill = Amino_Acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_acid_frequency_plot)
}
