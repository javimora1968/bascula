create table dba.bs_config
       (id_empresa char(2) not null,
       ind_une_observaciones char(1) not null,
       ind_tipo_cliente_default char(1) not null,
       ind_silos char(1) null,
       ind_factura char(1) null,
       ind_ruta_entrada char(1) null,
       ind_inv_precio_venta char(1) null,
       ind_destino char(1) null,
       ind_unidades char(1) null,
       ind_promedio_salidas char(1) null,
       ind_punto_venta char(1) null,
       ind_conteo_fisico char(1) null,
       camino_exec_lector varchar(50) null,
       camino_resultado_lector varchar(50) null,
       ind_prometalicos char(1) null,
       fecha_para_registro datetime null,
       ind_fecha_normal char(1) null) ;
 
alter table dba.bs_config
       add constraint pk_bs_config primary key  nonclustered
       (id_empresa) ;
 
insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'bs_config',
       object_id('dba.bs_config'),
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'id_empresa', 1,
        'Id Empresa:', 0 ,
        'Id Empresa', 0,
       23 , '',
       0 , 65 , 87 ,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_une_observaciones', 2,
        'Ind Une Observaciones:', 0 ,
        'Ind Une Observaciones', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_tipo_cliente_default', 3,
        'Ind Tipo Cliente Default:', 0 ,
        'Ind Tipo Cliente Default', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_silos', 4,
        'Ind Silos:', 0 ,
        'Ind Silos', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_factura', 5,
        'Ind Factura:', 0 ,
        'Ind Factura', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_ruta_entrada', 6,
        'Ind Ruta Entrada:', 0 ,
        'Ind Ruta Entrada', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_inv_precio_venta', 7,
        'Ind Inv Precio Venta:', 0 ,
        'Ind Inv Precio Venta', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_destino', 8,
        '', 0 ,
        '', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_unidades', 9,
        'Ind Unidades:', 0 ,
        'Ind Unidades', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_promedio_salidas', 10,
        'Ind Promedio Salidas:', 0 ,
        'Ind Promedio Salidas', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_punto_venta', 11,
        'Ind Punto Venta:', 0 ,
        'Ind Punto Venta', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_conteo_fisico', 12,
        'Ind Conteo Fisico:', 0 ,
        'Ind Conteo Fisico', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'camino_exec_lector', 13,
        'Camino Exec Lector:', 0 ,
        'Camino Exec Lector', 0,
       23 , '',
       0 , 65 , 965 ,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'camino_resultado_lector', 14,
        'Camino Resultado Lector:', 0 ,
        'Camino Resultado Lector', 0,
       23 , '',
       0 , 65 , 965 ,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_prometalicos', 15,
        'Ind Prometalicos:', 0 ,
        'Ind Prometalicos', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'fecha_para_registro', 16,
        'Fecha Para Registro:', 0 ,
        'Fecha Para Registro', 0,
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
        values  ( 'bs_config',
        object_id('dba.bs_config'),
        'dba',  'ind_fecha_normal', 17,
        'Ind Fecha Normal:', 0 ,
        'Ind Fecha Normal', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
