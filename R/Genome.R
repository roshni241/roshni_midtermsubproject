#' Genome Class
#'
#' A class to store genome information
#'
#' Genome class
#' @slot genome_name character
#' @slot num_chromosomes numeric
#' @slot num_proteins numeric
setClass(
  "Genome",
  slots = list(
    genome_name = "character",
    num_chromosomes = "numeric",
    num_proteins = "numeric"
  )
)

#' Average Proteins Per Chromosome
#'
#' Calculates average number of proteins per chromosome
#'
#' @param object Genome object
#' @return Rounded average proteins per chromosome
#' @export
setGeneric(
  "avgProteinPerCh",
  function(object) standardGeneric("avgProteinPerCh")
)

#' @rdname avgProteinPerCh
#' @export
setMethod(
  "avgProteinPerCh",
  "Genome",
  function(object) {
    round(object@total_proteins / object@total_chromosomes)
  }
)
