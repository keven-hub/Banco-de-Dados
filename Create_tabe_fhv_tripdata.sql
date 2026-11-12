use taxi;

ALTER TABLE fhv_tripdata
rename column dispatching_base_num to base_de_envio,
rename column  pickup_datetime to data_hora_retirada,
rename column  dropOff_datetime to data_hora_devolucao,
rename column PUlocationID to id_local_retirada,
rename column DOlocationID to id_local_entrega,
rename column SR_Flag to flag_SR,
rename column Affiliated_base_number to numero_base_afiliada;



