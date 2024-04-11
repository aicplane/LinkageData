#' Laod TCGA Breast Cancer ATAC-seq expression matrix.
#'
#' @return ATAC-seq count
#' @export
#'
#' @examples
#' library(LinkageData)
#' BreastCancerATAC()
BreastCancerATAC <- function(){
  txt_files <- list.files("data/Homo.ATAC/",pattern = "\\.RData$")
  data_list <- lapply(txt_files, function(file) {
    load(paste0("data/Homo.ATAC/", file))
    data
  })
  ATAC <- do.call(rbind, data_list)
  return(ATAC)
}

#' Laod MuSC ATAC-seq expression matrix.
#'
#' @return ATAC-seq count
#' @export
#'
#' @examples
#' library(LinkageData)
#' MuSCsATAC()
MuSCsATAC <- function(){
  txt_files <- list.files("data/Mus.ATAC/",pattern = "\\.RData$")
  data_list <- lapply(txt_files, function(file) {
    load(paste0("data/Mus.ATAC/", file))
    data
  })
  ATAC <- do.call(rbind, data_list)
  return(ATAC)
}

#' Laod TCGA Breast Cancer RNA-seq expression matrix.
#'
#' @return RNA-seq count
#' @export
#'
#' @examples
#' library(LinkageData)
#' BreastCancerRNA()
BreastCancerRNA <- function(){
  load("data/TCGA-BRCA-RNA.RData")
  return(RNA_matrix)
}


#' Laod MuSC RNA-seq expression matrix.
#'
#' @return RNA-seq count
#' @export
#'
#' @examples
#' library(LinkageData)
#' MuSCsRNA()
MuSCsRNA <- function(){
  load("data/mouse.normalize.rna.RData")
  return(mouse.RNA_matrix)
}
