\name{getEset}
\alias{getEset}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
obtain ExpressionSet from SEQC
}
\description{
tailored the extraction to specify a single replicate but
all samples from a given configuration of cell, center, lane.
}
\usage{
getEset(platform = "ILM", replicate = "1", lane = "L01", flowcell = "FlowCellA", center = "AGR", feature = "gene", catalog = "refseq")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{platform}{
character string, "ILM" ...
}
  \item{replicate}{
character string 1-5 or so
}
  \item{lane}{
character string ... L01 - L07 are possible options
}
  \item{flowcell}{
FlowCellA or B
}
  \item{center}{
various, see seqc.eSet
}
  \item{feature}{
gene or junction or taqman
}
  \item{catalog}{
string, "refseq" or "aceview"
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (platform = "ILM", replicate = "1", lane = "L01", flowcell = "FlowCellA", 
    center = "AGR", feature = "gene", catalog = "refseq") 
{
    ans = seqc.eSet(feature, catalog, platform)
    ans[, which(ans$replicate == replicate & ans$lane == lane & 
        ans$flowcell == flowcell & ans$center == center)]
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
