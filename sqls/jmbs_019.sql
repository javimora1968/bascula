print   'idx_bs_encab_reg_proveedor'
create nonclustered index idx_bs_encab_reg_proveedor
on dba.bs_encab_reg_proveedor (id_empresa, estado, ind_entrada)
on 'default'
go
