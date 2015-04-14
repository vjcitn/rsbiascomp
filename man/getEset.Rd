\name{getEset}
\alias{getEset}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
obtain ExpressionSet from SEQC
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
getEset(platform = "ILM", replicate = "1", lane = "L01", flowcell = "FlowCellA", center = "AGR", feature = "gene", catalog = "refseq")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{platform}{
%%     ~~Describe \code{platform} here~~
}
  \item{replicate}{
%%     ~~Describe \code{replicate} here~~
}
  \item{lane}{
%%     ~~Describe \code{lane} here~~
}
  \item{flowcell}{
%%     ~~Describe \code{flowcell} here~~
}
  \item{center}{
%%     ~~Describe \code{center} here~~
}
  \item{feature}{
%%     ~~Describe \code{feature} here~~
}
  \item{catalog}{
%%     ~~Describe \code{catalog} here~~
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
