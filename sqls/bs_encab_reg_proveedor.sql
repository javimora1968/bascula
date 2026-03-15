create table dba.bs_encab_reg_proveedor
       (id_empresa char(2) not null,
       tipo_doc char(2) not null,
       n_doc numeric(6,0) not null,
       id_proveedor char(15) not null,
       origen char(3) not null,
       placa_vehiculo char(15) not null,
       cedula_conductor char(15) not null,
       nombre_conductor varchar(60) not null,
       id_item char(15) not null,
       unidad char(2) not null,
       tara_origen numeric(12,2) not null,
       bruto_origen numeric(12,2) not null,
       peso_entrada numeric(12,2) not null,
       ind_empacado char(1) not null,
       tipo_empaque char(2) null,
       cant_empaques numeric(12,2) null,
       tara_unitaria_empaque numeric(12,3) null,
       fecha_hora_entrada datetime not null,
       id_usuario char(4) not null,
       fec_registro datetime not null,
       estado char(1) not null,
       fec_hora_salida datetime null,
       peso_salida numeric(12,2) not null,
       tara_total_empaque numeric(12,2) null,
       peso_neto numeric(12,2) not null,
       obs_entrada varchar(200) null,
       obs_salida varchar(200) null,
       obs_anulacion varchar(200) null,
       ind_entrada char(1) not null,
       tipo_cliente char(1) null,
       cant_teorica numeric(12,2) null,
       cant_real numeric(12,2) null,
       n_orden numeric(6,0) null,
       peso_salida_alterno numeric(12,2) null,
       ind_peso_manual_in char(1) null,
       ind_peso_manual_out char(1) null,
       id_usr_peso_manual_in char(4) null,
       id_usr_peso_manual_out char(4) null,
       fec_hora_peso_manual_in datetime null,
       fec_hora_peso_manual_out datetime null,
       analizado char(1) null,
       id_transportadora char(15) null,
       ind_inventario char(1) null,
       ind_plano char(1) null,
       consec_item_orden numeric(2,0) null,
       neto_silo numeric(12,2) null,
       id_ruta char(4) null,
       num_factura numeric(16,0) null,
       ind_liq_fletes char(1) null,
       id_liq_fletes char(2) null,
       cod_liq_fletes numeric(6,0) null,
       fecha_liq_fletes datetime null,
       ind_tiquete char(1) null,
       bodega_destino char(4) null,
       placa_trailer char(15) null,
       ind_consumo char(1) null,
       neto_original numeric(16,2) null,
       manifiesto_proveedor varchar(30) null,
       fecha_manifiesto datetime null,
       cod_motonave char(8) null) ;
 
alter table dba.bs_encab_reg_proveedor
       add constraint bs_encab_r_13287237861 primary key  clustered
       (id_empresa,
       tipo_doc,
       n_doc) ;
 
create nonclustered index idx_bs_encab_reg_proveedor
        on dba.bs_encab_reg_proveedor
       (id_empresa ,
       estado ,
       ind_entrada ) ;
 
create nonclustered index idx_bs_encab_reg_proveedor2
        on dba.bs_encab_reg_proveedor
       (id_empresa ,
       placa_vehiculo ,
       estado ) ;
 
insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'bs_encab_reg_proveedor',
       object_id('dba.bs_encab_reg_proveedor'),
        'dba',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
       ' ') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_empresa', 1,
        'id_empresa', 0 ,
        'id_empresa', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'tipo_doc', 2,
        'tipo_doc', 0 ,
        'tipo_doc', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'n_doc', 3,
        'n_doc', 0 ,
        'n_doc', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_proveedor', 4,
        'id_proveedor', 0 ,
        'id_proveedor', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'origen', 5,
        'origen', 0 ,
        'origen', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'placa_vehiculo', 6,
        'placa_vehiculo', 0 ,
        'placa_vehiculo', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'cedula_conductor', 7,
        'cedula_conductor', 0 ,
        'cedula_conductor', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'nombre_conductor', 8,
        'nombre_conductor', 0 ,
        'nombre_conductor', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_item', 9,
        'id_item', 0 ,
        'id_item', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'unidad', 10,
        'unidad', 0 ,
        'unidad', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'tara_origen', 11,
        'tara_origen', 0 ,
        'tara_origen', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'bruto_origen', 12,
        'bruto_origen', 0 ,
        'bruto_origen', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'peso_entrada', 13,
        'peso_entrada', 0 ,
        'peso_entrada', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_empacado', 14,
        'ind_empacado', 0 ,
        'ind_empacado', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'tipo_empaque', 15,
        'tipo_empaque', 0 ,
        'tipo_empaque', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'cant_empaques', 16,
        'cant_empaques', 0 ,
        'cant_empaques', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'tara_unitaria_empaque', 17,
        'tara_unitaria_empaque', 0 ,
        'tara_unitaria_empaque', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fecha_hora_entrada', 18,
        'fecha_hora_entrada', 0 ,
        'fecha_hora_entrada', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_usuario', 19,
        'id_usuario', 0 ,
        'id_usuario', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fec_registro', 20,
        'fec_registro', 0 ,
        'fec_registro', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'estado', 21,
        'estado', 0 ,
        'estado', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fec_hora_salida', 22,
        'fec_hora_salida', 0 ,
        'fec_hora_salida', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'peso_salida', 23,
        'peso_salida', 0 ,
        'peso_salida', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'tara_total_empaque', 24,
        'tara_total_empaque', 0 ,
        'tara_total_empaque', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'peso_neto', 25,
        'peso_neto', 0 ,
        'peso_neto', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'obs_entrada', 26,
        'obs_entrada', 0 ,
        'obs_entrada', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'obs_salida', 27,
        'obs_salida', 0 ,
        'obs_salida', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'obs_anulacion', 28,
        'obs_anulacion', 0 ,
        'obs_anulacion', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_entrada', 29,
        'ind_entrada', 0 ,
        'ind_entrada', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'tipo_cliente', 30,
        'tipo_cliente', 0 ,
        'tipo_cliente', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'cant_teorica', 31,
        'cant_teorica', 0 ,
        'cant_teorica', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'cant_real', 32,
        'cant_real', 0 ,
        'cant_real', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'n_orden', 33,
        'n_orden', 0 ,
        'n_orden', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'peso_salida_alterno', 34,
        'peso_salida_alterno', 0 ,
        'peso_salida_alterno', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_peso_manual_in', 35,
        'ind_peso_manual_in', 0 ,
        'ind_peso_manual_in', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_peso_manual_out', 36,
        'ind_peso_manual_out', 0 ,
        'ind_peso_manual_out', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_usr_peso_manual_in', 37,
        'id_usr_peso_manual_in', 0 ,
        'id_usr_peso_manual_in', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_usr_peso_manual_out', 38,
        'id_usr_peso_manual_out', 0 ,
        'id_usr_peso_manual_out', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fec_hora_peso_manual_in', 39,
        'fec_hora_peso_manual_in', 0 ,
        'fec_hora_peso_manual_in', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fec_hora_peso_manual_out', 40,
        'fec_hora_peso_manual_out', 0 ,
        'fec_hora_peso_manual_out', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'analizado', 41,
        'analizado', 0 ,
        'analizado', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_transportadora', 42,
        'Id Transportadora:', 0 ,
        'Id Transportadora', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_inventario', 43,
        'Ind Inventario:', 0 ,
        'Ind Inventario', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_plano', 44,
        'ind_plano', 0 ,
        'ind_plano', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'consec_item_orden', 45,
        'Id Liq Fletes:', 0 ,
        'consec_item_orden', 0,
       23 , '',
       0 , 65 , 87 ,
        '', 'N',
        '',
        'Tipo de documento de liquidacion de fletes',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'neto_silo', 46,
        'Cod Liq Fletes:', 0 ,
        'neto_silo', 0,
       24 , '[General]',
       0 , 65 , 197 ,
        '', 'N',
        '',
        'No. de documento de liquidacion de fletes',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_ruta', 47,
        'Fecha Liq Fletes:', 0 ,
        'id_ruta', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        'Fecha de liquidacion de fletes',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'num_factura', 48,
        'Ind Plano:', 0 ,
        'num_factura', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        'Para saber si se genero plano para cuarto control o no',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_liq_fletes', 49,
        'Consec Item Orden:', 0 ,
        'ind_liq_fletes', 0,
       24 , '[General]',
       0 , 65 , 129 ,
        '', 'N',
        '',
        'Para llevar rastro del consecutivo correspondiente al item de la orden tomada',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_liq_fletes', 50,
        'Neto Silo:', 0 ,
        'id_liq_fletes', 0,
       24 , '[General]',
       0 , 65 , 311 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'cod_liq_fletes', 51,
        'Id Ruta:', 0 ,
        'cod_liq_fletes', 0,
       23 , '',
       0 , 65 , 129 ,
        '', 'N',
        '',
        'Para los registros de salida dejar rastro de la ruta de salida usada',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fecha_liq_fletes', 52,
        'Num Factura:', 0 ,
        'fecha_liq_fletes', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        'Para llevar rastro del numero de la factura. Aplica en A.B.L.',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_tiquete', 53,
        'Ind Tiquete:', 0 ,
        'Ind Tiquete', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        'Aplica a las entradas para saber si traen tiquete de bascula de proveedor o no',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'bodega_destino', 54,
        'Bodega Destino:', 0 ,
        'Bodega Destino', 0,
       23 , '',
       0 , 65 , 129 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'placa_trailer', 55,
        'Placa Trailer:', 0 ,
        'Placa Trailer', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_consumo', 56,
        'Ind Consumo:', 0 ,
        'Ind Consumo', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'neto_original', 57,
        'Neto Original:', 0 ,
        'Neto Original', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'manifiesto_proveedor', 58,
        'Manifiesto Proveedor:', 0 ,
        'Manifiesto Proveedor', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fecha_manifiesto', 59,
        'Fecha Manifiesto:', 0 ,
        'Fecha Manifiesto', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'cod_motonave', 60,
        'Cod Motonave:', 0 ,
        'Cod Motonave', 0,
       23 , '',
       0 , 65 , 197 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
