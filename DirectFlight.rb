require 'xsd/qname'

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfScheduledFlightStruct
class ArrayOfScheduledFlightStruct < ::Array
  @@schema_type = "ScheduledFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["ScheduledFlightStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}DepartureStruct
class DepartureStruct
  @@schema_type = "DepartureStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]], ["departures", ["ArrayOfDepartureFlightStruct", XSD::QName.new(nil, "departures")]]]

  attr_accessor :next_offset
  attr_accessor :departures

  def initialize(next_offset = nil, departures = nil)
    @next_offset = next_offset
    @departures = departures
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfTrackStruct
class ArrayOfTrackStruct < ::Array
  @@schema_type = "TrackStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["TrackStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}TafStruct
class TafStruct
  @@schema_type = "TafStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["airport", ["SOAP::SOAPString", XSD::QName.new(nil, "airport")]], ["timeString", ["SOAP::SOAPString", XSD::QName.new(nil, "timeString")]], ["forecast", ["ArrayOfString", XSD::QName.new(nil, "forecast")]]]

  attr_accessor :airport
  attr_accessor :timeString
  attr_accessor :forecast

  def initialize(airport = nil, timeString = nil, forecast = nil)
    @airport = airport
    @timeString = timeString
    @forecast = forecast
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}FlightStruct
class FlightStruct
  @@schema_type = "FlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["ident", ["SOAP::SOAPString", XSD::QName.new(nil, "ident")]], ["aircrafttype", ["SOAP::SOAPString", XSD::QName.new(nil, "aircrafttype")]], ["filed_ete", ["SOAP::SOAPString", XSD::QName.new(nil, "filed_ete")]], ["filed_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "filed_time")]], ["filed_departuretime", ["SOAP::SOAPInt", XSD::QName.new(nil, "filed_departuretime")]], ["filed_airspeed_kts", ["SOAP::SOAPInt", XSD::QName.new(nil, "filed_airspeed_kts")]], ["filed_airspeed_mach", ["SOAP::SOAPString", XSD::QName.new(nil, "filed_airspeed_mach")]], ["filed_altitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "filed_altitude")]], ["route", ["SOAP::SOAPString", XSD::QName.new(nil, "route")]], ["actualdeparturetime", ["SOAP::SOAPInt", XSD::QName.new(nil, "actualdeparturetime")]], ["estimatedarrivaltime", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimatedarrivaltime")]], ["actualarrivaltime", ["SOAP::SOAPInt", XSD::QName.new(nil, "actualarrivaltime")]], ["diverted", ["SOAP::SOAPString", XSD::QName.new(nil, "diverted")]], ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]], ["destination", ["SOAP::SOAPString", XSD::QName.new(nil, "destination")]], ["originName", ["SOAP::SOAPString", XSD::QName.new(nil, "originName")]], ["originCity", ["SOAP::SOAPString", XSD::QName.new(nil, "originCity")]], ["destinationName", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationName")]], ["destinationCity", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationCity")]]]

  attr_accessor :ident
  attr_accessor :aircrafttype
  attr_accessor :filed_ete
  attr_accessor :filed_time
  attr_accessor :filed_departuretime
  attr_accessor :filed_airspeed_kts
  attr_accessor :filed_airspeed_mach
  attr_accessor :filed_altitude
  attr_accessor :route
  attr_accessor :actualdeparturetime
  attr_accessor :estimatedarrivaltime
  attr_accessor :actualarrivaltime
  attr_accessor :diverted
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :originName
  attr_accessor :originCity
  attr_accessor :destinationName
  attr_accessor :destinationCity

  def initialize(ident = nil, aircrafttype = nil, filed_ete = nil, filed_time = nil, filed_departuretime = nil, filed_airspeed_kts = nil, filed_airspeed_mach = nil, filed_altitude = nil, route = nil, actualdeparturetime = nil, estimatedarrivaltime = nil, actualarrivaltime = nil, diverted = nil, origin = nil, destination = nil, originName = nil, originCity = nil, destinationName = nil, destinationCity = nil)
    @ident = ident
    @aircrafttype = aircrafttype
    @filed_ete = filed_ete
    @filed_time = filed_time
    @filed_departuretime = filed_departuretime
    @filed_airspeed_kts = filed_airspeed_kts
    @filed_airspeed_mach = filed_airspeed_mach
    @filed_altitude = filed_altitude
    @route = route
    @actualdeparturetime = actualdeparturetime
    @estimatedarrivaltime = estimatedarrivaltime
    @actualarrivaltime = actualarrivaltime
    @diverted = diverted
    @origin = origin
    @destination = destination
    @originName = originName
    @originCity = originCity
    @destinationName = destinationName
    @destinationCity = destinationCity
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ScheduledFlightStruct
class ScheduledFlightStruct
  @@schema_type = "ScheduledFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["ident", ["SOAP::SOAPString", XSD::QName.new(nil, "ident")]], ["aircrafttype", ["SOAP::SOAPString", XSD::QName.new(nil, "aircrafttype")]], ["filed_departuretime", ["SOAP::SOAPInt", XSD::QName.new(nil, "filed_departuretime")]], ["estimatedarrivaltime", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimatedarrivaltime")]], ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]], ["destination", ["SOAP::SOAPString", XSD::QName.new(nil, "destination")]], ["originName", ["SOAP::SOAPString", XSD::QName.new(nil, "originName")]], ["originCity", ["SOAP::SOAPString", XSD::QName.new(nil, "originCity")]], ["destinationName", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationName")]], ["destinationCity", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationCity")]]]

  attr_accessor :ident
  attr_accessor :aircrafttype
  attr_accessor :filed_departuretime
  attr_accessor :estimatedarrivaltime
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :originName
  attr_accessor :originCity
  attr_accessor :destinationName
  attr_accessor :destinationCity

  def initialize(ident = nil, aircrafttype = nil, filed_departuretime = nil, estimatedarrivaltime = nil, origin = nil, destination = nil, originName = nil, originCity = nil, destinationName = nil, destinationCity = nil)
    @ident = ident
    @aircrafttype = aircrafttype
    @filed_departuretime = filed_departuretime
    @estimatedarrivaltime = estimatedarrivaltime
    @origin = origin
    @destination = destination
    @originName = originName
    @originCity = originCity
    @destinationName = destinationName
    @destinationCity = destinationCity
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}EnrouteStruct
class EnrouteStruct
  @@schema_type = "EnrouteStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]], ["enroute", ["ArrayOfEnrouteFlightStruct", XSD::QName.new(nil, "enroute")]]]

  attr_accessor :next_offset
  attr_accessor :enroute

  def initialize(next_offset = nil, enroute = nil)
    @next_offset = next_offset
    @enroute = enroute
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfRoutesBetweenAirportsStruct
class ArrayOfRoutesBetweenAirportsStruct < ::Array
  @@schema_type = "RoutesBetweenAirportsStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["RoutesBetweenAirportsStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}AirportInfoStruct
