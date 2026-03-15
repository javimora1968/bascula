print   'idx_bs_encab_reg_proveedor2'
create nonclustered index idx_bs_encab_reg_proveedor2
on dba.bs_encab_reg_proveedor (id_empresa, placa_vehiculo, estado)
on 'default'
go
