INSERT INTO LOCATION (LOC_CITY, LOC_COUNTRY) VALUES
('Lebowakgomo','South Africa'),
('Potchefstroom','South Africa'),
('Graaff Reinet','South Africa'),
('Rustenburg','South Africa'),
('Brandfort','South Africa'),
('Vryheid','South Africa'),
('Vereeniging','South Africa'),
('Brits','South Africa'),
('Bethlehem','South Africa'),
('Ubomba','South Africa'),
('Polokwane','South Africa'),
('Springbok','South Africa'),
('Thohoyandou','South Africa'),
('Pietermaritzburg','South Africa'),
('Poffader','South Africa'),
('Carnarvon','South Africa'),
('Kroonstad','South Africa'),
('Alexander Bay','South Africa'),
('Bloemhof','South Africa'),
('Hermanus','South Africa'),
('Bethal','South Africa'),
('Upington','South Africa'),
('Tzaneen','South Africa'),
('Vanhynsdorp','South Africa'),
('Kimberley','South Africa'),
('Chaguaramas','Venezuela'),
('El Dorado','Venezuela'),
('El Manteco','Venezuela'),
('Caracas','Venezuela'),
('Barcelona','Venezuela'),
('Barinas','Venezuela'),
('Barquisimeto','Venezuela'),
('Ciudad Bolivar','Venezuela'),
('Coro','Venezuela'),
('Cumana','Venezuela'),
('Guanare','Venezuela'),
('La Guaira','Venezuela'),
('Los Teques','Venezuela'),
('Maracaibo','Venezuela'),
('Maracay','Venezuela'),
('Maturin','Venezuela'),
('Merida','Venezuela'),
('San Carlos','Venezuela'),
('San Cristobal','Venezuela'),
('San Felipe','Venezuela'),
('San Fernando de Apure','Venezuela'),
('San Juan De Los Morros','Venezuela'),
('Trujillo','Venezuela'),
('Tucupita','Venezuela'),
('Valencia','Venezuela'),
('Puerto Ayacucho','Venezuela'),
('La Asuncion','Venezuela'),
('El Tigre','Venezuela'),
('Ciudad Guayana','Venezuela'),
('Upata','Venezuela'),
('Puerto la Cruz','Venezuela'),
('Anaco','Venezuela'),
('Porlamar','Venezuela'),
('La Esmeralda','Venezuela'),
('Guasdualito','Venezuela'),
('Valle de la Pascua','Venezuela'),
('Zaraza','Venezuela'),
('Altagracia de Orituco','Venezuela'),
('Carora','Venezuela'),
('Puerto Cabello','Venezuela'),
('Maiquetia','Venezuela'),
('Ocumare del Tuy','Venezuela'),
('Calabozo','Venezuela'),
('Acarigua','Venezuela'),
('Cabimas','Venezuela'),
('Santa Rita','Venezuela'),
('San Carlos del Zulia','Venezuela'),
('Machiques','Venezuela'),
('Valera','Venezuela'),
('Punto Fijo','Venezuela'),
('Carupano','Venezuela'),
('Sunbury','Australia'),
('Sydney','Australia'),
('Horsham','Australia'),
('Hughenden','Australia'),
('Northam','Australia'),
('Selkirk','Canada'),
('Lansdowne House','Canada'),
('Paulatuk','Canada'),
('Attawapiskat','Canada'),
('Rimouski','Canada'),
('Grand Prairie','Canada'),
('La Sarre','Canada'),
('Mingan','Canada'),
('Prince Albert','Canada'),
('Moose Jaw','Canada'),
('Powell River','Canada'),
('Pangnirtung','Canada'),
('Nelson','Canada'),
('Peace River','Canada'),
('Cobalt','Canada'),
('New Glasgow','Canada'),
('Arctic Bay','Canada'),
('Burwash Landing','Canada'),
('Saint-Georges','Canada'),
('Vancouver','Canada'),
('Medicine Hat','Canada'),
('Naujaat','Canada'),
('Lethbridge','Canada'),
('Sudbury','Canada'),
('Swift Current','Canada'),
('Regina','Canada'),
('Cornwall','Canada'),
('Taloyoak','Canada'),
('Tuktoyaktuk','Canada'),
('Deer Lake','Canada'),
('London','Canada'),
('Red Lake','Canada'),
('Stephenville','Canada'),
('Ennadai','Canada'),
('Happy Valley - Goose Bay','Canada'),
('Williams Lake','Canada'),
('Prince Rupert','Canada'),
('Chilliwack','Canada'),
('Radisson','Canada'),
('Montreal','Canada'),
('Warrington','United Kingdom'),
('Newbury','United Kingdom'),
('Swindon','United Kingdom'),
('Wick','United Kingdom'),
('Dudley','United Kingdom'),
('Oxford','United Kingdom'),
('Hackney','United Kingdom'),
('Matlock','United Kingdom'),
('Lochgilphead','United Kingdom'),
('Northallerton','United Kingdom'),
('Edinburgh','United Kingdom'),
('Sunderland','United Kingdom'),
('Swansea','United Kingdom'),
('Wokingham','United Kingdom'),
('City of Westminster','United Kingdom'),
('Solihull','United Kingdom'),
('Rochdale','United Kingdom'),
('Hirosaki','Japan'),
('Kure','Japan'),
('Hachinohe','Japan'),
('Matsumoto','Japan'),
('Tokyo','Japan'),
('Chiba','Japan'),
('Fukui','Japan'),
('Fukuoka','Japan'),
('Fukushima','Japan'),
('Gifu','Japan'),
('Hiroshima','Japan'),
('Morioka','Japan'),
('Nagano','Japan'),
('Nagasaki','Japan'),
('Nagoya','Japan'),
('Naha','Japan'),
('Niigata','Japan'),
('Oita','Japan'),
('Okayama','Japan'),
('Osaka','Japan'),
('Otsu','Japan'),
('Sapporo','Japan'),
('Sendai','Japan');
------- grupo 2 ----------

