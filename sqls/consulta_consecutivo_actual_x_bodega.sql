  SELECT dba.pp_tipo_documento_bodega.id_empresa,   
         dba.pp_tipo_documento_bodega.id_punto_venta,   
         dba.pp_tipo_documento_bodega.id_documento,   
         dba.pp_tipo_documento_bodega.num_documento,   
         dba.pp_tipo_documento_bodega.id_usuario,   
         dba.pp_tipo_documento_bodega.fec_registro,   
         dba.pp_tipo_documento_bodega.tipo_comprobante,   
         dba.pp_tipo_documento_bodega.ind_contabil_individual  
    FROM dba.pp_tipo_documento_bodega  
   WHERE dba.pp_tipo_documento_bodega.id_documento = 'RP'   ;
