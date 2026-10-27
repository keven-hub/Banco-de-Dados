use taxi;

select * from taxi.green_tripdata;

ALTER TABLE green_tripdata
rename column VendorID to IDvendedor,
rename column lpep_pickup_datetime to data_hora_retirada,
rename column lpep_dropoff_datetime to data_hora_de_entrega,
rename column store_and_fwd_flag to sinalizador_de_armazenar_e_encaminhar,
rename column RatecodeID to ID_codigo_de_tarifa,
rename column PULocationID to ID_do_Local_de_Retirada ,
rename column lpep_pickup_datetime to data_hora_retirada,
rename column lpep_pickup_datetime to data_hora_retirada,
rename column lpep_pickup_datetime to data_hora_retirada,