require 'DirectFlight.rb'

require 'soap/rpc/driver'

class DirectFlightSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://directflight.flightaware.com:80/soap/DirectFlight/go"
  MappingRegistry = ::SOAP::Mapping::Registry.new

  MappingRegistry.set(
    FlightInfoStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "FlightInfoStruct") }
  )
  MappingRegistry.set(
    ArrayOfFlightStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "FlightStruct") }
  )
  MappingRegistry.set(
    InFlightAircraftStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "InFlightAircraftStruct") }
  )
  MappingRegistry.set(
    ArrayOfTrackStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "TrackStruct") }
  )
  MappingRegistry.set(
    InFlightStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "InFlightStruct") }
  )
  MappingRegistry.set(
    ArrayOfInFlightAircraftStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "InFlightAircraftStruct") }
  )
  MappingRegistry.set(
    ScheduledStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "ScheduledStruct") }
  )
  MappingRegistry.set(
    ArrayOfScheduledFlightStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "ScheduledFlightStruct") }
  )
  MappingRegistry.set(
    DepartureStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "DepartureStruct") }
  )
  MappingRegistry.set(
    ArrayOfDepartureFlightStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "DepartureFlightStruct") }
  )
  MappingRegistry.set(
    EnrouteStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "EnrouteStruct") }
  )
  MappingRegistry.set(
    ArrayOfEnrouteFlightStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "EnrouteFlightStruct") }
  )
  MappingRegistry.set(
    ArrivalStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "ArrivalStruct") }
  )
  MappingRegistry.set(
    ArrayOfArrivalFlightStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "ArrivalFlightStruct") }
  )
  MappingRegistry.set(
    ArrayOfString,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )
  MappingRegistry.set(
    ZipcodeInfoStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "ZipcodeInfoStruct") }
  )
  MappingRegistry.set(
    AirportInfoStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "AirportInfoStruct") }
  )
  MappingRegistry.set(
    TailOwnerStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "TailOwnerStruct") }
  )
  MappingRegistry.set(
    ArrayOfRoutesBetweenAirportsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "RoutesBetweenAirportsStruct") }
  )
  MappingRegistry.set(
    AircraftTypeStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "AircraftTypeStruct") }
  )
  MappingRegistry.set(
    CountAirportOperationsStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "countAirportOperationsStruct") }
  )
  MappingRegistry.set(
    TafStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "TafStruct") }
  )
  MappingRegistry.set(
    FlightStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "FlightStruct") }
  )
  MappingRegistry.set(
    TrackStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "TrackStruct") }
  )
  MappingRegistry.set(
    ScheduledFlightStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "ScheduledFlightStruct") }
  )
  MappingRegistry.set(
    DepartureFlightStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "DepartureFlightStruct") }
  )
  MappingRegistry.set(
    EnrouteFlightStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "EnrouteFlightStruct") }
  )
  MappingRegistry.set(
    ArrivalFlightStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "ArrivalFlightStruct") }
  )
  MappingRegistry.set(
    RoutesBetweenAirportsStruct,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("http://directflight.flightaware.com/soap/DirectFlight", "RoutesBetweenAirportsStruct") }
  )

  Methods = [
    [ XSD::QName.new("FlightAwareDirectFlight", "FlightInfo"),
      "FlightAwareDirectFlight",
      "flightInfo",
      [ ["in", "ident", ["::SOAP::SOAPString"]],
        ["in", "howMany", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["FlightInfoStruct", "http://directflight.flightaware.com/soap/DirectFlight", "FlightInfoStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "InFlightInfo"),
      "FlightAwareDirectFlight",
      "inFlightInfo",
      [ ["in", "ident", ["::SOAP::SOAPString"]],
        ["retval", "return", ["InFlightAircraftStruct", "http://directflight.flightaware.com/soap/DirectFlight", "InFlightAircraftStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "GetLastTrack"),
      "FlightAwareDirectFlight",
      "getLastTrack",
      [ ["in", "ident", ["::SOAP::SOAPString"]],
        ["retval", "return", ["TrackStruct[]", "http://directflight.flightaware.com/soap/DirectFlight", "TrackStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "Search"),
      "FlightAwareDirectFlight",
      "search",
      [ ["in", "query", ["::SOAP::SOAPString"]],
        ["in", "howMany", ["::SOAP::SOAPInt"]],
        ["in", "offset", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["InFlightStruct", "http://directflight.flightaware.com/soap/DirectFlight", "InFlightStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "SearchCount"),
      "FlightAwareDirectFlight",
      "searchCount",
      [ ["in", "query", ["::SOAP::SOAPString"]],
        ["retval", "return", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "Scheduled"),
      "FlightAwareDirectFlight",
      "scheduled",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["in", "howMany", ["::SOAP::SOAPInt"]],
        ["in", "filter", ["::SOAP::SOAPString"]],
        ["in", "offset", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["ScheduledStruct", "http://directflight.flightaware.com/soap/DirectFlight", "ScheduledStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "Departed"),
      "FlightAwareDirectFlight",
      "departed",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["in", "howMany", ["::SOAP::SOAPInt"]],
        ["in", "filter", ["::SOAP::SOAPString"]],
        ["in", "offset", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["DepartureStruct", "http://directflight.flightaware.com/soap/DirectFlight", "DepartureStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "Enroute"),
      "FlightAwareDirectFlight",
      "enroute",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["in", "howMany", ["::SOAP::SOAPInt"]],
        ["in", "filter", ["::SOAP::SOAPString"]],
        ["in", "offset", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["EnrouteStruct", "http://directflight.flightaware.com/soap/DirectFlight", "EnrouteStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "FleetArrived"),
      "FlightAwareDirectFlight",
      "fleetArrived",
      [ ["in", "fleet", ["::SOAP::SOAPString"]],
        ["in", "howMany", ["::SOAP::SOAPInt"]],
        ["in", "offset", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["ArrivalStruct", "http://directflight.flightaware.com/soap/DirectFlight", "ArrivalStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "Arrived"),
      "FlightAwareDirectFlight",
      "arrived",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["in", "howMany", ["::SOAP::SOAPInt"]],
        ["in", "filter", ["::SOAP::SOAPString"]],
        ["in", "offset", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["ArrivalStruct", "http://directflight.flightaware.com/soap/DirectFlight", "ArrivalStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "AllAirports"),
      "FlightAwareDirectFlight",
      "allAirports",
      [ ["retval", "return", ["String[]", "http://www.w3.org/2001/XMLSchema", "string"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "ZipcodeInfo"),
      "FlightAwareDirectFlight",
      "zipcodeInfo",
      [ ["in", "zipcode", ["::SOAP::SOAPString"]],
        ["retval", "return", ["ZipcodeInfoStruct", "http://directflight.flightaware.com/soap/DirectFlight", "ZipcodeInfoStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "AirportInfo"),
      "FlightAwareDirectFlight",
      "airportInfo",
      [ ["in", "airportCode", ["::SOAP::SOAPString"]],
        ["retval", "return", ["AirportInfoStruct", "http://directflight.flightaware.com/soap/DirectFlight", "AirportInfoStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "TailOwner"),
      "FlightAwareDirectFlight",
      "tailOwner",
      [ ["in", "ident", ["::SOAP::SOAPString"]],
        ["retval", "return", ["TailOwnerStruct", "http://directflight.flightaware.com/soap/DirectFlight", "TailOwnerStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "RoutesBetweenAirports"),
      "FlightAwareDirectFlight",
      "routesBetweenAirports",
      [ ["in", "origin", ["::SOAP::SOAPString"]],
        ["in", "destination", ["::SOAP::SOAPString"]],
        ["retval", "return", ["RoutesBetweenAirportsStruct[]", "http://directflight.flightaware.com/soap/DirectFlight", "RoutesBetweenAirportsStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "AircraftType"),
      "FlightAwareDirectFlight",
      "aircraftType",
      [ ["in", "type", ["::SOAP::SOAPString"]],
        ["retval", "return", ["AircraftTypeStruct", "http://directflight.flightaware.com/soap/DirectFlight", "AircraftTypeStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "countAirportOperations"),
      "FlightAwareDirectFlight",
      "countAirportOperations",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["retval", "return", ["CountAirportOperationsStruct", "http://directflight.flightaware.com/soap/DirectFlight", "countAirportOperationsStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "blockIdentCheck"),
      "FlightAwareDirectFlight",
      "blockIdentCheck",
      [ ["in", "ident", ["::SOAP::SOAPString"]],
        ["retval", "return", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "METAR"),
      "FlightAwareDirectFlight",
      "mETAR",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["retval", "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "TAF"),
      "FlightAwareDirectFlight",
      "tAF",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["retval", "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "NTAF"),
      "FlightAwareDirectFlight",
      "nTAF",
      [ ["in", "airport", ["::SOAP::SOAPString"]],
        ["retval", "return", ["TafStruct", "http://directflight.flightaware.com/soap/DirectFlight", "TafStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "LatLongsToDistance"),
      "FlightAwareDirectFlight",
      "latLongsToDistance",
      [ ["in", "lat1", ["::SOAP::SOAPFloat"]],
        ["in", "lon1", ["::SOAP::SOAPFloat"]],
        ["in", "lat2", ["::SOAP::SOAPFloat"]],
        ["in", "lon2", ["::SOAP::SOAPFloat"]],
        ["retval", "return", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "LatLongsToHeading"),
      "FlightAwareDirectFlight",
      "latLongsToHeading",
      [ ["in", "lat1", ["::SOAP::SOAPFloat"]],
        ["in", "lon1", ["::SOAP::SOAPFloat"]],
        ["in", "lat2", ["::SOAP::SOAPFloat"]],
        ["in", "lon2", ["::SOAP::SOAPFloat"]],
        ["retval", "return", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("FlightAwareDirectFlight", "MapFlight_Beta"),
      "FlightAwareDirectFlight",
      "mapFlight_Beta",
      [ ["in", "ident", ["::SOAP::SOAPString"]],
        ["in", "mapHeight", ["::SOAP::SOAPInt"]],
        ["in", "mapWidth", ["::SOAP::SOAPInt"]],
        ["retval", "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MappingRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

