# Search API

The Search API allows spatial searches on hosted data utilizing the [MapQuest Data Manager](https://developer.mapquest.com/documentation/data-manager) and remote data. It can help answer questions such as, "Which coffee shops are within a 5-minute drive from my house?" or "Which data points fall within a particular zip code?".

## Types of Searching

### Radius Search

A radius search returns results that are within a given distance of an origin. An origin can be defined as latitude and longitude coordinates or a street address, while a radius can be defined in terms of units and size.

> [GET Radius Search */search/v2/radius*](./radius/get.md)
> [POST Radius Search */search/v2/radius*](./radius/post.md)

### Rectangle Search

A rectangle search will return results that are within a specific bounding box (rectangle). The rectangle is formed by defining upper left and lower right points.

> [GET Rectangle Search */search/v2/rectangle*](./rectangle/get.md)
> [POST Rectangle Search */search/v2/rectangle*](./rectangle/post.md)

### Polygon Search

A polygon search will return results that are within a custom polygon shape. The polygon is defined by a series of points (coordinates) that end with its starting point.

> [GET Polygon Search */search/v2/polygon*](./polygon/get.md)
> [POST Polygon Search */search/v2/polygon*](./polygon/post.md)

### Corridor Search

A corridor search will return results that fall within a specified distance of a line (i.e. a route) where the line is formed by a series of points.

> [GET Corridor Search */search/v2/corridor*](./corridor/get.md)
> [POST Corridor Search */search/v2/corridor*](./corridor/post.md)

### Base Search

A base search is a free-form search that can handle any of the above searches, although it is missing some of the convenience functionality exposed in other searches.

> [GET Base Search */search/v2/search*](./search/get.md)
> [POST Base Search */search/v2/search*](./search/post.md)

### Record Info Search

A record info search performs a lookup on hosted data items using a specific record ID.

> [GET Record Info Search */search/v2/recordinfo*](./recordinfo/get.md)
> [POST Record Info Search */search/v2/recordinfo*](./recordinfo/post.md)

## Types of Data to Search

Now that we've talked about the types of searching available with the Search API, let's talk about data that can be searched.

### Hosted Data

The [MapQuest Data Manager](https://developer.mapquest.com/documentation/data-manager) is essentially a large database hosted by MapQuest. MapQuest hosts multiple data tables that are available to search through the Search API. In addition to the MapQuest-hosted tables, you can also upload your own data to Data Manager, and we'll host the data for you. Refer to the [Hosted Data](https://developer.mapquest.com/documentation/search-api/hosted-data) documentation for more detail about how to search Data Manager tables.

`http://www.mapquestapi.com/search/v2/search?key=KEY&maxMatches=10&shapePoints=40.099998,-76.305603&hostedData=mqap.ntpois||`

### Remote Data

Remote data simply refers to user-defined points or geometry that is sent in with a search request. Refer to the [Remote Data](https://developer.mapquest.com/documentation/search-api/remote-data) documentation for more detail.

`http://www.mapquestapi.com/search/v2/search?key=KEY&maxMatches=10&shapePoints=40.099998,-76.305603&remoteData=1,point,40.152837,-76.606783`

### Mixing Data Sources

It is also possible to mix data sources when using the Search API. The following example uses all of the previously mentioned data sources together in one request.

`http://www.mapquestapi.com/search/v2/search?key=KEY&maxMatches=10&shapePoints=40.099998,-76.305603&hostedData=mqap.ntpois|group_sic_code=?|799972&remoteData=1,point,40.099998,-76.305603&remoteData=2,linestring,40.099998,-76.305603,40.199998,-76.305603,40.199998,-76.405603`

## Supporting Documentation

> [Search API Status Codes](https://developer.mapquest.com/documentation/search-api/status-codes)
> [Search API Geometry](https://developer.mapquest.com/documentation/search-api/geometry)
> [Search API Points](https://developer.mapquest.com/documentation/search-api/points)
> [Search Result Object](https://developer.mapquest.com/documentation/search-api/search-result)
> [Search API Forum](https://developer.mapquest.com/forums/search-api-web-service)
