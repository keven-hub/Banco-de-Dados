create database taxi;

use taxi;

select count(*) from `yellow_tripdata`;

select count(*) from `green_tripdata`;

select count(*) from `fhv_tripdata`;

select count(*) from `fhvhv_tripdata`;


select * from taxi.yellow_tripdata;

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

ALTER TABLE  yellow_tripdata
MODIFY COLUMN data_hora_retirada datetime COMMENT 'a data e hora em que o medidor foi acionado',
MODIFY COLUMN Data_hora_entrega datetime COMMENT 'a data e hora em que o medidor foi desativado',
MODIFY COLUMN  Distancia_viagem double COMMENT 'a distância percorrida em milhas informada pelo taxímetro.',
MODIFY COLUMN  Código_tarifa int COMMENT '''O código de tarifa final em vigor no final da viagem 
1 = Tarifa padrão 
2 = JFK 
3 = Newark 
4 = Nassau ou Westchester 
5 = Tarifa negociada 
6 = Viagem em grupo 
99 = Nulo/desconhecido''',
MODIFY COLUMN bandeira_armazenar_encaminhar text COMMENT '''Esta bandeira indica se o registro da viagem foi armazenado na memória do veículo antes de ser enviado para o fornecedor, também conhecido como 'armazenar e enviar depois', porque o veículo não tinha conexão com o servidor. 
Y = viagem armazenada e enviada depois 
N = viagem não é armazenada e enviada depois''',
MODIFY COLUMN taxímetro_ligado int COMMENT 'Zona de táxi TLC na qual o taxímetro estava ligado.',