INSERT INTO Role (rol_name)
VALUES ('Cliente');

INSERT INTO Role (rol_name)
VALUES ('Administrador');

INSERT INTO Role (rol_name)
VALUES ('Checkin');

INSERT INTO Role (rol_name)
VALUES ('Reclamo');

INSERT INTO Role (rol_name)
VALUES ('Cargador');

INSERT INTO Users(use_document_id, use_email, use_last_name, use_name, use_password)
VALUES ('9784673', 'admin@vacanze.com', 'Virtuoso', 'Francisco', MD5('admin123'));

INSERT INTO Users(use_document_id, use_email, use_last_name, use_name, use_password)
VALUES ('10754927', 'checkin@vacanze.com', 'Gomes', 'Francisco', MD5('checkin123'));

INSERT INTO Users(use_document_id, use_email, use_last_name, use_name, use_password)
VALUES ('12345678', 'reclamo@vacanze.com', 'Omar', 'Jorge', MD5('reclamo123'));

INSERT INTO Users(use_document_id, use_email, use_last_name, use_name, use_password)
VALUES ('8654826', 'cargador@vacanze.com', 'Salazar', 'Marcos', MD5('cargador123'));

INSERT INTO Users(use_document_id, use_email, use_last_name, use_name, use_password)
VALUES ('20766589', 'cliente@vacanze.com', 'Martinez', 'Carlos', MD5('cliente123'));

INSERT INTO USERS (use_document_id, use_email, use_last_name, use_name, use_password)
VALUES ('23613704', 'larry.page@vacanze.com', 'Page', 'Larry', MD5('google'));

INSERT INTO USERS (use_document_id, use_email, use_last_name, use_name, use_password)
VALUES ('23613704', 'reggaebob@vacanze.com', 'Marley', 'Bob', MD5('jah'));

