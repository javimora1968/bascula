create table dba.bs_entradas_sap
       (id_empresa char(15) not null,
       num_pedido char(10) not null,
       id_item char(15) not null,
       nombre_item varchar(255) not null,
       centro char(4) not null,
       almacen char(4) not null,
       id_cliente char(15) not null,
       nombre_cliente varchar(100) not null,
       cantidad numeric(18,3) not null,
       unidad_medida char(2) not null,
       precio_bruto numeric(18,3) not null,
       porcentaje numeric(6,3) not null,
       unidad_medida2 char(2) not null,
       precio_neto numeric(18,3) not null,
       id_lote char(15) not null,
       estado char(1) not null,
       id_usuario char(15) not null,
       fec_registro datetime not null);

alter table dba.bs_entradas_sap
       add constraint pk_bs_entradas_sap primary key  nonclustered
       (id_empresa,
       num_pedido);

insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'bs_entradas_sap',
       object_id('dba.bs_entradas_sap'),
        'dba',
        -8,  400,  'N',  'N',  0,  34,
        'MS Sans Serif',
        -8,  700,  'N',  'N',  0,  34,
        'MS Sans Serif',
        -8,  700,  'N',  'N',  0,  34,
        'MS Sans Serif',
       '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'id_empresa', 1,
        'Id Empresa:', 0 ,
        'Id Empresa', 0,
       23 , '',
       0 , 53 , 407 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'num_pedido', 2,
        'Num Pedido:', 0 ,
        'Num Pedido', 0,
       23 , '',
       0 , 53 , 293 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'id_item', 3,
        'Id Item:', 0 ,
        'Id Item', 0,
       23 , '',
       0 , 53 , 407 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'nombre_item', 4,
        'Nombre Item:', 0 ,
        'Nombre Item', 0,
       23 , '',
       0 , 53 , 5893 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'centro', 5,
        'Centro:', 0 ,
        'Centro', 0,
       23 , '',
       0 , 53 , 161 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'almacen', 6,
        'Almacen:', 0 ,
        'Almacen', 0,
       23 , '',
       0 , 53 , 161 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'id_cliente', 7,
        'Id Cliente:', 0 ,
        'Id Cliente', 0,
       23 , '',
       0 , 53 , 407 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'nombre_cliente', 8,
        'Nombre Cliente:', 0 ,
        'Nombre Cliente', 0,
       23 , '',
       0 , 53 , 2350 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'cantidad', 9,
        'Cantidad:', 0 ,
        'Cantidad', 0,
       24 , '[General]',
       0 , 53 , 526 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'unidad_medida', 10,
        'Unidad Medida:', 0 ,
        'Unidad Medida', 0,
       23 , '',
       0 , 53 , 110 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'precio_bruto', 11,
        'Precio Bruto:', 0 ,
        'Precio Bruto', 0,
       24 , '[General]',
       0 , 53 , 526 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'porcentaje', 12,
        'Porcentaje:', 0 ,
        'Porcentaje', 0,
       24 , '[General]',
       0 , 53 , 247 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'unidad_medida2', 13,
        'Unidad Medida2:', 0 ,
        'Unidad Medida2', 0,
       23 , '',
       0 , 53 , 110 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'precio_neto', 14,
        'Precio Neto:', 0 ,
        'Precio Neto', 0,
       24 , '[General]',
       0 , 53 , 526 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'id_lote', 15,
        'Id Lote:', 0 ,
        'Id Lote', 0,
       23 , '',
       0 , 53 , 407 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'estado', 16,
        'Estado:', 0 ,
        'Estado', 0,
       23 , '',
       0 , 53 , 87 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'id_usuario', 17,
        'Id Usuario:', 0 ,
        'Id Usuario', 0,
       23 , '',
       0 , 53 , 407 ,
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
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'fec_registro', 18,
        'Fec Registro:', 0 ,
        'Fec Registro', 0,
       23 , '',
       0 , 53 , 481 ,
        '', 'N',
        '',
        '',
        '', '');

