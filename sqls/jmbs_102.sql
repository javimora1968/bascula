create table dba.bs_salidas_sap
       (id_empresa char(15) not null,
       num_despacho char(10) not null,
       id_item char(15) not null,
       nombre_item varchar(255) not null,
       id_lote char(15) not null,
       centro char(4) not null,
       almacen char(4) not null,
       cantidad numeric(18,3) not null,
       unidad_medida char(2) not null,
       id_cliente char(15) not null,
       nombre_cliente varchar(100) not null,
       estado char(1) not null,
       id_usuario char(15) not null,
       fec_registro datetime not null,
       id_usuario_cierra char(15) null,
       fec_cierra datetime null);

alter table dba.bs_salidas_sap
       add constraint pk_bs_salidas_sap primary key  nonclustered
       (id_empresa,
       num_despacho);

insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'bs_salidas_sap',
       object_id('dba.bs_salidas_sap'),
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'num_despacho', 2,
        'Num Despacho:', 0 ,
        'Num Despacho', 0,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'id_lote', 5,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'centro', 6,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'almacen', 7,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'cantidad', 8,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'unidad_medida', 9,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'id_cliente', 10,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'nombre_cliente', 11,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'estado', 12,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'id_usuario', 13,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'fec_registro', 14,
        'Fec Registro:', 0 ,
        'Fec Registro', 0,
       23 , '',
       0 , 53 , 481 ,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'id_usuario_cierra', 15,
        'Id Usuario Cierra:', 0 ,
        'Id Usuario Cierra', 0,
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
        values  ( 'bs_salidas_sap',
        object_id('dba.bs_salidas_sap'),
        'dba',  'fec_cierra', 16,
        'Fec Cierra:', 0 ,
        'Fec Cierra', 0,
       23 , '',
       0 , 53 , 481 ,
        '', 'N',
        '',
        '',
        '', '');