INSERT INTO User_Role(usr_rol_id, usr_use_id) VALUES (2, 1 );
INSERT INTO User_Role(usr_rol_id, usr_use_id) VALUES (3, 2);
INSERT INTO User_Role(usr_rol_id, usr_use_id) VALUES (4, 3);
INSERT INTO User_Role(usr_rol_id, usr_use_id) VALUES (5, 4);
INSERT INTO User_Role(usr_rol_id, usr_use_id) VALUES (1, 5);
INSERT INTO User_Role(usr_rol_id, usr_use_id) VALUES (1, 6);
INSERT INTO User_Role(usr_rol_id, usr_use_id) VALUES (1, 7);


------- grupo 6 ----------

INSERT INTO hotel (hot_id, hot_name, hot_room_qty, hot_room_capacity, hot_is_active,
                   hot_address_specs, hot_room_price, hot_website, hot_phone, hot_picture,
                   hot_stars, hot_loc_fk)
VALUES (1, 'Prueba 1', 30, 4, true, 'Alguna direccion, algun lugar', 234.5, null, null, null, 4, 1),
       (2, 'Prueba 2', 40, 2, true, 'Alguna direccion, algun lugar', 500.5, null, '+58 4253 2732',
        null, 5, 10),
       (3, 'Prueba 3', 40, 2, true, 'Alguna direccion, algun lugar', 500.5, null, '+58 4253 2732',
        null, 5, 10);


-------------------------------Grupo 3---------------------------------------------------
INSERT INTO public.Plane(
	pla_autonomy, pla_isActive, pla_capacity, pla_loadingCap, pla_model)
	VALUES (100,true, 50, 1000, 'Boeing 1');
INSERT INTO public.Plane(
	pla_autonomy, pla_isActive, pla_capacity, pla_loadingCap, pla_model)
	VALUES (150,true, 40, 1000, 'Boeing 2');
INSERT INTO public.Plane(
	pla_autonomy, pla_isActive, pla_capacity, pla_loadingCap, pla_model)
	VALUES (111,true, 30, 1000, 'Boeing 3');
INSERT INTO public.Plane(
	pla_autonomy, pla_isActive, pla_capacity, pla_loadingCap, pla_model)
	VALUES (200,true, 50, 2000, 'Boeing 4');
INSERT INTO public.Plane(
	pla_autonomy, pla_isActive, pla_capacity, pla_loadingCap, pla_model)
	VALUES (80,true, 10, 1000, 'Boeing 5');
--------------Grupo 5 --------------------------------------------
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Toyota','Corolla',3,true,55,'aa11ab1','auto1.jpg',1);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('VolksWagen','Golf',3,false,70.5,'aa11ab2','auto2.jpg',1);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Honda','Civic',3,true,40,'aa12ab1','auto3.jpg',2);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Ford','Fusion',3,false,60,'aa12ab2','auto4.jpg',2);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Ford','F-150',4,true,80,'aa13ab1','auto5.jpg',3);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Honda','Civic',3,false,50.2,'aa13ab2','auto6.jpg',3);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Toyota','Camry',3,true,60,'aa14ab1','auto7.jpg',4);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Honda','Accord',3,false,54,'aa14ab2','auto8.jpg',4);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Honda','CR-V',3,true,55,'aa15ab1','auto9.jpg',5);
INSERT INTO AUTOMOBILE(AUT_MAKE,AUT_MODEL,AUT_CAPACITY,AUT_ISACTIVE,AUT_PRICE,AUT_LICENSE,AUT_PICTURE,AUT_LOC_FK)
VALUES('Chevrolet','Silverado',5,false,69.8,'aa15ab2','auto10.jpg',5);
--------------Grupo 8 ---------------------------------------------
INSERT INTO Ship(shi_id, shi_name, shi_capacity ,shi_loadingcap, shi_model,shi_line, shi_picture ) VALUES (default, 'concordia', 100, 1000, 'Modelo1','Linea1', '1.jpg' );
INSERT INTO Ship(shi_id, shi_name, shi_capacity ,shi_loadingcap, shi_model,shi_line, shi_picture ) VALUES (default, 'Lmao', 500, 2000, 'Modelo2','Linea2', '3.jpg' );
Insert Into Cruise(cru_id,cru_shi_fk,cru_departuredate,cru_arrivaldate,cru_price,cru_loc_arrival,cru_loc_departure) values (default,2,'2019/2/11','2019/2/12',2000,1,2);