class AirportInfoStruct
  @@schema_type = "AirportInfoStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]], ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]], ["longitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "longitude")]], ["latitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "latitude")]], ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")]]]

  attr_accessor :name
  attr_accessor :location
  attr_accessor :longitude
  attr_accessor :latitude
  attr_accessor :timezone

  def initialize(name = nil, location = nil, longitude = nil, latitude = nil, timezone = nil)
    @name = name
    @location = location
    @longitude = longitude
    @latitude = latitude
    @timezone = timezone
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}TrackStruct
class TrackStruct
  @@schema_type = "TrackStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["timestamp", ["SOAP::SOAPInt", XSD::QName.new(nil, "timestamp")]], ["latitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "latitude")]], ["longitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "longitude")]], ["groundspeed", ["SOAP::SOAPInt", XSD::QName.new(nil, "groundspeed")]], ["altitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "altitude")]], ["altitudeStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "altitudeStatus")]], ["updateType", ["SOAP::SOAPString", XSD::QName.new(nil, "updateType")]], ["altitudeChange", ["SOAP::SOAPString", XSD::QName.new(nil, "altitudeChange")]]]

  attr_accessor :timestamp
  attr_accessor :latitude
  attr_accessor :longitude
  attr_accessor :groundspeed
  attr_accessor :altitude
  attr_accessor :altitudeStatus
  attr_accessor :updateType
  attr_accessor :altitudeChange

  def initialize(timestamp = nil, latitude = nil, longitude = nil, groundspeed = nil, altitude = nil, altitudeStatus = nil, updateType = nil, altitudeChange = nil)
    @timestamp = timestamp
    @latitude = latitude
    @longitude = longitude
    @groundspeed = groundspeed
    @altitude = altitude
    @altitudeStatus = altitudeStatus
    @updateType = updateType
    @altitudeChange = altitudeChange
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrivalStruct
class ArrivalStruct
  @@schema_type = "ArrivalStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]], ["arrivals", ["ArrayOfArrivalFlightStruct", XSD::QName.new(nil, "arrivals")]]]

  attr_accessor :next_offset
  attr_accessor :arrivals

  def initialize(next_offset = nil, arrivals = nil)
    @next_offset = next_offset
    @arrivals = arrivals
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ZipcodeInfoStruct
class ZipcodeInfoStruct
  @@schema_type = "ZipcodeInfoStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["latitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "latitude")]], ["longitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "longitude")]], ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")]], ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]], ["county", ["SOAP::SOAPString", XSD::QName.new(nil, "county")]]]

  attr_accessor :latitude
  attr_accessor :longitude
  attr_accessor :city
  attr_accessor :state
  attr_accessor :county

  def initialize(latitude = nil, longitude = nil, city = nil, state = nil, county = nil)
    @latitude = latitude
    @longitude = longitude
    @city = city
    @state = state
    @county = county
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfEnrouteFlightStruct
class ArrayOfEnrouteFlightStruct < ::Array
  @@schema_type = "EnrouteFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["EnrouteFlightStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}AircraftSuffixDescriptionStruct
