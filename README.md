# Muni-Map-API
API to power Colorado Municipal Boundaries Map


upload web\_annexations shapefile to database:

<pre>
shp2pgsql -s 4269 Web_Annexations05132016.shp public.web_annexations | psql -h localhost -d postgres -U postgres
</pre>