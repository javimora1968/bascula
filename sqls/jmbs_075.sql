alter table dba.bs_encab_reg_proveedor
        drop constraint bs_encab_r_13287237861;

alter table dba.bs_encab_reg_proveedor
       add constraint bs_encab_r_13287237861 primary key  clustered
       (id_empresa,
       tipo_doc,
       n_doc,
       cod_zona);

