#' Frequency of amino acids
#'
#' @param name_me2
#'
#' @return name_me4 a plot with the amino acid frequencies
#' @export
#'
plot_aa_frequence <- function(name_me2){
  name_me3 <- name_me2 |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(name_me3, function(amino_acid) stringr::str_count(string = name_me2, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[[name_me2]] <- rownames(counts)

  name_me4 <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = name_me2, y = Counts, fill = name_me2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(name_me4)
}
