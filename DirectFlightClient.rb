#!/usr/bin/env ruby
require 'DirectFlightDriver.rb'

endpoint_url = ARGV.shift
obj = DirectFlightSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   FlightInfo(ident, howMany)
#
# ARGS
#   ident           String - {http://www.w3.org/2001/XMLSchema}string
#   howMany         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        FlightInfoStruct - {http://directflight.flightaware.com/soap/DirectFlight}FlightInfoStruct
#
ident = howMany = nil
puts obj.flightInfo(ident, howMany)

# SYNOPSIS
#   InFlightInfo(ident)
#
# ARGS
#   ident           String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        InFlightAircraftStruct - {http://directflight.flightaware.com/soap/DirectFlight}InFlightAircraftStruct
#
ident = nil
puts obj.inFlightInfo(ident)

# SYNOPSIS
#   GetLastTrack(ident)
#
# ARGS
#   ident           String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ArrayOfTrackStruct - {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfTrackStruct
#
ident = nil
puts obj.getLastTrack(ident)

# SYNOPSIS
#   Search(query, howMany, offset)
#
# ARGS
#   query           String - {http://www.w3.org/2001/XMLSchema}string
#   howMany         Int - {http://www.w3.org/2001/XMLSchema}int
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        InFlightStruct - {http://directflight.flightaware.com/soap/DirectFlight}InFlightStruct
#
query = howMany = offset = nil
puts obj.search(query, howMany, offset)

# SYNOPSIS
#   SearchCount(query)
#
# ARGS
#   query           String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
query = nil
puts obj.searchCount(query)

# SYNOPSIS
#   Scheduled(airport, howMany, filter, offset)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#   howMany         Int - {http://www.w3.org/2001/XMLSchema}int
#   filter          String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ScheduledStruct - {http://directflight.flightaware.com/soap/DirectFlight}ScheduledStruct
#
airport = howMany = filter = offset = nil
puts obj.scheduled(airport, howMany, filter, offset)

# SYNOPSIS
#   Departed(airport, howMany, filter, offset)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#   howMany         Int - {http://www.w3.org/2001/XMLSchema}int
#   filter          String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        DepartureStruct - {http://directflight.flightaware.com/soap/DirectFlight}DepartureStruct
#
airport = howMany = filter = offset = nil
puts obj.departed(airport, howMany, filter, offset)

# SYNOPSIS
#   Enroute(airport, howMany, filter, offset)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#   howMany         Int - {http://www.w3.org/2001/XMLSchema}int
#   filter          String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        EnrouteStruct - {http://directflight.flightaware.com/soap/DirectFlight}EnrouteStruct
#
airport = howMany = filter = offset = nil
puts obj.enroute(airport, howMany, filter, offset)

# SYNOPSIS
#   FleetArrived(fleet, howMany, offset)
#
# ARGS
#   fleet           String - {http://www.w3.org/2001/XMLSchema}string
#   howMany         Int - {http://www.w3.org/2001/XMLSchema}int
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrivalStruct - {http://directflight.flightaware.com/soap/DirectFlight}ArrivalStruct
#
fleet = howMany = offset = nil
puts obj.fleetArrived(fleet, howMany, offset)

# SYNOPSIS
#   Arrived(airport, howMany, filter, offset)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#   howMany         Int - {http://www.w3.org/2001/XMLSchema}int
#   filter          String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrivalStruct - {http://directflight.flightaware.com/soap/DirectFlight}ArrivalStruct
#
airport = howMany = filter = offset = nil
puts obj.arrived(airport, howMany, filter, offset)

# SYNOPSIS
#   AllAirports
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        ArrayOfString - {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfString
#

puts obj.allAirports

# SYNOPSIS
#   ZipcodeInfo(zipcode)
#
# ARGS
#   zipcode         String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ZipcodeInfoStruct - {http://directflight.flightaware.com/soap/DirectFlight}ZipcodeInfoStruct
#
zipcode = nil
puts obj.zipcodeInfo(zipcode)

# SYNOPSIS
#   AirportInfo(airportCode)
#
# ARGS
#   airportCode     String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        AirportInfoStruct - {http://directflight.flightaware.com/soap/DirectFlight}AirportInfoStruct
#
airportCode = nil
puts obj.airportInfo(airportCode)

# SYNOPSIS
#   TailOwner(ident)
#
# ARGS
#   ident           String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        TailOwnerStruct - {http://directflight.flightaware.com/soap/DirectFlight}TailOwnerStruct
#
ident = nil
puts obj.tailOwner(ident)

# SYNOPSIS
#   RoutesBetweenAirports(origin, destination)
#
# ARGS
#   origin          String - {http://www.w3.org/2001/XMLSchema}string
#   destination     String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ArrayOfRoutesBetweenAirportsStruct - {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfRoutesBetweenAirportsStruct
#
origin = destination = nil
puts obj.routesBetweenAirports(origin, destination)

# SYNOPSIS
#   AircraftType(type)
#
# ARGS
#   type            String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        AircraftTypeStruct - {http://directflight.flightaware.com/soap/DirectFlight}AircraftTypeStruct
#
type = nil
puts obj.aircraftType(type)

# SYNOPSIS
#   countAirportOperations(airport)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        CountAirportOperationsStruct - {http://directflight.flightaware.com/soap/DirectFlight}countAirportOperationsStruct
#
airport = nil
puts obj.countAirportOperations(airport)

# SYNOPSIS
#   blockIdentCheck(ident)
#
# ARGS
#   ident           String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
ident = nil
puts obj.blockIdentCheck(ident)

# SYNOPSIS
#   METAR(airport)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        String - {http://www.w3.org/2001/XMLSchema}string
#
airport = nil
puts obj.mETAR(airport)

# SYNOPSIS
#   TAF(airport)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        String - {http://www.w3.org/2001/XMLSchema}string
#
airport = nil
puts obj.tAF(airport)

# SYNOPSIS
#   NTAF(airport)
#
# ARGS
#   airport         String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        TafStruct - {http://directflight.flightaware.com/soap/DirectFlight}TafStruct
#
airport = nil
puts obj.nTAF(airport)

# SYNOPSIS
#   LatLongsToDistance(lat1, lon1, lat2, lon2)
#
# ARGS
#   lat1            Float - {http://www.w3.org/2001/XMLSchema}float
#   lon1            Float - {http://www.w3.org/2001/XMLSchema}float
#   lat2            Float - {http://www.w3.org/2001/XMLSchema}float
#   lon2            Float - {http://www.w3.org/2001/XMLSchema}float
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
lat1 = lon1 = lat2 = lon2 = nil
puts obj.latLongsToDistance(lat1, lon1, lat2, lon2)

# SYNOPSIS
#   LatLongsToHeading(lat1, lon1, lat2, lon2)
#
# ARGS
#   lat1            Float - {http://www.w3.org/2001/XMLSchema}float
#   lon1            Float - {http://www.w3.org/2001/XMLSchema}float
#   lat2            Float - {http://www.w3.org/2001/XMLSchema}float
#   lon2            Float - {http://www.w3.org/2001/XMLSchema}float
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
lat1 = lon1 = lat2 = lon2 = nil
puts obj.latLongsToHeading(lat1, lon1, lat2, lon2)

# SYNOPSIS
#   MapFlight_Beta(ident, mapHeight, mapWidth)
#
# ARGS
#   ident           String - {http://www.w3.org/2001/XMLSchema}string
#   mapHeight       Int - {http://www.w3.org/2001/XMLSchema}int
#   mapWidth        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        String - {http://www.w3.org/2001/XMLSchema}string
#
ident = mapHeight = mapWidth = nil
puts obj.mapFlight_Beta(ident, mapHeight, mapWidth)


