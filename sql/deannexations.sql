--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-10-02 19:12:44 CDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = bounds, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 29718)
-- Name: deannexations; Type: TABLE; Schema: bounds; Owner: postgres
--

CREATE TABLE deannexations (
    gid integer NOT NULL,
    rec_num character varying(15),
    county character varying(3),
    city character varying(5),
    cl_re_date date,
    descr character varying(100),
    ord_num character varying(50),
    type character varying(1),
    notes character varying(100),
    cityname character varying(100),
    geom public.geometry(MultiPolygon,4269)
);


ALTER TABLE deannexations OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 29724)
-- Name: deannexations_gid_seq; Type: SEQUENCE; Schema: bounds; Owner: postgres
--

CREATE SEQUENCE deannexations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE deannexations_gid_seq OWNER TO postgres;

--
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 201
-- Name: deannexations_gid_seq; Type: SEQUENCE OWNED BY; Schema: bounds; Owner: postgres
--

ALTER SEQUENCE deannexations_gid_seq OWNED BY deannexations.gid;


--
-- TOC entry 4211 (class 2604 OID 29726)
-- Name: gid; Type: DEFAULT; Schema: bounds; Owner: postgres
--

ALTER TABLE ONLY deannexations ALTER COLUMN gid SET DEFAULT nextval('deannexations_gid_seq'::regclass);


--
-- TOC entry 4335 (class 0 OID 29718)
-- Dependencies: 200
-- Data for Name: deannexations; Type: TABLE DATA; Schema: bounds; Owner: postgres
--

