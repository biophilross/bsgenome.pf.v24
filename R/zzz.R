###
###

.pkgname <- "BSgenome.Pfalciparum.PlasmoDB.v24"

.seqnames <- NULL

.circ_seqs <- c("M76611", "PFC10_API_IRAB")

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Plasmodium falciparum",
        common_name="3D7",
        provider="PlasmoDB",
        provider_version="24",
        release_date="5/01/2015",
        release_name="Version 24",
        source_url="http://plasmodb.org/common/downloads/release-24/Pfalciparum3D7/fasta/data/PlasmoDB-24_Pfalciparum3D7_Genome.fasta",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Pfalciparum"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

