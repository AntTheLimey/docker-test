# Data Manager API

`Users who are using AppKeys created after June 23, 2015 do not need to pass a clientid or password with their Data Manager requests.`

## Overview

Data Manager has been completely re-written and exposed as a RESTful web service to MapQuest API developers. There are a number of differences between the previous version of Data Manager and the Data Manager API: GUI interface vs web service, addition of polygon support, ability to create custom Data Manager functions like tiered login.

### Introduction

The MapQuest Data Manager v2.0 API allows you to store custom datasets in a spatially-aware database that resides on MapQuest servers. Tables that contain points, lines, and polygons can be easily manipulated and maintained through simple HTTP GET and POST requests. Data Manager also offers security settings to ensure that your custom datasets private and protected -- unless, of course, you want to share data with other developers who are using MapQuest APIs.

Data Manager v2.0 offers developers who use MapQuest APIs a number of benefits:

* Data is hosted on MapQuest infrastructure, so there is no need for external data hosting.
* Data Manager is tightly integrated with other MapQuest APIs, such as the Search API (v2).
* Points, lines, and polygons are stored as *geographies*, which allows Data Manager v2.0 to support spatial queries.
* Data Manager v2.0 is included in the service-level agreement (SLA) available to MapQuest Enterprise Solutions developers.

It is recommended that new data be appended to tables rather than removing current data and uploading an entire new data set. The upload of data, geocoding of records, and creation of new tables is asynchronous, so it will take a moment before data is available via search or other web services.

## Managing Tables

Data Manager tables must be created prior to uploading data. This section of the Data Manager API documentation describes how to create, copy and delete tables. It also describes the data types supported by the Data Manager API as well as table visibility; meaning, tables can be made public to all MapQuest developers or private and viewable only by the table owner.

> [POST Get Tables */datamanager/v2/get-tables*](./managing_tables/get-tables/post.md)
> [GET Supported Column Types */datamanager/v2/get-column-types*](./managing_tables/get-column-types/get.md)
> [POST Create Tables */datamanager/v2/create-table*](./managing_tables/create-table/post.md)
> [POST Copy a Table */datamanager/v2/copy-table*](./managing_tables/copy-table/post.md)
> [POST Delete a Table */datamanager/v2/drop-table*](./managing_tables/drop-table/post.md)
> [POST Edit a Table Name */datamanager/v2/edit-table-name*](./managing_tables/edit-table-name/post.md)
> [POST Edit Column Names */datamanager/v2/edit-column-names*](./managing_tables/edit-column-names/post.md)
> [POST Add Columns */datamanager/v2/add-columns*](./managing_tables/add-columns/post.md)
> [POST Delete Columns */datamanager/v2/drop-columns*](./managing_tables/drop-columns/post.md)
> [POST View Table and Column Permissions */datamanager/v2/get-table-permissions*](./managing_tables/get-table-permissions/post.md)
> [POST Edit Table and Column Permissions */datamanager/v2/edit-table-permissions*](./managing_tables/edit-table-permissions/post.md)

## Custom Permissions

The Data Manager API supports custom table and field-level permissions. Permissions can be assigned to other MapQuest developers who are using other ClientIDs and AppKeys. A typical use case for custom permissions is to allow other developers access to a few, but not all fields in a private table.

> [POST View Custom Permissions */datamanager/v2/get-custom-permissions*](./custom_permissions/get-custom-permissions/post.md)
> [POST Grant Custom Permissions */datamanager/v2/grant-custom-permissions*](./custom_permissions/grant-custom-permissions/post.md)
> [POST Edit Custom Permissions */datamanager/v2/edit-custom-permissions*](./custom_permissions/edit-custom-permissions/post.md)
> [POST Revoke Custom Permissions */datamanager/v2/revoke-custom-permissions*](./custom_permissions/revoke-custom-permissions/post.md)

## Managing Data

This section of the Data Manager API documentation describes how to view, upload, edit, and delete data tables after a table has been created.

> [POST View Table Data */datamanager/v2/get-table-data*](./managing_data/get-table-data/post.md)
> [POST Upload Data to a Table */datamanager/v2/upload-data*](./managing_data/upload-data/post.md)
> [POST Delete Records From a Table */datamanager/v2/delete-data*](./managing_data/delete-data/post.md)
> [POST Update an Existing Record */datamanager/v2/update-data*](./managing_data/update-data/post.md)

### Supported file types for upload

| File Types:	| CSV	| KML	| Zipped SHP files	|

### Getting started

An API Key is needed for Data Manager API requests.

* If you do not have an account on the [MapQuest Developer Network](developer.mapquest.com), sign up now by visiting the homepage and clicking the *Sign Up* link.
* If you have an account on the [MapQuest Developer Network](developer.mapquest.com), sign in, click on your username, and choose *Keys & Reporting* from the menu. Select your app to see information about your AppKey, which includes your legacy ClientID and registry password.

### Getting data into Data Manager

Getting data into Data Manager is a simple two-step process:

1. Create a table that includes fields for all of the data you want to store in Data Manager, along with a geography field.
    *See the [create-table](https://developer.mapquest.com/documentation/data-manager/tables/create-table) documentation for more specifics.*
2. Upload data to your newly-created table.
    *See the [upload-data](https://developer.mapquest.com/documentation/data-manager/data/upload-data) documentation for more specifics.*

### Address geocoding

Automatic batch address geocoding is available in Data Manager v2.0. Simply create a table and include both an empty geography field and a FullAddress field. Single-line addresses in the FullAddress field will be geocoded and the Geography field will be populated for each record uploaded to Data Manager.

### Tools

Although the Data Manager API offers more flexibility for developers by allowing interaction with Data Manager v2.0 through HTTP requests, there is no official tool that is part of the MapQuest Developer Network. An unofficial sample tool that can be used to create tables, upload data, and manage tables in Data Manager is available for download.

### Limitiations

`Enterprise Edition users can create up to 10 tables.`

`Enterprise Editions users can have up to 150 columns per table.`

`Enterprise Edition users have a limit of 250MB of data per table.`

### Response

This response is displayed at the end of each executed request. It notifies the user of the status of the request and if there were any errors in processing the request. Status codes are returned for all Data Manager functions and are helpful when troubleshooting errors.
 
```json
{
	"info": {
		"statusCode": "...",
		"copyright": {
			"text": "...",
			"imageUrl": "...",
			"imageAltText": "...",
		},
		"messages":[
			"..."
		]
	}
}
```

```xml
<response>
	<info>
		<statusCode>...</statusCode>
		<messages>
			<message>...</message>
		</messages>
		<copyright>
			<imageUrl>...</imageUrl>
			<imageAltText>...</imageAltText>
			<text>...</text>
		</copyright>
	</info>
</response>
```

## Supporting Documentation

> [Data Manager Status Codes](https://developer.mapquest.com/documentation/data-manager/status-codes)
> [Data Manager API Forum](https://developer.mapquest.com/forums/data-manager-api-web-service)
