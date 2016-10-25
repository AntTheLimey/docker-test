# Directions API

The Directions API provides a simple interface to get routing, narrative, and shapes.

## Route

The core and most basic function of our Directions API. Route provides information on how to get from point A to point B, or points C, D and E. Quite simply, it shows you and your users how to get where they are going.

> [GET Route */directions/v2/route*](./route/get.md)
> [POST Route */directions/v2/route*](./route/post.md)

## Optimized Route

The Optimized Route function allows users to customize their route experience to their preferences, including the quickest drive time, the shortest drive distance, or even how long it would take to walk instead of driving. The origin and destination locations remain fixed but the route is ordered to find the optimal path.

> [GET Optimized Route */directions/v2/optimizedroute*](./optimizedroute/get.md)
> [POST Optimized Route */directions/v2/optimizedroute*](./optimizedroute/post.md)

## Route Matrix

The Route Matrix function enables the user to see the times and distance between locations. Want to know how many miles it is between Denver and Chicago? Need to know how long it will take to drive from your home/office to a store? Route matrix provides this information.

> [POST Route Matrix */directions/v2/routematrix*](./routematrix/post.md)

## Alternate Routes

The Alternate Routes function allows users to request multiple potential routes between two locations.

> [GET Alternate Routes */directions/v2/alternateroutes*](./alternateroutes/get.md)
> [POST Alternate Routes */directions/v2/alternateroutes*](./alternateroutes/post.md)

## Route Shape

The Route Shape function provides a visual indicator (a shape) of a previously requested route between any number of points. Generally, this is a line leading from location to location.

> [GET Route Shape */directions/v2/routeshape*](./routeshape/get.md)

## Drag Route

The Drag Route function allows users to adjust their route "on the fly," by dragging the route to add new location or a new road.

> [GET Drag Route */directions/v2/dragroute*](./dragroute/get.md)

## Path from Route

The Path from Route function provides the times/distances needed to reach as set of locations from an existing route.

> [GET Path from Route */directions/v2/pathfromroute*](./pathfromroute/get.md)

## Find Link ID

The Find Link ID function allows users to easily find the `linkId` of a road, which can then be supplied for the `mustAvoidLinkIds` and `tryAvoidLinkIds` route options.

> [GET Find Link Id */directions/v2/findlinkid*](./findlinkid/get.md)

## Supporting Documentation

> [Narrative Microformat](https://developer.mapquest.com/documentation/directions-api/narrative-microformat)
> [Direction API Status Codes](https://developer.mapquest.com/documentation/directions-api/status-codes)
> [Transit and Date/Time Routing](https://developer.mapquest.com/documentation/directions-api/routetime-refresh)
> [Route Control Points](https://developer.mapquest.com/documentation/directions-api/route-control-points)
> [Location Objects](https://developer.mapquest.com/documentation/directions-api/forming-locations)
> [Zoom to Scale Mapping](https://developer.mapquest.com/documentation/directions-api/zoom-to-scale)
> [Compressed Lat/Lng Encoding/Decoding](https://developer.mapquest.com/documentation/directions-api/encode-decode)
> [Directions API Forum](https://developer.mapquest.com/forums/directions-api-web-service)
