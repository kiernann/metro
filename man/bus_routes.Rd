% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bus-routes.R
\name{bus_routes}
\alias{bus_routes}
\title{Bus Routes}
\format{
A tibble with 3 variables and one row per route variant:
\describe{
\item{RouteID}{Unique identifier for a given route variant. Can be used in
various other bus-related methods.}
\item{Name}{Descriptive name of the route variant.}
\item{LineDescription}{Denotes the route variant's grouping - lines are a
combination of routes which lie in the same corridor and which have
significant portions of their paths along the same roadways.}
}
}
\usage{
bus_routes(api_key = wmata_key())
}
\arguments{
\item{api_key}{Subscription key which provides access to this API. Defaults
\code{Sys.getenv("WMATA_KEY")} via \code{\link[=wmata_key]{wmata_key()}}.}
}
\value{
Data frame containing route variant information
}
\description{
Returns a list of all bus route variants (patterns). For example, the 10A and
10Av1 are the same route, but may stop at slightly different locations.
}
\examples{
\dontrun{
bus_routes()
}
}
\seealso{
\url{https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d6a}

Other Bus Route and Stop Methods: 
\code{\link{bus_departs}()},
\code{\link{bus_path}()},
\code{\link{bus_position}()},
\code{\link{bus_schedule}()},
\code{\link{bus_stops}()}
}
\concept{Bus Route and Stop Methods}
