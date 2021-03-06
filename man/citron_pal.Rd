% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scales.R
\name{citron_pal}
\alias{citron_pal}
\title{Citron palette with ramped colours.
Adapted from ochRe}
\usage{
citron_pal(palette = "citron_qual", alpha = 1, reverse = FALSE)
}
\arguments{
\item{palette}{Choose from 'citron_palettes' list}

\item{alpha}{transparency}

\item{reverse}{If TRUE, the direction of the colours is reversed.}
}
\description{
Citron palette with ramped colours.
Adapted from ochRe
}
\examples{
scales::show_col(citron_pal()(10))

filled.contour(volcano,color.palette = citron_pal(), asp=1)

}
