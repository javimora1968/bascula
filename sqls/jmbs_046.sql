alter table dba.bs_config_bascula
        drop constraint bs_config__11687232161;

alter table dba.bs_config_bascula
       add constraint bs_config__11687232161 primary key  clustered
       (id_empresa,
       tipo_operacion);

