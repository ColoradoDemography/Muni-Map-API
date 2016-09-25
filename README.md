# Muni-Map-API
API to power Colorado Municipal Boundaries Map


The API is simple.  It takes only a bounding box (bb) and a map zoom level (zoom), and returns all the features in the web\_annexations layer from that area.



This is one of the things I really wanted to accomplish before I left, but ran out of time.  Somewhat sadly, this didn't take nearly as long as I thought it would (though I'm not done yet, as you'll see at the end).

## Instructions for Converting Muni Map from AGOL to Postgres/PostGIS

 - Upload the web\_annexations layer to postgres somewhere with the other dola layers (probably in the same place as the special districts).  I used shp2pgsql, but sometimes you have to install half of apt-get to make that work.  Not exactly sure how to do that best from windows.

<pre>
shp2pgsql -s 4269 Web_Annexations05132016.shp public.web_annexations | psql -h localhost -d postgres -U postgres
</pre>

While you're at it, you should upload annexations, baselayer, and deannexations.

 - Change the code in this project to point to the web\_annexations layers at DOLA, rather than my temporary amazon host account.  See lines 10-12 in routes.js.

 - Dockerize this, and launch it on the gis server.  Port 4010 should be the next available port (since 4009 is usda).

 - Change the path of the api in the CO\_Muni client app.  Line 121 in app.js

 - Commit changes, but also commit to gh-pages branch:
 
<pre>
git push
git push origin master:gh-pages
</pre>

 - Make sure the app works on https://coloradodemography.github.io/CO_Muni before updating the app to production in the panel.

** This is where I write a PostGIS SQL script and schedule a process in the CRON container that converts the baselayer, annexations, and deannexations layers into the web\_annexation layer each week. **

 - Before I can do this though, I need to know what the baselayer, annexation layer, and de-annexation layer schemas look like.  Send me the shapefiles when you get a chance.


Once this is all in place, you'll do your editing directly with QGIS and PostGIS (dont forget to make a backup copy first).  It saves the enormous hassle of editing in ArcMap, transforming with Model Builder, uploading to AGOL, uploading to Google Storage, and changing the dates on the client application.

The downside will probably be editing in QGIS.  I'm not sure what that will entail, since I've never done it.  Worst case is that you download the Annexations layer from QGIS as a shapefile, edit with ArcMap, and then upload back to QGIS.  That's still a much easier process than it was.

