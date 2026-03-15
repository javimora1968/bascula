alter table dba.bs_config_bascula  add
       char_corrimiento_tipo_peso_d numeric(3,0) null,
       char_corrimiento_unidad_d numeric(3,0) null,
       char_corrimiento_peso_d numeric(3,0) null,
       char_corrimiento_tipo_peso_c numeric(3,0) null,
       char_corrimiento_unidad_c numeric(3,0) null,
       char_corrimiento_peso_c numeric(3,0) null;

update dbo.pbcattbl set
       pbd_fhgt = -10, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'Arial',
       pbh_fhgt = -10, pbh_fwgt = 400 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'Arial',
       pbl_fhgt = -10, pbl_fwgt = 400 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'Arial',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.bs_config_bascula');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_config_bascula',
        object_id('dba.bs_config_bascula'),
        'dba',  'char_corrimiento_tipo_peso_d', 15,
        'Char Corrimiento Tipo Peso d:', 0 ,
        'Char Corrimiento Tipo Peso d', 0,
       24 , '[General]',
       0 , 65 , 142 ,
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
        values  ( 'bs_config_bascula',
        object_id('dba.bs_config_bascula'),
        'dba',  'char_corrimiento_unidad_d', 16,
        'Char Corrimiento Unidad D:', 0 ,
        'Char Corrimiento Unidad D', 0,
       24 , '[General]',
       0 , 65 , 142 ,
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
        values  ( 'bs_config_bascula',
        object_id('dba.bs_config_bascula'),
        'dba',  'char_corrimiento_peso_d', 17,
        'Char Corrimiento Peso D:', 0 ,
        'Char Corrimiento Peso D', 0,
       24 , '[General]',
       0 , 65 , 142 ,
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
        values  ( 'bs_config_bascula',
        object_id('dba.bs_config_bascula'),
        'dba',  'char_corrimiento_tipo_peso_c', 18,
        'Char Corrimiento Tipo Peso C:', 0 ,
        'Char Corrimiento Tipo Peso C', 0,
       24 , '[General]',
       0 , 65 , 142 ,
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
        values  ( 'bs_config_bascula',
        object_id('dba.bs_config_bascula'),
        'dba',  'char_corrimiento_unidad_c', 19,
        'Char Corrimiento Unidad C:', 0 ,
        'Char Corrimiento Unidad C', 0,
       24 , '[General]',
       0 , 65 , 142 ,
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
        values  ( 'bs_config_bascula',
        object_id('dba.bs_config_bascula'),
        'dba',  'char_corrimiento_peso_c', 20,
        'Char Corrimiento Peso C:', 0 ,
        'Char Corrimiento Peso C', 0,
       24 , '[General]',
       0 , 65 , 142 ,
        '', 'N',
        '',
        '',
        '', '');

