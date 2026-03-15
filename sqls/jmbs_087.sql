
-----------------------------------------------------------------------------
-- DDL for Index 'idx_bs_encab_reg_proveedor'
-----------------------------------------------------------------------------
print 'Creating Index idx_bs_encab_reg_proveedor'
go

create nonclustered index idx_bs_encab_reg_proveedor 
on dba.bs_encab_reg_proveedor ( id_empresa, estado, ind_entrada,cod_zona)
go 



-----------------------------------------------------------------------------
-- DDL for Index 'idx_bs_encab_reg_proveedor2'
-----------------------------------------------------------------------------
print 'Creating Index idx_bs_encab_reg_proveedor2'
go

create nonclustered index idx_bs_encab_reg_proveedor2 
on dba.bs_encab_reg_proveedor ( id_empresa, placa_vehiculo, estado,cod_zona)
go 


-----------------------------------------------------------------------------
-- DDL for Index 'idx_cons_basc_atras_adelante'
-----------------------------------------------------------------------------
print 'Creating Index idx_cons_basc_atras_adelante'
go

create nonclustered index idx_cons_basc_atras_adelante 
on dba.bs_encab_reg_proveedor ( id_empresa, tipo_doc, n_doc, ind_entrada,cod_zona)
go 



-----------------------------------------------------------------------------
-- DDL for Index 'idx_para_ventanas_inventarios'
-----------------------------------------------------------------------------
print 'Creating Index idx_para_ventanas_inventarios'
go

create nonclustered index idx_para_ventanas_inventarios 
on dba.bs_encab_reg_proveedor ( id_empresa, estado, ind_entrada, ind_inventario, fec_hora_salida,cod_zona)
go 




-----------------------------------------------------------------------------
-- DDL for Index 'idx_tipo_numero_estado_flete'
-----------------------------------------------------------------------------
print 'Creating Index idx_tipo_numero_estado_flete'
go

create nonclustered index idx_tipo_numero_estado_flete 
on dba.bs_encab_reg_proveedor ( id_empresa, tipo_doc, n_doc, estado, ind_liq_fletes,cod_zona)
go 



-----------------------------------------------------------------------------
-- DDL for Index 'idx_ventanas_consultar_bascula'
-----------------------------------------------------------------------------
print 'Creating Index idx_ventanas_consultar_bascula'
go

create nonclustered index idx_ventanas_consultar_bascula 
on dba.bs_encab_reg_proveedor ( id_empresa, ind_entrada, n_doc, estado,cod_zona)
go 

