% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qsub_parallel.R
\name{qsub_parallel}
\alias{qsub_parallel}
\title{qsub_parallel}
\usage{
qsub_parallel(settings, files = NULL, prefix = "sipnet.out", sleep = 10)
}
\arguments{
\item{settings}{pecan settings object}

\item{files}{allow submit jobs based on job.sh file paths.}

\item{prefix}{used for detecting if jobs are completed or not.}

\item{sleep}{time (in second) that we wait each time for the jobs to be completed.}
}
\description{
qsub_parallel
}
\examples{
\dontrun{
  qsub_parallel(settings)
}
}
\author{
Dongchen Zhang
}
