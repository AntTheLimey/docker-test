# Geocoding API
Accurate geocoding results are an essential part of many geospatial processes. Whether you want to show your retail locations on a map, calculate an optimized route for a delivery, or search within the radius of an origin point, the geocoding API enables you to associate latitude and longitude with an associated address. Below you will find all of our documentation for our geocoding API.

## Forward Geocode

Forward geocoding (also called address geocoding) is the process of finding an associated latitude and longitude for a given address.

*Example: 1060 W. Addison St., Chicago IL, 60613 returns 41.947239,-87.655636.*

> [GET Geocode Address */geocoding/v1/address*](./address/get.md)
>
> [POST Geocode Address */geocoding/v1/address*](./address/post.md)

## Reverse Geocode

Reverse geocoding is the process of taking a latitude and longitude pair and providing the associated address, or nearest address point.

*Example: 41.947239,-87.655636 returns 1060 W. Addison St., Chicago, IL 60613*

> [GET Reverse Geocode */geocoding/v1/reverse*](./reverse/get.md)
>
> [POST Reverse Geocode */geocoding/v1/reverse*](./reverse/post.md)

## Batch Geocode

Batch Geocoding allows you to submit multiple forward and reverse geocode requests at a time. You may submit up to 100 addresses or lat/lng pairs in a single batch request.

> [GET Batch Geocode */geocoding/v1/batch*](./batch/get.md)
>
> [POST Batch Geocode */geocoding/v1/batch*](./batch/post.md)

## Single-line vs. 5-box Input

The 5-box input format allows for a higher degree of address specification by entering an address, broken down into individual components; it bypasses the parsing functionality of the single-line request.

The following are sample requests for 1600 Pennsylvania Ave NW, Washington, DC, 20500 shown in single-line and 5-box request formats:

**Single-line address format: KVP Request:**

```
http://www.mapquestapi.com/geocoding/v1/address?key=KEY&location=1600+Pennsylvania+Ave+NW,Washington,DC,20500
```

**5-box address format: KVP Request:**

```
http://www.mapquestapi.com/geocoding/v1/address?key=KEY&street=1600+Pennsylvania+Ave+NW&city=Washington&state=DC&postalCode=20500
```

## Supporting Documentation

> Geocoding Status Codes
> 
> Geocoding Quality Codes
>
> Geocoding API Forum
