  UPDATE dba.bs_log_cambio_datos  
     SET cod_zona = 'AG'  
   WHERE dba.bs_log_cambio_datos.cod_zona is null   ;