class AircraftSuffixDescriptionStruct
  @@schema_type = "AircraftSuffixDescriptionStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]]

  attr_accessor :description

  def initialize(description = nil)
    @description = description
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}RoutesBetweenAirportsStruct
class RoutesBetweenAirportsStruct
  @@schema_type = "RoutesBetweenAirportsStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")]], ["route", ["SOAP::SOAPString", XSD::QName.new(nil, "route")]], ["filedAltitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "filedAltitude")]]]

  attr_accessor :count
  attr_accessor :route
  attr_accessor :filedAltitude

  def initialize(count = nil, route = nil, filedAltitude = nil)
    @count = count
    @route = route
    @filedAltitude = filedAltitude
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}MetarStruct
class MetarStruct
  @@schema_type = "MetarStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]], ["timeString", ["SOAP::SOAPString", XSD::QName.new(nil, "timeString")]], ["reading", ["SOAP::SOAPString", XSD::QName.new(nil, "reading")]]]

  attr_accessor :name
  attr_accessor :timeString
  attr_accessor :reading

  def initialize(name = nil, timeString = nil, reading = nil)
    @name = name
    @timeString = timeString
    @reading = reading
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}InFlightAircraftStruct
class InFlightAircraftStruct
  @@schema_type = "InFlightAircraftStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["faFlightID", ["SOAP::SOAPString", XSD::QName.new(nil, "faFlightID")]], ["ident", ["SOAP::SOAPString", XSD::QName.new(nil, "ident")]], ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")]], ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]], ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")]], ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]], ["destination", ["SOAP::SOAPString", XSD::QName.new(nil, "destination")]], ["timeout", ["SOAP::SOAPString", XSD::QName.new(nil, "timeout")]], ["timestamp", ["SOAP::SOAPInt", XSD::QName.new(nil, "timestamp")]], ["departureTime", ["SOAP::SOAPInt", XSD::QName.new(nil, "departureTime")]], ["firstPositionTime", ["SOAP::SOAPInt", XSD::QName.new(nil, "firstPositionTime")]], ["arrivalTime", ["SOAP::SOAPInt", XSD::QName.new(nil, "arrivalTime")]], ["longitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "longitude")]], ["latitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "latitude")]], ["lowLongitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "lowLongitude")]], ["lowLatitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "lowLatitude")]], ["highLongitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "highLongitude")]], ["highLatitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "highLatitude")]], ["groundspeed", ["SOAP::SOAPInt", XSD::QName.new(nil, "groundspeed")]], ["altitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "altitude")]], ["heading", ["SOAP::SOAPInt", XSD::QName.new(nil, "heading")]], ["altitudeStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "altitudeStatus")]], ["updateType", ["SOAP::SOAPString", XSD::QName.new(nil, "updateType")]], ["altitudeChange", ["SOAP::SOAPString", XSD::QName.new(nil, "altitudeChange")]]]

  attr_accessor :faFlightID
  attr_accessor :ident
  attr_accessor :prefix
  attr_accessor :type
  attr_accessor :suffix
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :timeout
  attr_accessor :timestamp
  attr_accessor :departureTime
  attr_accessor :firstPositionTime
  attr_accessor :arrivalTime
  attr_accessor :longitude
  attr_accessor :latitude
  attr_accessor :lowLongitude
  attr_accessor :lowLatitude
  attr_accessor :highLongitude
  attr_accessor :highLatitude
  attr_accessor :groundspeed
  attr_accessor :altitude
  attr_accessor :heading
  attr_accessor :altitudeStatus
  attr_accessor :updateType
  attr_accessor :altitudeChange

  def initialize(faFlightID = nil, ident = nil, prefix = nil, type = nil, suffix = nil, origin = nil, destination = nil, timeout = nil, timestamp = nil, departureTime = nil, firstPositionTime = nil, arrivalTime = nil, longitude = nil, latitude = nil, lowLongitude = nil, lowLatitude = nil, highLongitude = nil, highLatitude = nil, groundspeed = nil, altitude = nil, heading = nil, altitudeStatus = nil, updateType = nil, altitudeChange = nil)
    @faFlightID = faFlightID
    @ident = ident
    @prefix = prefix
    @type = type
    @suffix = suffix
    @origin = origin
    @destination = destination
    @timeout = timeout
    @timestamp = timestamp
    @departureTime = departureTime
    @firstPositionTime = firstPositionTime
    @arrivalTime = arrivalTime
    @longitude = longitude
    @latitude = latitude
    @lowLongitude = lowLongitude
    @lowLatitude = lowLatitude
    @highLongitude = highLongitude
    @highLatitude = highLatitude
    @groundspeed = groundspeed
    @altitude = altitude
    @heading = heading
    @altitudeStatus = altitudeStatus
    @updateType = updateType
    @altitudeChange = altitudeChange
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfFlightStruct
class ArrayOfFlightStruct < ::Array
  @@schema_type = "FlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["FlightStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}EnrouteFlightStruct