--------------Grupo 13---------------------------------
INSERT into Automobile(aut_make,aut_model,aut_capacity,aut_isactive,aut_price,aut_license,aut_picture,aut_loc_fk)
VALUES('FIAT','UNO',5,true,25.99,'TAT77E','fiatuno.jgp',1);

INSERT into Automobile(aut_make,aut_model,aut_capacity,aut_isactive,aut_price,aut_license,aut_picture,aut_loc_fk)
VALUES('FIAT','FIRE',5,true,24.99,'MEB19G','fiatfire.jgp',1);

INSERT into Automobile(aut_make,aut_model,aut_capacity,aut_isactive,aut_price,aut_license,aut_picture,aut_loc_fk)
VALUES('BMW','Z3',4,true,35.99,'DDB43S','bmwz3.jpg',2);

INSERT into Automobile(aut_make,aut_model,aut_capacity,aut_isactive,aut_price,aut_license,aut_picture,aut_loc_fk)
VALUES('Audi','Q7',6,true,40.99,'AA1239G','audiq7.jpg',3);

INSERT into Automobile(aut_make,aut_model,aut_capacity,aut_isactive,aut_price,aut_license,aut_picture,aut_loc_fk)
VALUES('Sin','Reserva',4,true,34.99,'Bueno','',2);

INSERT into Automobile(aut_make,aut_model,aut_capacity,aut_isactive,aut_price,aut_license,aut_picture,aut_loc_fk)
VALUES('Sin2','Reserva2',3,true,36.99,'Bueno2','',2);

INSERT INTO public.res_roo(rr_checkinDate,rr_checkoutDate,rr_timestamp,rr_use_fk,rr_hot_fk)
values('10/12/2018', '02/01/2019','10/12/2018', 1, 1 );
INSERT INTO public.res_roo(rr_checkinDate,rr_checkoutDate,rr_timestamp,rr_use_fk,rr_hot_fk)
values('10/11/2018', '02/01/2019','10/11/2018', 2, 2 );
INSERT INTO public.res_roo(rr_checkinDate,rr_checkoutDate,rr_timestamp,rr_use_fk,rr_hot_fk)
values('10/10/2018', '02/01/2019','10/10/2018', 1, 1 );
INSERT INTO public.res_roo(rr_checkinDate,rr_checkoutDate,rr_timestamp,rr_use_fk,rr_hot_fk)
values('10/09/2018', '02/01/2019','10/09/2018', 2, 2 );

INSERT INTO public.Res_Aut(ra_pickupdate, ra_returndate,ra_timestamp,ra_use_fk, ra_aut_fk)
values ('01/03/2019', '01/05/2019','01/03/2019', 1, 1);
INSERT INTO public.Res_Aut(ra_pickupdate, ra_returndate,ra_timestamp,ra_use_fk, ra_aut_fk)
values ('01/04/2019', '01/07/2019','01/04/2019', 2, 2);
INSERT INTO public.Res_Aut(ra_pickupdate, ra_returndate,ra_timestamp,ra_use_fk, ra_aut_fk)
values ('01/02/2019', '01/07/2019','01/02/2019', 2, 3);
INSERT INTO public.Res_Aut(ra_pickupdate, ra_returndate,ra_timestamp,ra_use_fk, ra_aut_fk)
values ('02/03/2019', '02/07/2019','02/03/2019', 1, 4);
INSERT INTO public.Res_Aut(ra_pickupdate, ra_returndate,ra_timestamp,ra_use_fk, ra_aut_fk)
values ('02/03/2019', '02/09/2019','02/03/2019', 1, 1);

