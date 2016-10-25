```swagger-yaml
swagger: '2.0'
info:
  version: 1.0.0
  title: Reverse Geocode
  description: |
    The reverse geocoding service allows a latitude and longitude to be converted to a location.

    **Note:** For Reverse Geocode native language support to work, the client should pass a header parameter accept-language which takes ISO-2 country codes as its value with the request.
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
  /reverse:
    get:
      parameters:
        - name: key
          in: query
          description: The API Key, which is needed to make requests to MapQuest services.
          type: string
          required: true
        - name: location
          in: query
          description: The latitude,longitude of the point to reverse geocode
          type: string
          required: false
        - name: thumbMaps
          in: query
          description: |
            This parameter tells the service whether it should return a URL to a static map thumbnail image for a location being geocoded.
            
            * **true** - The response will include a URL to a static map image of the geocoded location.
            * **false** - The response will not include a static map image URL.
            
            Default = true
          type: boolean
          required: false
          default: true
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
        - name: includeNearestIntersection
          in: query
          description: |
            Returns the nearest cross streets (intersection) to the given points.
            
            * **true** - nearest intersection is returned.
            * **false** - nearest intersection is not returned.
            
            Default value is false.
          type: boolean
          required: false
          default: false
        - name: includeRoadMetadata
          in: query
          description: |
            Returns speed limit and toll road data, if available.
            
            * **true** - speed limit or toll road data is returned.
            * **false** - speed limit or toll road data is not returned.
            
            Default value is false.
          type: boolean
          required: false
          default: false
        - name: callback
          in: query
          description: 	A JavaScript function name. The JSON-formatted response will be wrapped in a call to the supplied callback function name to provide JSONP functionality. This functionality might be needed to do cross-site scripting. See [the Wikipedia.org entry for JSON](https://en.wikipedia.org/wiki/JSONP) for more details.
          type: string
          required: false
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
