% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gSSURGO_Query.R
\name{gSSURGO.Query}
\alias{gSSURGO.Query}
\title{This function queries the gSSURGO database for a series of map unit keys}
\usage{
gSSURGO.Query(
  mukeys,
  fields = c("chorizon.sandtotal_r", "chorizon.silttotal_r", "chorizon.claytotal_r")
)
}
\arguments{
\item{mukeys}{map unit key from gssurgo}

\item{fields}{a character vector of the fields to be extracted. See details and the default argument to find out how to define fields.}
}
\value{
a dataframe with soil properties. Units can be looked up from database documentation
}
\description{
This function queries the gSSURGO database for a series of map unit keys
}
\details{
Full documention of available tables and their relationships can be found here \url{www.sdmdataaccess.nrcs.usda.gov/QueryHelp.aspx}
There have been occasions where NRCS made some minor changes to the structure of the API which this code is where those changes need
to be implemneted here.
Fields need to be defined with their associate tables. For example, sandtotal is a field in chorizon table which needs to be defined as chorizon.sandotal_(r/l/h), where 
r stands for the representative value, l stands for low and h stands for high. At the moment fields from mapunit, component, muaggatt, and chorizon tables can be extracted.
}
\examples{
\dontrun{
 PEcAn.data.land::gSSURGO.Query(
   mukeys = 2747727,
   fields = c(
     "chorizon.cec7_r", "chorizon.sandtotal_r",
     "chorizon.silttotal_r","chorizon.claytotal_r",
     "chorizon.om_r","chorizon.hzdept_r","chorizon.frag3to10_r",
     "chorizon.dbovendry_r","chorizon.ph1to1h2o_r",
     "chorizon.cokey","chorizon.chkey"))
}
}
