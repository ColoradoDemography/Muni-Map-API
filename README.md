# Muni-Map-API
API to power Colorado Municipal Boundaries Map


The API is simple.  It takes only a bounding box (bb) and a map zoom level (zoom), and returns all the features in the web\_annexations layer from that area.



The client changes in the MuniMap have already been completed.  All that's left is to update the database and launch the docker container which will require some manual work (below):


## Instructions for Converting Muni Map from AGOL to Postgres/PostGIS

1. Download the 3 SQL files in the SQL folder to your hard drive.  You will be uploading each of these files to the dola database.

2. Using PgAdmin, click on the dola database to make sure it is selected.  Then open the PSQL console.  

3. In the console, type in:

```
\i C:/wherever/the/path/is/annexations.sql
```

Do this for each of the SQL files.  That should give you the 3 base tables that you will edit from.  

4. The output tables; munibounds and web\_annexations are created through another SQL query which you'll find in the OtherSQL folder.  You can just copy and paste this text and run it in the PgAdmin Query Window.  In the near future I'll create a task in the Cron container that will run this script for you once a week (and export munibounds to google storage).

5. Dockerize this, and launch it on the gis server.  Port 4010 should be the next available port (since 4009 is usda).

6. Make sure the app works on https://coloradodemography.github.io/CO_Muni before updating the app to production in the panel.

---

Once this is all in place, you'll do your editing directly with QGIS and PostGIS (dont forget to make a backup copy first).  It saves the enormous hassle of editing in ArcMap, transforming with Model Builder, uploading to AGOL, uploading to Google Storage, and changing the dates on the client application.

The downside will probably be editing in QGIS.  I'm not sure what that will entail, since I've never done it.  Worst case is that you download the Annexations layer from QGIS as a shapefile, edit with ArcMap, and then upload back to QGIS.  That's still a much easier process than it was.

Know that if anythiing dramatic happens when you're editing, we have dozens of database backups stored in google storage (bound to happen when experimenting with editing in QGIS).  Extract one of them locally and reupload all the relevant files.

