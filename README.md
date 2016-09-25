# Muni-Map-API
API to power Colorado Municipal Boundaries Map


The API is simple.  It takes only a bounding box (bb) and a map zoom level (zoom), and returns all the features in the web\annexations layer from that area.



Instructions for Converting Muni Map from AGOL to Postgres/PostGIS

1.  Upload the web\_annexations layer to postgres somewhere with the other dola layers (probably in the same place as the special districts).  I used shp2pgsql, but sometimes you have to install half of apt-get to make that work.  Not exactly sure how to do that best from windows.

<pre>
shp2pgsql -s 4269 Web_Annexations05132016.shp public.web_annexations | psql -h localhost -d postgres -U postgres
</pre>

While you're at it, you should upload annexations, baselayer, and deannexations.

2.  Change the code in this project to point to the web\_annexations layers at DOLA, rather than my temporary amazon host account.  See lines 10-12 in routes.js.

3.  Dockerize this, and launch it on the gis server.  Port 4010 should be the next available port (since 4009 is usda).

4.  Change the path of the api in the CO\_Muni client app.  Line 121 in app.js

5.  Commit changes, but also commit to gh-pages branch:

<pre>
git push
git push origin master:gh-pages
</pre>

6.  Make sure the app works on https://coloradodemography.github.io/CO\_Muni before updating the app to production in the panel.

7.  This is where I write a SQL script (or Python, but probably SQL) where I schedule a process in the CRON container that converts the baselayer, annexations, and deannexations layers into the web\_annexation layer automatically.
