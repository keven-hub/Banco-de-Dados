use taxi;

select * from fhvhv_tripdata;

ALTER TABLE fhvhv_tripdata
rename column hvfhs_license_num to hvfhs_numero_da_licenca,
rename column dispatching_base_num to base_de_envio,
rename column originating_base_num to base_origem,
rename column request_datetime to data_hora_da_requisicao,
rename column on_scene_datetime to data_hora_no_local,
rename column pickup_datetime to data_hora_da_retirada,
rename column dropoff_datetime to data_e_hora_de_devolucao,
rename column PULocationID to id_do_local_de_retirada,
rename column DOLocationID to id_Local_entrega,
rename column trip_miles to milhas_da_viagem,
rename column trip_time to tempo_da_viagem,
rename column base_passenger_fare to tarifa_base_do_passageiro,
rename column tolls to pedagios,
rename column bcf to valor_total_arrecadado_na_viagem,
rename column sales_tax to imposto_sobre_vendas,
rename column congestion_surcharge to sobretaxa_de_congestionamento,
rename column airport_fee to taxa_de_aeroporto,
rename column tips to dicas,
rename column driver_pay to pagamento_do_motorista,
rename column shared_request_flag to bandeira_de_solicitacao_compartilhada,
rename column shared_match_flag to bandeira_de_partida_compartilhada,
rename column access_a_ride_flag to acessar_bandeira_de_corrida,
rename column wav_request_flag to sinal_de_requisicao,
rename column wav_match_flag to bandeira_de_correspondencia,
rename column cbd_congestion_fee to taxa_de_congestionamento;