COPY deannexations (gid, rec_num, county, city, cl_re_date, descr, ord_num, type, notes, cityname, geom) FROM stdin;
1	845389	045	70195	2014-01-17	Heron's Nest	No. 15, 2004	D	\N	Silt	0106000020AD100000010000000103000000010000001E000000F065C16582EA5AC0F3F880E7C5C543404C9AE18082EA5AC09904C473C0C5434011242A5C7FEA5AC0E98E3B10C1C5434050424AB27EEA5AC0FFFE862FC1C543405EE719B57EEA5AC06E3BE0DCC0C54340BF73AD687FEA5AC020CBC054ACC543402AD22F9A79EA5AC0108DE81DACC543400D63AB876AEA5AC06AF17D8FABC5434080099E4D6AEA5AC0227B2B9B8AC54340A0F388B187EA5AC0F35ADCB08BC54340D57C592D8AEA5AC066E4529D68C5434072CA334D8AEA5AC08206A8DB66C5434027BC71E392EA5AC07C18C22C67C54340396DEC48B6EA5AC030EF3FB26DC5434054ADC112C0EA5AC0465D0D0A6EC54340A04341D8C5EA5AC09F31AB5798C543408A9325ECC1EA5AC074F50AEBA1C543406BD04DBFB6EA5AC01C7CE0D499C54340D97E1124B7EA5AC0D2D22968BFC5434051755725B7EA5AC01CEEADE2BFC543405898EC8AB2EA5AC0F774DE1BC2C54340A6FF0EEAADEA5AC04598B91CC4C54340A0FE6A43A9EA5AC028C1F4E4C5C54340ACBFAD97A4EA5AC00A954D74C7C54340092B85E79FEA5AC047FF89CAC8C543407ECD9F339BEA5AC0993978E7C9C54340FABEAC7C96EA5AC05ED3EECACAC543401D895BC391EA5AC092B7CC74CBC543408505502382EA5AC0D27D6D40D3C54340F065C16582EA5AC0F3F880E7C5C54340
2	853349	085	51745	2014-01-30	6450 Rd and Kentucky Rd De-Annexation	No. 2334	D	\N	Montrose	0106000020AD100000010000000103000000010000002C0000007ADDB0D757F85AC05AB4C983DC414340EE21B1D657F85AC00ED452B2D9414340BEDD34D657F85AC0C61C55FFD6414340FF41558D44F85AC04C4569B1D641434066FF238D44F85AC0BF4E69B1D641434081F3568B44F85AC0CA805D64D9414340E694C2F631F85AC07266BC5FD94143407F062EF631F85AC022C3BFACD6414340A4FA88F031F85AC09B7C75C9BC414340D05CE6EA31F85AC0E9BC26E6A24143407C6F3FE531F85AC0F38B6302894143403C8DCBDC31F85AC030C0A12F6241434002B2E8E244F85AC01E4B2CD462414340DD1927F76FF85AC0EF8A39F6624143403D0B6AFE7BF85AC061158D1A63414340B2829E728BF85AC06D2A2D4963414340332C98648BF85AC0ECE239886E414340873DF3B1A2F85AC07561F0CF6E4143401C682C87A2F85AC003399AE1824143407017F572A2F85AC05837D3C38E414340C3D63232A4F85AC075627DD08E4143402301BA0BA6F85AC073627DD08E4143407CD6CDF2A5F85AC096DA9325944143407CD6CDF2A5F85AC08981C2E09F414340D6ABE1D9A5F85AC019100166B1414340E52B1D8FA5F85AC0393D3CBFC441434097D6445DA5F85AC03D2D5CEFD041434097D6445DA5F85AC06D1673D6DA41434089E40C3CA2F85AC06AEC79DADA414340D7E4773BA2F85AC0BA0A8589DD414340470E593BA2F85AC072B39717DE4143407AC60009A2F85AC0E341ECD5154243401D3306AF8AF85AC096B47FC915424340CD991F807DF85AC04FAC5F18164243406855319F7DF85AC03CCCE848DA414340799FD3DC6AF85AC01E1430FED9414340B8DCFCDE6AF85AC022FADFC6DC414340314299396BF85AC0FD963C74514243409E65A0396BF85AC0CE71A97D51424340583E7FE457F85AC0DDF24C5151424340D6D31BAA57F85AC07F28C65051424340ED3D1CAF57F85AC0CBE7EA82444243400C1B6AD757F85AC067D0BF39DD4143407ADDB0D757F85AC05AB4C983DC414340
3	2013000088780	001	16495	2013-09-23	Peoria to Sable De-Annexation	No. 1970	D	\N	Commerce City	0106000020AD10000001000000010300000001000000220000008EAB1EF230365AC011F5CBF90BF54340E3B3B85CE2355AC0B9D838550CF5434028DFD18548355AC0BC3654790BF5434062BF897F48355AC06BB0B7930EF5434028870F7F24355AC0212865570EF543405755EDBD14355AC002B77E2B0EF543409A02898412355AC03C1F1A230EF543400D90DB730F355AC06C3087E20DF54340DB5FC1C1FB345AC0AEAF3B770DF5434092FDC4C0FB345AC026EE423008F54340CC59F31868345AC0DA06FFBC07F543401333A23768345AC0DE63367104F543406D05899A6B345AC0009C387B04F54340F9134B8FE2345AC0E8B74A4105F54340257C6760FA345AC01DD22BF104F5434024833453FC345AC060A7A4A105F54340E9787D4913355AC040EEFBF105F54340A891CE9921355AC0F6229F1B06F5434046DAC1F548355AC02F21FF8906F5434052D393BF58355AC0EDB688BB06F54340B02D2AA35E355AC0601B90CC06F54340F913479393355AC0D886256707F54340FF01A8D195355AC002BF996D07F543400715C5A8C2355AC0079469BC07F5434069939F99CD355AC06EEE7DE107F54340997696EBD6355AC01CD6FCFF07F54340004425E7E2355AC08CCFA11808F5434051C53606F6355AC036852F7A07F54340C0D6A02808365AC063F914A807F543409DB9A30812365AC08B8217C607F54340499ECE6B1C365AC08891879E07F54340EB7A10C626365AC0EA60239F07F54340E146EAF830365AC0CB51365307F543408EAB1EF230365AC011F5CBF90BF54340
4	656738	029	19850	2012-02-25	Jennings Landing #3 Deannexation	O 1, 2012	D	\N	Delta	0106000020AD1000000100000001030000000100000048000000F13DC3405B025BC02AA51F7EAA5A43402CC5277F5A025BC0699CA772745A4340EDD4A9A85A025BC0B89088B1335A43402AA081D06B025BC05058B4C0335A4340FEC1548CA4025BC0BD0FE288795A4340AE0D0319A5025BC00D208E267A5A4340E7196C3EA5025BC0583D6A427A5A43402198173EA5025BC09F361DFD795A4340428C604EA6025BC08D02B03C7B5A43408A191508C4025BC08C8BDD8C9C5A43402481761ED0025BC0651E6E05AB5A43402FB99175DB025BC0927CCF63B95A434091659FBCF0025BC082066B4CDD5A43408EDAA415F2025BC03E7AAC92DF5A43409BB45627F2025BC0D485ABD91E5B4340646546CA0F035BC0CF0911061F5B4340CAC1896613035BC084414850215B43408DA0D53D15035BC055505E59215B4340441AC0CC24035BC0DE3ED190085B434022E9D9B232035BC0495DD3E1205B4340F81FDA2C34035BC01C9F016C235B4340AFE8175C3C035BC07A48E37F315B434021B05ED93D035BC0B1E67222345B4340DCE528E95A035BC02D26CB8C675B4340629E438E87035BC0043052BDB15B43403BC2F86489035BC0B82179CBB45B43406BA0E71D8A035BC065D57063CC5B4340EC7ABDBA8A035BC0AE9C1CF6DF5B4340D83C827B89035BC03CED37AADD5B43403D38C56588035BC00C72BCABDB5B4340AD9D35B986035BC0305887ADD85B4340AE69B27F82035BC027096E16D15B4340842738117F035BC098E05B26CB5B434089EFA5267E035BC0FA6BD997C95B4340CE09291C7B035BC0992D952EC45B434068EA72B06E035BC0AFB0F026AE5B43406B1C02D56D035BC0569171A1AC5B43402FD5AF316A035BC009B830ACA75B43403210FBCC67035BC060672E69A45B43404CA290E260035BC021ADF0E99A5B4340CBBBCFBB5F035BC0ECCB06B7985B434016A893E25E035BC0153D652B975B43406AEAC79452035BC052CB02D2805B4340E3DB015C4C035BC0A4417A5C7D5B4340DE71E2834A035BC098FC63C07A5B43409F45FF1045035BC07CC5820A735B43408E1B482642035BC04CCED6E96E5B4340CB27AEC23D035BC001CFD3B3685B43406C7A0DA83C035BC0F49EE123675B4340CF49AB472D035BC083DF9FAB525B43409FE6E79D27035BC05EA4C21F495B43401552A0BF1C035BC098BB13DB355B43400357CF510B035BC085D6F2E7245B434016C9EA440B035BC069FD9EDC275B4340211570BFFE025BC00FAB5560255B43407BEDA225F2025BC0B7AE6579255B43404F258927F2025BC0EF402FA3215B4340F33FD6D2F0025BC0C898B9A5215B43403099B097C4025BC0EB0801FA215B4340BE9E9609A6025BC034873A20225B4340F48CD60AA6025BC07CD93666225B43405CD220B391025BC0E2F1198A225B43405306DF578E025BC0A56A159C1E5B4340CA0EFBF18A025BC0107E7FCA105B434006182A5B80025BC0CE40AAA40A5B43404D8FB85775025BC0FD21D320EB5A43408EC6B1C26A025BC04161DD2ED55A4340EC6A8DA658025BC0DC384EA4B95A43408D07BA3054025BC049A29BDFAF5A4340FA2D9C7947025BC0B488CD74AB5A434088196DE844025BC087817F90AA5A4340F13DC3405B025BC02AA51F7EAA5A4340
5	846611	085	51745	2013-05-23	Abeyta Property Disconnection	No. 2319	D	\N	Montrose	0106000020AD100000010000000103000000010000000700000017DB5A9A7DF85AC036947695514243409E65A0396BF85AC0CE71A97D51424340B8DCFCDE6AF85AC022FADFC6DC414340799FD3DC6AF85AC01E1430FED94143406855319F7DF85AC03CCCE848DA414340CD991F807DF85AC04FAC5F181642434017DB5A9A7DF85AC03694769551424340
6	2012090175	059	84440	2012-08-24	Tomlinson Park, Arvada Channel Disconnection	No. 1516, 2012	D	\N	Wheat Ridge	0106000020AD100000010000000103000000010000001E0000009C1DEEF4B6465AC055F94310EEE443409A084B26B0465AC0E968552DF1E44340B78DE727A8465AC02C44EF83F4E443408BFBCF8D9F465AC01FB459B8F7E4434032AFD4C698465AC058973686FAE4434014FFE64D91465AC0321AB50FFDE4434052528AF688465AC0AB4BD554FFE44340E623650E81465AC0601B391101E543408B5CC3F978465AC002E2CBEF02E54340C9AF66A270465AC031832FAC04E54340E1AFA9F169465AC0A4D0789B05E5434023E11EF869465AC0326BCF8EFDE44340048D8D376B465AC0207C8157FDE44340D4BBC65976465AC06CD7046AFBE443409F0034EF79465AC0EC6529B4FAE44340B0913B227F465AC04721B895F9E443401DE9D13583465AC0BA818D9BF8E44340B190CBD187465AC0313E1C61F7E44340918776E98A465AC0EDEB3280F6E44340BCF8F00991465AC05D3A2AA7F4E443404C7643519A465AC015623891F1E443405ABDB1DE9E465AC0471381CCEFE44340D277216CA3465AC0B05EC807EEE44340E7C8029BA5465AC0214D5B14EDE44340F9E503BAA9465AC0024AC248EBE44340D2AA3B96AC465AC08194480BEAE44340A8C1FF14B1465AC0625255EAE7E443400F4BE584B5465AC08F653EB2E5E443401D8D81F5B6465AC0D045E6F9E4E443409C1DEEF4B6465AC055F94310EEE44340
7	2014004547	049	31605	2014-07-25	GDL Encroachment Strip Deannexation	No. 788	D	\N	Granby	0106000020AD100000010000000103000000010000000500000097A9F9EDAA7C5AC0A7A82700960D444037AC6791A97C5AC0094008D4960D44403E64F638AC7C5AC0B8F37ABCF20C44400612D96AAD7C5AC04F18C85AF10C444097A9F9EDAA7C5AC0A7A82700960D4440
8	675399	029	19850	2014-08-21	West End Addition Lot 1, Allen #2 Disconnection	No. 2, 2014	D	\N	Delta	0106000020AD100000010000000103000000010000000600000066D2F75796085BC006AD44DBCF604340D5BECA6574085BC0069E479FCF604340B3F88A296C085BC02EF6D34AB7604340F7497A386B085BC0770A5599B4604340E0E42B0596085BC06F2AAA77B560434066D2F75796085BC006AD44DBCF604340
9	850193	085	51745	2013-09-23	6900 Road DeAnnexation	No. 2325	D	\N	Montrose	0106000020AD100000010000000103000000010000000D000000849D41EC5FF35AC056E2147C593D4340FD6FCC595FF35AC0E3B7D2A15A3D4340DD253C905EF35AC0E015DDB25B3D434046CAE2B15DF35AC0379F96985C3D4340DC0BFB7E5CF35AC0A5E39EAA5D3D434028BE14C355F35AC0C096814B633D4340720E4A8454F35AC0010FE839643D4340A95B3F3953F35AC033EDACFA643D4340F89535B650F35AC0C0F0A33E663D4340A4C0B52350F35AC0B8A27088663D43402ACD2A3750F35AC0313AB568593D434082CFCDE15DF35AC0D2A79079593D4340849D41EC5FF35AC056E2147C593D4340
10	869901	045	64255	2015-10-26	Territories Adjoining Airport and Bridge Facility	No. 19, 2015	D	\N	Rifle	0106000020AD100000040000000103000000010000000500000006EA79B501EE5AC01B2C7B81A5C143400FD8E6FD05EE5AC01A8D9E28B8C14340EE1A9D16DCED5AC0E9087A5ACAC143409D6AFEBCD8ED5AC070608BA8B5C1434006EA79B501EE5AC01B2C7B81A5C1434001030000000100000007000000ACA313C139EE5AC0B2B8415DC3C24340563FA3353AEE5AC0A7019985D8C243409B2A388337EE5AC0A2ECAFAED9C2434001B403F02AEE5AC01A1D2B86D8C24340B497967EC3ED5AC02690E8ACCEC24340032A32ACC3ED5AC028CAA2C2B7C24340ACA313C139EE5AC0B2B8415DC3C2434001030000000100000005000000457EF34F97EE5AC0595A3A3BDFC24340B80D71924DEE5AC057D45167DBC243407BAE33544EEE5AC02F1128C9C5C24340C5A6CB8498EE5AC0067F7979C9C24340457EF34F97EE5AC0595A3A3BDFC24340010300000001000000050000009B0A58A7C2ED5AC0B4F1BD46ECC24340B31EE7B465ED5AC0B834685AE3C24340F1B101B465ED5AC04F6B3A1FC8C243403ED524EAC2ED5AC0A6C1ABFCCEC243409B0A58A7C2ED5AC0B4F1BD46ECC24340
\.


--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 201
-- Name: deannexations_gid_seq; Type: SEQUENCE SET; Schema: bounds; Owner: postgres
--

SELECT pg_catalog.setval('deannexations_gid_seq', 10, true);


--
-- TOC entry 4213 (class 2606 OID 29729)
-- Name: deannexations_pkey; Type: CONSTRAINT; Schema: bounds; Owner: postgres
--

ALTER TABLE ONLY deannexations
    ADD CONSTRAINT deannexations_pkey PRIMARY KEY (gid);


--
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 200
-- Name: deannexations; Type: ACL; Schema: bounds; Owner: postgres
--

REVOKE ALL ON TABLE deannexations FROM PUBLIC;
REVOKE ALL ON TABLE deannexations FROM postgres;
GRANT ALL ON TABLE deannexations TO postgres;
GRANT SELECT ON TABLE deannexations TO codemog;


-- Completed on 2016-10-02 19:12:53 CDT

--
-- PostgreSQL database dump complete
--

