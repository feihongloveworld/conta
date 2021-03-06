# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Intersect a TSV file with VCF file and write a TSV output
#' that contains maf values for each SNP in the TSV file.
#' In the process, remove multiple-allele SNPs if the option
#' is turned on.
#'
#' @param tsv_filename string name of input TSV file
#' @param out_tsv_filename string name of output TSV file
#' @param vcf_filename string dbsnp VCF file name to be intersected
#' @param non_dbSNP allow non dbSNP positions to be included
#' @param genome_filename string name of the genome.fa
#' @param DEBUG boolean whether to print out messages
#' @return null
#'
#' @export
intersect_snps <- function(tsv_filename, out_tsv_filename, vcf_filename, non_dbSNP = FALSE, genome_filename = "NA", DEBUG = FALSE) {
    invisible(.Call('_conta_intersect_snps', PACKAGE = 'conta', tsv_filename, out_tsv_filename, vcf_filename, non_dbSNP, genome_filename, DEBUG))
}

#' Return sequence specified by the chromosome start and lengths
#'
#' @param genome_filename string name of the genome.fa
#' @param chr chromosome name
#' @param start sequence start base
#' @param length length of sequence
#' @param DEBUG print out debug messages
#' @return sequence string
#'
#' @export
get_genomic_seq <- function(genome_filename = "NA", chr = "NA", start = 0L, length = 0L, DEBUG = FALSE) {
    .Call('_conta_get_genomic_seq', PACKAGE = 'conta', genome_filename, chr, start, length, DEBUG)
}

#' Return sequences specified by the chromosome start and lengths
#'
#' @param genome_filename string name of the genome.fa
#' @param chrs chromosome name
#' @param starts sequence start base
#' @param lengths length of sequence
#' @param DEBUG print out debug messages
#' @return sequence string
#'
#' @export
get_genomic_seqs <- function(genome_filename, chrs, starts, lengths, DEBUG = FALSE) {
    .Call('_conta_get_genomic_seqs', PACKAGE = 'conta', genome_filename, chrs, starts, lengths, DEBUG)
}

