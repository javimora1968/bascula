
-----------------------------------------------------------------------------
-- DDL for Index 'idx_cons_basc_atras_adelante'
-----------------------------------------------------------------------------
print 'Creating Index idx_cons_basc_atras_adelante'
go

create nonclustered index idx_cons_basc_atras_adelante 
on dba.bs_encab_reg_proveedor ( id_empresa, tipo_doc, n_doc, ind_entrada)
go 


