alter table dba.bs_analisis_item
        drop constraint bs_analisis_item;

alter table dba.bs_analisis_item
       add constraint bs_analisis_item primary key  nonclustered
       (id_empresa,
       tipo_doc,
       n_doc,
       id_item,
       caracteristica,
       cod_zona);

