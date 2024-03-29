% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bus-departs.R
\name{bus_departs}
\alias{bus_departs}
\title{Bus Schedule at Stop}
\format{
A tibble with 1 row per bus departure and 8 variables:
\describe{
\item{StopID}{7-digit regional ID which can be used in various bus-related}
\item{ScheduleTime}{Date and time (UTC) when the bus is scheduled to stop
at this location.}
\item{DirectionNum}{Denotes a binary direction (0 or 1) of the bus. There
is no specific mapping to direction, but a different value for the same
route signifies that the buses are traveling in opposite directions. Use
the \code{TripDirectionText} column to show the actual destination of the bus.}
\item{StartTime}{Scheduled start date and time (UTC) for this trip.}
\item{EndTime}{Scheduled end date and time (UTC) for this trip.}
\item{RouteID}{Bus route variant identifier (pattern). This variant can be
used in several other bus methods which accept variants. Note that
customers will never see anything other than the base route name, so
variants 10A, 10Av1, 10Av2, etc. will be displayed as 10A on the bus.}
\item{TripDirectionText}{General direction of the trip (e.g.: NORTH, SOUTH,
EAST, WEST).}
\item{TripHeadsign}{Destination of the bus.}
\item{TripID}{Trip identifier. This can be correlated with the data in our
bus schedule information as well as bus positions.}
}
}
\usage{
bus_departs(StopID, Date = NULL, api_key = wmata_key())
}
\arguments{
\item{StopID}{7-digit regional stop ID.}

\item{Date}{(Optional) Date for which to retrieve route and stop information.}

\item{api_key}{Subscription key which provides access to this API. Defaults
\code{Sys.getenv("WMATA_KEY")} via \code{\link[=wmata_key]{wmata_key()}}.}
}
\value{
Data frame containing scheduled arrival information.
}
\description{
Returns a set of buses scheduled at a stop for a given date.
}
\examples{
\dontrun{
bus_departs(1001195, Sys.Date())
}
}
\seealso{
\url{https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d6c/console}

Other Bus Route and Stop Methods: 
\code{\link{bus_path}()},
\code{\link{bus_position}()},
\code{\link{bus_routes}()},
\code{\link{bus_schedule}()},
\code{\link{bus_stops}()}
}
\concept{Bus Route and Stop Methods}