class EnrouteFlightStruct
  @@schema_type = "EnrouteFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["ident", ["SOAP::SOAPString", XSD::QName.new(nil, "ident")]], ["aircrafttype", ["SOAP::SOAPString", XSD::QName.new(nil, "aircrafttype")]], ["actualdeparturetime", ["SOAP::SOAPInt", XSD::QName.new(nil, "actualdeparturetime")]], ["estimatedarrivaltime", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimatedarrivaltime")]], ["filed_departuretime", ["SOAP::SOAPInt", XSD::QName.new(nil, "filed_departuretime")]], ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]], ["destination", ["SOAP::SOAPString", XSD::QName.new(nil, "destination")]], ["originName", ["SOAP::SOAPString", XSD::QName.new(nil, "originName")]], ["originCity", ["SOAP::SOAPString", XSD::QName.new(nil, "originCity")]], ["destinationName", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationName")]], ["destinationCity", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationCity")]]]

  attr_accessor :ident
  attr_accessor :aircrafttype
  attr_accessor :actualdeparturetime
  attr_accessor :estimatedarrivaltime
  attr_accessor :filed_departuretime
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :originName
  attr_accessor :originCity
  attr_accessor :destinationName
  attr_accessor :destinationCity

  def initialize(ident = nil, aircrafttype = nil, actualdeparturetime = nil, estimatedarrivaltime = nil, filed_departuretime = nil, origin = nil, destination = nil, originName = nil, originCity = nil, destinationName = nil, destinationCity = nil)
    @ident = ident
    @aircrafttype = aircrafttype
    @actualdeparturetime = actualdeparturetime
    @estimatedarrivaltime = estimatedarrivaltime
    @filed_departuretime = filed_departuretime
    @origin = origin
    @destination = destination
    @originName = originName
    @originCity = originCity
    @destinationName = destinationName
    @destinationCity = destinationCity
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ScheduledStruct
class ScheduledStruct
  @@schema_type = "ScheduledStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]], ["scheduled", ["ArrayOfScheduledFlightStruct", XSD::QName.new(nil, "scheduled")]]]

  attr_accessor :next_offset
  attr_accessor :scheduled

  def initialize(next_offset = nil, scheduled = nil)
    @next_offset = next_offset
    @scheduled = scheduled
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}InFlightStruct
class InFlightStruct
  @@schema_type = "InFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]], ["aircraft", ["ArrayOfInFlightAircraftStruct", XSD::QName.new(nil, "aircraft")]]]

  attr_accessor :next_offset
  attr_accessor :aircraft

  def initialize(next_offset = nil, aircraft = nil)
    @next_offset = next_offset
    @aircraft = aircraft
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}countAirportOperationsStruct
class CountAirportOperationsStruct
  @@schema_type = "countAirportOperationsStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["enroute", ["SOAP::SOAPInt", XSD::QName.new(nil, "enroute")]], ["departed", ["SOAP::SOAPInt", XSD::QName.new(nil, "departed")]], ["scheduled_departures", ["SOAP::SOAPInt", XSD::QName.new(nil, "scheduled_departures")]], ["scheduled_arrivals", ["SOAP::SOAPInt", XSD::QName.new(nil, "scheduled_arrivals")]]]

  attr_accessor :enroute
  attr_accessor :departed
  attr_accessor :scheduled_departures
  attr_accessor :scheduled_arrivals

  def initialize(enroute = nil, departed = nil, scheduled_departures = nil, scheduled_arrivals = nil)
    @enroute = enroute
    @departed = departed
    @scheduled_departures = scheduled_departures
    @scheduled_arrivals = scheduled_arrivals
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfDepartureFlightStruct
class ArrayOfDepartureFlightStruct < ::Array
  @@schema_type = "DepartureFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["DepartureFlightStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfArrivalFlightStruct
class ArrayOfArrivalFlightStruct < ::Array
  @@schema_type = "ArrivalFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["ArrivalFlightStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}TailOwnerStruct
class TailOwnerStruct
  @@schema_type = "TailOwnerStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")]], ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]], ["location2", ["SOAP::SOAPString", XSD::QName.new(nil, "location2")]], ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]]]

  attr_accessor :owner
  attr_accessor :location
  attr_accessor :location2
  attr_accessor :website

  def initialize(owner = nil, location = nil, location2 = nil, website = nil)
    @owner = owner
    @location = location
    @location2 = location2
    @website = website
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfInFlightAircraftStruct
class ArrayOfInFlightAircraftStruct < ::Array
  @@schema_type = "InFlightAircraftStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["item", ["InFlightAircraftStruct", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrayOfString
class ArrayOfString < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["item", ["String", XSD::QName.new(nil, "item")]]]
end

# {http://directflight.flightaware.com/soap/DirectFlight}DepartureFlightStruct
class DepartureFlightStruct
  @@schema_type = "DepartureFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["ident", ["SOAP::SOAPString", XSD::QName.new(nil, "ident")]], ["aircrafttype", ["SOAP::SOAPString", XSD::QName.new(nil, "aircrafttype")]], ["actualdeparturetime", ["SOAP::SOAPInt", XSD::QName.new(nil, "actualdeparturetime")]], ["estimatedarrivaltime", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimatedarrivaltime")]], ["actualarrivaltime", ["SOAP::SOAPInt", XSD::QName.new(nil, "actualarrivaltime")]], ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]], ["destination", ["SOAP::SOAPString", XSD::QName.new(nil, "destination")]], ["originName", ["SOAP::SOAPString", XSD::QName.new(nil, "originName")]], ["originCity", ["SOAP::SOAPString", XSD::QName.new(nil, "originCity")]], ["destinationName", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationName")]], ["destinationCity", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationCity")]]]

  attr_accessor :ident
  attr_accessor :aircrafttype
  attr_accessor :actualdeparturetime
  attr_accessor :estimatedarrivaltime
  attr_accessor :actualarrivaltime
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :originName
  attr_accessor :originCity
  attr_accessor :destinationName
  attr_accessor :destinationCity

  def initialize(ident = nil, aircrafttype = nil, actualdeparturetime = nil, estimatedarrivaltime = nil, actualarrivaltime = nil, origin = nil, destination = nil, originName = nil, originCity = nil, destinationName = nil, destinationCity = nil)
    @ident = ident
    @aircrafttype = aircrafttype
    @actualdeparturetime = actualdeparturetime
    @estimatedarrivaltime = estimatedarrivaltime
    @actualarrivaltime = actualarrivaltime
    @origin = origin
    @destination = destination
    @originName = originName
    @originCity = originCity
    @destinationName = destinationName
    @destinationCity = destinationCity
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}AircraftTypeStruct
class AircraftTypeStruct
  @@schema_type = "AircraftTypeStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["manufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "manufacturer")]], ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]], ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]]

  attr_accessor :manufacturer
  attr_accessor :type
  attr_accessor :description

  def initialize(manufacturer = nil, type = nil, description = nil)
    @manufacturer = manufacturer
    @type = type
    @description = description
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}ArrivalFlightStruct
class ArrivalFlightStruct
  @@schema_type = "ArrivalFlightStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["ident", ["SOAP::SOAPString", XSD::QName.new(nil, "ident")]], ["aircrafttype", ["SOAP::SOAPString", XSD::QName.new(nil, "aircrafttype")]], ["actualdeparturetime", ["SOAP::SOAPInt", XSD::QName.new(nil, "actualdeparturetime")]], ["actualarrivaltime", ["SOAP::SOAPInt", XSD::QName.new(nil, "actualarrivaltime")]], ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]], ["destination", ["SOAP::SOAPString", XSD::QName.new(nil, "destination")]], ["originName", ["SOAP::SOAPString", XSD::QName.new(nil, "originName")]], ["originCity", ["SOAP::SOAPString", XSD::QName.new(nil, "originCity")]], ["destinationName", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationName")]], ["destinationCity", ["SOAP::SOAPString", XSD::QName.new(nil, "destinationCity")]]]

  attr_accessor :ident
  attr_accessor :aircrafttype
  attr_accessor :actualdeparturetime
  attr_accessor :actualarrivaltime
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :originName
  attr_accessor :originCity
  attr_accessor :destinationName
  attr_accessor :destinationCity

  def initialize(ident = nil, aircrafttype = nil, actualdeparturetime = nil, actualarrivaltime = nil, origin = nil, destination = nil, originName = nil, originCity = nil, destinationName = nil, destinationCity = nil)
    @ident = ident
    @aircrafttype = aircrafttype
    @actualdeparturetime = actualdeparturetime
    @actualarrivaltime = actualarrivaltime
    @origin = origin
    @destination = destination
    @originName = originName
    @originCity = originCity
    @destinationName = destinationName
    @destinationCity = destinationCity
  end
end

# {http://directflight.flightaware.com/soap/DirectFlight}FlightInfoStruct
class FlightInfoStruct
  @@schema_type = "FlightInfoStruct"
  @@schema_ns = "http://directflight.flightaware.com/soap/DirectFlight"
  @@schema_element = [["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]], ["flights", ["ArrayOfFlightStruct", XSD::QName.new(nil, "flights")]]]

  attr_accessor :next_offset
  attr_accessor :flights

  def initialize(next_offset = nil, flights = nil)
    @next_offset = next_offset
    @flights = flights
  end
end