-------------Grupo 9 ------------------------------------
INSERT INTO CLAIM (cla_title,cla_descr,cla_status)values('Mi primer reclamo','perdi mi maleta negra, nunca aparecio cuando llegue a mi destino','ABIERTO');
INSERT INTO CLAIM (cla_title,cla_descr,cla_status)values('equipaje de mano','deje en el asiento de el avion mi equipaje de mano es color rojo con puntos negros','ABIERTO');
INSERT INTO CLAIM (cla_title,cla_descr,cla_status)values('equipaje dejado en la sala de espera ','Hola, deje mi equipaje en la sala de espera del aeropuerto intermacional de maiquetia, era un bolso pequeno aproximadamente de 30 cm','ABIERTO');
INSERT INTO CLAIM (cla_title,cla_descr,cla_status)values('mi vuelo se retraso','Buenas noches, mi vuelo se retraso pero el personal me comenta que mi equipaje lo mandaron a otro avion pero no saben en cual. Les agradezco pronta respuesta','ABIERTO');

INSERT INTO BAGGAGE (BAG_STATUS,BAG_DESCR ) VALUES('EXTRAVIADO','maleta negra para mi prueba unitaria');
INSERT INTO BAGGAGE (BAG_STATUS,BAG_DESCR ) VALUES('EXTRAVIADO','maleta negra');
INSERT INTO BAGGAGE (BAG_STATUS,BAG_DESCR ,BAG_CLA_FK) VALUES('EXTRAVIADO','maleta roja con puntos negros',2);
INSERT INTO BAGGAGE (BAG_STATUS,BAG_DESCR ,BAG_CLA_FK) VALUES('EXTRAVIADO','maleta pequeña aproximadamente 20 kg color negra',3);
INSERT INTO BAGGAGE (BAG_STATUS,BAG_DESCR ,BAG_CLA_FK) VALUES('EXTRAVIADO','maleta azul tamaño medio',4);
INSERT INTO BAGGAGE (BAG_STATUS,BAG_DESCR ,BAG_CLA_FK) VALUES('EXTRAVIADO','maleta vinotinto con logo de la FVF',4);
INSERT INTO BAGGAGE (BAG_STATUS,BAG_DESCR ,BAG_CLA_FK) VALUES('EXTRAVIADO','maleta rosada con dibujos de niña',1);


------- grupo 10 ----------

-- Cliente Generico --
INSERT INTO Travel(tra_name, tra_descr, tra_use_fk, tra_ini, tra_end)
VALUES ('Surf Trip', 'Surf trip arroud Vnzla', 5, '2019-06-10', '2019-07-10');
INSERT INTO Travel(tra_name, tra_descr, tra_use_fk, tra_ini, tra_end)
VALUES ('Family', 'Sushi Vacation', 5, '2019-08-10', '2019-09-10');
-- Cliente Larry Page -- 
INSERT INTO Travel(tra_name, tra_descr, tra_use_fk, tra_ini, tra_end)
VALUES ('Business Trip', 'About businnes, I am busy', 6, '2019-10-10', '2019-11-10');

-- Surf Trip --
INSERT INTO TRA_LOC (tl_tra_fk, tl_loc_fk) VALUES (1,37); -- La Guaira
INSERT INTO TRA_LOC (tl_tra_fk, tl_loc_fk) VALUES (1,65); -- Puerto Cabello
INSERT INTO TRA_LOC (tl_tra_fk, tl_loc_fk) VALUES (1,76); -- Carupano
INSERT INTO TRA_LOC (tl_tra_fk, tl_loc_fk) VALUES (1,56); -- Puerto La Cruz
-- Sushi Vacation -- 
INSERT INTO TRA_LOC (tl_tra_fk, tl_loc_fk) VALUES (2,143); -- Tokyo
INSERT INTO TRA_LOC (tl_tra_fk, tl_loc_fk) VALUES (2,158); -- Osaka

Insert Into Cruise(cru_id,cru_shi_fk,cru_departuredate,cru_arrivaldate,cru_price,cru_loc_arrival,cru_loc_departure) values (default,2,'2019/2/11','2019/2/12',2000,1,2);

