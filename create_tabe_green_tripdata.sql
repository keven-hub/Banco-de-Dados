use taxi;

select * from taxi.green_tripdata;

ALTER TABLE green_tripdata
rename column VendorID to IDvendedor,
rename column lpep_pickup_datetime to data_hora_retirada,
rename column lpep_dropoff_datetime to data_hora_de_entrega,
rename column store_and_fwd_flag to sinalizador_de_armazenar_e_encaminhar,
rename column RatecodeID to ID_codigo_de_tarifa,
rename column PULocationID to ID_do_Local_de_Retirada ,
rename column DOLocationID to ID_do_local_de_destino,
rename column passenger_count to contagem_de_passageiros,
rename column trip_distance to distância_da_viagem,
rename column fare_amount to valor_da_corrida,
rename column extra to extras_e_sobretaxas_diversas,
rename column mta_tax to imposto,
rename column tip_amount to valor_da_gorjeta,
rename column tolls_amount to valor_dos_pedágios,
rename column ehail_fee to taxa_de_chamada_eletrônica,
rename column improvement_surcharge to sobretaxa_de_melhoria,
rename column total_amount to quantia_total,
rename column payment_type to tipo_de_pagamento,
rename column trip_type to tipo_de_viagem,
rename column congestion_surcharge to sobretaxa_de_congestionamento,
rename column cbd_congestion_fee to taxa_de_congestionamento_cbd;

ALTER TABLE taxi.green_tripdata
MODIFY COLUMN data_hora_retirada datetime COMMENT 'a data e hora em que o medidor foi acionado',
MODIFY COLUMN data_hora_entrega datetime COMMENT 'a data e hora em que o medidor foi desativado',
MODIFY COLUMN  datetime COMMENT 'a data e hora em que o medidor foi acionado',






MODIFY COLUMN  Distancia_viagem double COMMENT 'a distância percorrida em milhas informada pelo taxímetro.',