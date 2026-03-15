
-----------------------------------------------------------------------------
-- DDL for Index 'idx_ventanas_consultar_bascula'
-----------------------------------------------------------------------------
print 'Creating Index idx_ventanas_consultar_bascula'
go

create nonclustered index idx_ventanas_consultar_bascula 
on dba.bs_encab_reg_proveedor ( id_empresa, ind_entrada, n_doc, estado)
go 


