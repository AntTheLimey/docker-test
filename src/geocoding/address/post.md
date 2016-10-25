```swagger-yaml
swagger: '2.0'
info:
  version: 1.0.0
  title: Geocode Address
  description: The geocoding service enables you to take an address and get the associated latitude and longitude.
host: www.mapquestapi.com
basePath: /geocoding/v1
schemes:
  - http
  - https
consumes:
  - application/json
  - text/xml
  - text/csv
produces:
  - application/json
  - text/html
paths:
  /address:
    post:
      parameters:
        - name: key
          in: query
          description: The API Key, which is needed to make requests to MapQuest services.
          type: string
          required: true
        - name: outFormat
          in: query
          description: |
            Specifies the format of the response. Must be one of the following, if supplied':'

            * json
            * xml
            * csv (character delimited)

            Defaults to "json" if not supplied
          type: string 
          required: false
          default: json
        - name: callback
          in: query
          description: A JavaScript function name. The JSON-formatted response will be wrapped in a call to the supplied callback function name to provide JSONP functionality. This functionality might be needed to do cross-site scripting. See the [Wikipedia.org entry for JSON](https://en.wikipedia.org/wiki/JSONP) for more details.
          type: string
          required: false
        - name: location
          in: query
          description: The location to geocode
          type: string
          required: true
        - name: boundingBox
          in: query
          description: When using batch geocoding or when ambiguous results are returned, any results within the provided bounding box will be moved to the top of the results list. Bounding box format is':' upper left latitude, upper left longitude, lower right latitude, lower right longitude.
          type: string
          required: false
        - name: ignoreLatLngInput
          in: query
          description: |
            This option tells the service whether it should fail when given a latitude/longitude pair in an address or batch geocode call, or if it should ignore that and try and geocode what it can.
            
            * **true** - The geocoder will ignore the LatLng specified in the location, and use the address info to perform geocode
            * **false** - The geocoder will return a geoaddress object containing the LatLng passed in and write a warning message to Info block
            
            Default = false
          type: boolean
          required: false
          default: false
        - name: thumbMaps
          in: query
          description: |
            This parameter tells the service whether it should return a URL to a static map thumbnail image for a location being geocoded.
            
            * **true** - The response will include a URL to a static map image of the geocoded location.
            * **false** - The response will not include a static map image URL.
            
            Default = true
          type: string
          required: false
          default: none
        - name: maxResults
          in: query
          description: The number of results to limit the response to in the case of an ambiguous address. (-1 indicates no limit)
          type: number
          required: false
        - name: delimiter
          in: query
          description: |
            Specifies the delimiter used in the csv response
            
            * Comma
            * Pipe
            * Colon
            * Semicolon
            
            Default is none. This option will only have an effect if outFormat=csv.
          type: string
          required: false
          default: none
        - name: intlMode
          in: query
          description: |
            Allows users of the International Geocoder to tell MapQuest how to handle a 5-box geocode.
            
            * **5BOX** - keeps the query as a 5-box and sends it to the TomTom International Geocoder as a 5-box.
            * **1BOX** - converts the 5-box query into a 1-box query and sends it to the TomTom International Geocoder.
            * **AUTO** - handles the query in a way deemed most optimal by MapQuest. Currently this converts a 5-box query to a 1-box query across the board.
            
            Default = AUTO
          type: string
          required: false
          default: AUTO
      responses:
        200:
          description: Address
          schema:
            $ref: '#/definitions/Address'
definitions:
  Address:
    type: object
    properties:
      providedLocation:
        type: string
        description: The provided location properties passed in the geocode request.
      latLng:
        type: string
        description: Returns the latitude/longitude for routing and is the nearest point on a road for the entrance.
      street:
        type: string
        description: Street address
      adminArea6:
        type: string
        description: Neighborhood name
      adminArea5:
        type: string
        description: City name
      adminArea4:
        type: string
        description: County name
      adminArea3:
        type: string
        description: State name
      adminArea1:
        type: string
        description: Country name
      postalCode:
        type: string
        description: Postal code
      type:
        type: string
        description: | 	
          Type of location.

          * 's' = stop (default)
          * 'v' = via
      dragPoint:
        type: boolean
        description: |
          Is location a drag point? This option only applies when making a dragroute call.

          * true = location is a drag point
          * false = location is not a drag point (default)
      displayLatLng:
        type: string
        description: A lat/lng pair that can be helpful when showing this address as a Point of Interest.
      geocodeQuality:
        type: string
        description: The precision of the geocoded location. Refer to the [Geocode Quality reference page](https://developer.mapquest.com/documentation/geocoding-api/quality-codes) for more information.
      geocodeQualityCode:
        type: string
        description: The five character quality code for the precision of the geocoded location. Refer to the [Geocode Quality reference page](https://developer.mapquest.com/documentation/geocoding-api/quality-codes) for more information.
      linkId:
        type: string
        description: String that identifies the closest road to the address for routing purposes.
      sideOfStreet:
        type: string
        description: |
          Specifies the side of street.

          * 'L' = left
          * 'R' = right
          * 'M' = mixed
          * 'N' = none (default)
      info:
        type: string
        description: |
          This field contains information about the response.

          The statuscode subfield is an integer return value. Refer to the [status codes page](https://developer.mapquest.com/documentation/geocoding-api/status-codes) for more details about our status codes and error messages.

          The messages subfield is an array of error messages that describe the status
```
