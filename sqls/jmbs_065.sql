
-----------------------------------------------------------------------------
-- DDL for Index 'idx_para_ventanas_inventarios'
-----------------------------------------------------------------------------
print 'Creating Index idx_para_ventanas_inventarios'
go

create nonclustered index idx_para_ventanas_inventarios 
on dba.bs_encab_reg_proveedor ( id_empresa, estado, ind_entrada, ind_inventario, fec_hora_salida)
go 


