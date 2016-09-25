"use strict";

var pg = require('pg');


var appRouter = function(app) {

    app.get("/munis", function(req, res) {

        var db = 'postgres';
        var schema = 'public';
        var tname = 'web_annexations';


        var tolerance = 0;

        //get simplify factor
        var zoom = req.query.zoom || 17;

        //type coercion okay here
        if (zoom == 2) {
            tolerance = 0.2;
        } //past minZoom
        if (zoom == 3) {
            tolerance = 0.1;
        } //past minZoom
        if (zoom == 4) {
            tolerance = 0.07;
        } //past minZoom
        if (zoom == 5) {
            tolerance = 0.04;
        } //past minZoom
        if (zoom == 6) {
            tolerance = 0.018;
        }
        if (zoom == 7) {
            tolerance = 0.01;
        }
        if (zoom == 8) {
            tolerance = 0.005;
        }
        if (zoom == 9) {
            tolerance = 0.003;
        }
        if (zoom == 10) {
            tolerance = 0.0015;
        }
        if (zoom == 11) {
            tolerance = 0.001;
        }
        if (zoom == 12) {
            tolerance = 0.0005;
        }
        if (zoom == 13) {
            tolerance = 0.00025;
        }
        if (zoom == 14) {
            tolerance = 0.0001;
        }
        if (zoom == 15) {
            tolerance = 0.0001;
        }
        if (zoom == 16) {
            tolerance = 0.0001;
        }
        if (zoom == 17) {
            tolerance = 0;
        }


        var bbstr = ""; //bounding box string

        if (req.query.bb) {
            var bb = req.query.bb;
            bbstr = schema + "." + tname + ".geom && ST_MakeEnvelope(" + bb + ", 4326) ";
        } else {
            bbstr = " 1=1 ";
        } //bounding box example: "-105,40,-104,39" no spaces no quotes


        var sql = "SELECT gid, city, cityname, rec_num, county, cl_re_date, descr, ord_num, type, notes, st_asgeojson(st_transform(ST_Simplify(geom," + tolerance + "),4269)) AS geojson from " + schema + "." + tname + " where " + bbstr + ";";
        


        sendtodatabase(sql);

        function sendtodatabase(sqlstring) {

            //var conString = "postgres://codemog:demography@gis.dola.colorado.gov:5433/dola";  //this is a read only account, have fun!
          var conString = "postgres://postgres:postgres@demog-test.cudcner3avpd.us-west-2.rds.amazonaws.com:5432/postgres";
            var client = new pg.Client(conString);

            client.connect(function(err) {
                if (err) {
                    return console.error('could not connect to postgres', err);
                }

                client.query(sqlstring, function(err, result) {
                    if (err) {
                        return console.error('error running query', err);
                    }

                    var resultdata = result.rows;
                    var output = '';
                    var rowOutput = '';
                  
                    for (var t = 0; t < resultdata.length; t++) {

                        rowOutput = (rowOutput.length > 0 ? ',' : '') + '{"type": "Feature", "geometry": ' + resultdata[t]['geojson'] + ', "properties": {';
                        var props = '';
                        var id = '';

                        for (var key in resultdata[t]) {
                            if (resultdata[t].hasOwnProperty(key)) {

                                if (key !== "geojson") {
                                    props = props + (props.length > 0 ? ',' : '') + '"' + key + '":"' + String(resultdata[t][key]).replace(/'/g, '').replace(/"/g, '').replace(/\//g, '').replace(/\\/g, '') + '"';
                                }
                                if (key === "id") {
                                    id = id + ',"id":"' + resultdata[t][key] + '"';
                                }
                            }
                        }

                        rowOutput = rowOutput + props + '}';
                        rowOutput = rowOutput + id;
                        rowOutput = rowOutput + '}';
                        output = output + rowOutput;

                    }

                    var arroutput = '{ "type": "FeatureCollection", "features": [ ' + output + ' ]}';

                    res.set({
                        "Content-Type": "application/json"
                    });
                    res.send(arroutput);

                    client.end();

                });
            });
        }
    });
}

module.exports = appRouter;