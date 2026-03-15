alter table dba.bs_encab_reg_proveedor  add
       ind_factura_producto char(1) null,
       id_factura_producto char(4) null,
       prefijo_factura_producto char(8) null,
       num_factura_producto numeric(18,0) null,
       zona_factura_producto char(8) null,
       fecha_factura_producto datetime null,
       valor_factura_producto double precision null;

update dbo.pbcattbl set
       pbd_fhgt = -10, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'Arial',
       pbh_fhgt = -10, pbh_fwgt = 400 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'Arial',
       pbl_fhgt = -10, pbl_fwgt = 400 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'Arial',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.bs_encab_reg_proveedor');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'ind_factura_producto', 78,
        'Ind Factura Producto:', 0 ,
        'Ind Factura Producto', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'id_factura_producto', 79,
        'Id Factura Producto:', 0 ,
        'Id Factura Producto', 0,
       23 , '',
       0 , 65 , 129 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'prefijo_factura_producto', 80,
        'Prefijo Factura Producto:', 0 ,
        'Prefijo Factura Producto', 0,
       23 , '',
       0 , 65 , 197 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'num_factura_producto', 81,
        'Num Factura Producto:', 0 ,
        'Num Factura Producto', 0,
       24 , '[General]',
       0 , 65 , 421 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'zona_factura_producto', 82,
        'Zona Factura Producto:', 0 ,
        'Zona Factura Producto', 0,
       23 , '',
       0 , 65 , 197 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'fecha_factura_producto', 83,
        'Fecha Factura Producto:', 0 ,
        'Fecha Factura Producto', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_encab_reg_proveedor',
        object_id('dba.bs_encab_reg_proveedor'),
        'dba',  'valor_factura_producto', 84,
        'Valor Factura Producto:', 0 ,
        'Valor Factura Producto', 0,
       24 , '[General]',
       0 , 65 , 270 ,
        '', 'N',
        '',
        '',
        '', '');

