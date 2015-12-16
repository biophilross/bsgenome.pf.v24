\name{BSgenome.Pfalciparum.PlasmoDB.v24}
\docType{package}

\alias{BSgenome.Pfalciparum.PlasmoDB.v24-package}
\alias{BSgenome.Pfalciparum.PlasmoDB.v24}
\alias{Pfalciparum}

\title{Full genome sequences for P. falciparum 3D7}

\description{
  Full genome sequence for P. falciparum 3D7 reference strain as provided by PlasmoDB in version 24
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
-- information not available --
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{Philipp Ross}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Pfalciparum.PlasmoDB.v24
genome <- BSgenome.Pfalciparum.PlasmoDB.v24
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
