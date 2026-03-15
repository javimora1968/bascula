alter table dba.bs_log_cambio_datos
        drop constraint pk_bs_log_cambio_dato;

alter table dba.bs_log_cambio_datos
       add constraint pk_bs_log_cambio_dato primary key  nonclustered
       (id_empresa,
       tipo_doc,
       n_doc,
       fecha_cambio,
       cod_zona);

