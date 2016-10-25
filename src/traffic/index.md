# Traffic API

The Traffic Service provides real time traffic information related to markets, incidents, and flow.

## Traffic Incidents

The Traffic Incidents request returns a structured list of traffic incidents for a sepcified bounding box in JSON or XML formats, e.g., road construction, traffic collisions.

> [GET Traffic Incidents */traffic/v1/incidents*](./incidents/get.md)
> [POST Traffic Incidents */traffic/v1/incidents*](./incidents/post.md)

## Traffic Markets

The Traffic Markets request returns a structured list of regions, or "markets", for which MapQuest provides traffic data. The list is available in JSON or XML formats.

> [GET Traffic Markets */traffic/v1/markets*](./markets/get.md)

## Traffic Flow Image

The Flow Request returns an image of the current traffic for a particular area.

> [GET Traffic Flow Image */traffic/v1/flow*](./flow/get.md)

## Supporting Documentation

> [Traffic API Forum](https://developer.mapquest.com/forums/traffic-api-web-service)
