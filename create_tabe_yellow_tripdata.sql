create database taxi;

use taxi;

select count(*) from `yellow_tripdata`;

select count(*) from `green_tripdata`;

select count(*) from `fhv_tripdata`;

select count(*) from `fhvhv_tripdata`;


select * from taxi.yellow_tripdata;

select * from taxi.green_tripdata;

select * from taxi.fhv_tripdata;

select * from taxi.fhvhv_tripdata;

ALTER TABLE yellow_tripdata
rename COLUMN data_hora to data_hora_retirada,
rename column tpep_dropoff_datetime to Data_hora_entrega,
rename column passenger_count to Contagem_de_passageiros,
rename column trip_distance to Distancia_viagem,
rename column RatecodeID to Código_tarifa,
rename column store_and_fwd_flag to bandeira_armazenar_encaminhar,
rename column PULocationID to taxímetro_ligado,
rename column DOLocationID to taxímetro_desligado,
rename column payment_type to tipo_de_pagamento,
rename column fare_amount to valor_da_corrida,
rename column extra to sobretaxas_diversas,
rename column mta_tax to imposto_acionado_tarifa_uso,
rename column tip_amount to Valor_da_gorjeta,
rename column tolls_amount to pedágios_pagos_na_viagem,
rename column improvement_surcharge to sobretaxa_de_melhoria,
rename column total_amount to valor_total,
rename column congestion_surcharge to sobretaxa_de_congestionamento,
rename column Airport_fee to Taxa_de_aeroporto,
rename column cbd_congestion_fee to taxa_de_congestionamento;
