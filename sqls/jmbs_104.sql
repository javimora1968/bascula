alter table dba.bs_entradas_sap  add
       grupo_articulos char(15) null;

update dbo.pbcattbl set
       pbd_fhgt = -8, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'MS Sans Serif',
       pbh_fhgt = -8, pbh_fwgt = 700 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'MS Sans Serif',
       pbl_fhgt = -8, pbl_fwgt = 700 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'MS Sans Serif',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.bs_entradas_sap');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'bs_entradas_sap',
        object_id('dba.bs_entradas_sap'),
        'dba',  'grupo_articulos', 21,
        'Grupo Articulos:', 0 ,
        'Grupo Articulos', 0,
       23 , '',
       0 , 53 , 407 ,
        '', 'N',
        '',
        '',
        '', '');

