USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* View Generated by CranSoft DataGarage View Builder
 User: MowbrayM     Date:  */ 
Create View [dbo].[MARA] AS SELECT [dgSAP].[dbo].[MARA].[MANDT], [dgSAP].[dbo].[MARA].[MATNR], [dgSAP].[dbo].[MARA].[ERSDA], [dgSAP].[dbo].[MARA].[ERNAM], [dgSAP].[dbo].[MARA].[LAEDA], [dgSAP].[dbo].[MARA].[AENAM], [dgSAP].[dbo].[MARA].[VPSTA], [dgSAP].[dbo].[MARA].[PSTAT], [dgSAP].[dbo].[MARA].[LVORM], [dgSAP].[dbo].[MARA].[MTART], [dgSAP].[dbo].[MARA].[MBRSH], [dgSAP].[dbo].[MARA].[MATKL], [dgSAP].[dbo].[MARA].[BISMT], [dgSAP].[dbo].[MARA].[MEINS], [dgSAP].[dbo].[MARA].[BSTME], [dgSAP].[dbo].[MARA].[ZEINR], [dgSAP].[dbo].[MARA].[ZEIAR], [dgSAP].[dbo].[MARA].[ZEIVR], [dgSAP].[dbo].[MARA].[ZEIFO], [dgSAP].[dbo].[MARA].[AESZN], [dgSAP].[dbo].[MARA].[BLATT], [dgSAP].[dbo].[MARA].[BLANZ], [dgSAP].[dbo].[MARA].[FERTH], [dgSAP].[dbo].[MARA].[FORMT], [dgSAP].[dbo].[MARA].[GROES], [dgSAP].[dbo].[MARA].[WRKST], [dgSAP].[dbo].[MARA].[NORMT], [dgSAP].[dbo].[MARA].[LABOR], [dgSAP].[dbo].[MARA].[EKWSL], [dgSAP].[dbo].[MARA].[BRGEW], [dgSAP].[dbo].[MARA].[NTGEW], [dgSAP].[dbo].[MARA].[GEWEI], [dgSAP].[dbo].[MARA].[VOLUM], [dgSAP].[dbo].[MARA].[VOLEH], [dgSAP].[dbo].[MARA].[BEHVO], [dgSAP].[dbo].[MARA].[RAUBE], [dgSAP].[dbo].[MARA].[TEMPB], [dgSAP].[dbo].[MARA].[DISST], [dgSAP].[dbo].[MARA].[TRAGR], [dgSAP].[dbo].[MARA].[STOFF], [dgSAP].[dbo].[MARA].[SPART], [dgSAP].[dbo].[MARA].[KUNNR], [dgSAP].[dbo].[MARA].[EANNR], [dgSAP].[dbo].[MARA].[WESCH], [dgSAP].[dbo].[MARA].[BWVOR], [dgSAP].[dbo].[MARA].[BWSCL], [dgSAP].[dbo].[MARA].[SAISO], [dgSAP].[dbo].[MARA].[ETIAR], [dgSAP].[dbo].[MARA].[ETIFO], [dgSAP].[dbo].[MARA].[ENTAR], [dgSAP].[dbo].[MARA].[EAN11], [dgSAP].[dbo].[MARA].[NUMTP], [dgSAP].[dbo].[MARA].[LAENG], [dgSAP].[dbo].[MARA].[BREIT], [dgSAP].[dbo].[MARA].[HOEHE], [dgSAP].[dbo].[MARA].[MEABM], [dgSAP].[dbo].[MARA].[PRDHA], [dgSAP].[dbo].[MARA].[AEKLK], [dgSAP].[dbo].[MARA].[CADKZ], [dgSAP].[dbo].[MARA].[QMPUR], [dgSAP].[dbo].[MARA].[ERGEW], [dgSAP].[dbo].[MARA].[ERGEI], [dgSAP].[dbo].[MARA].[ERVOL], [dgSAP].[dbo].[MARA].[ERVOE], [dgSAP].[dbo].[MARA].[GEWTO], [dgSAP].[dbo].[MARA].[VOLTO], [dgSAP].[dbo].[MARA].[VABME], [dgSAP].[dbo].[MARA].[KZREV], [dgSAP].[dbo].[MARA].[KZKFG], [dgSAP].[dbo].[MARA].[XCHPF], [dgSAP].[dbo].[MARA].[VHART], [dgSAP].[dbo].[MARA].[FUELG], [dgSAP].[dbo].[MARA].[STFAK], [dgSAP].[dbo].[MARA].[MAGRV], [dgSAP].[dbo].[MARA].[BEGRU], [dgSAP].[dbo].[MARA].[DATAB], [dgSAP].[dbo].[MARA].[LIQDT], [dgSAP].[dbo].[MARA].[SAISJ], [dgSAP].[dbo].[MARA].[PLGTP], [dgSAP].[dbo].[MARA].[MLGUT], [dgSAP].[dbo].[MARA].[EXTWG], [dgSAP].[dbo].[MARA].[SATNR], [dgSAP].[dbo].[MARA].[ATTYP], [dgSAP].[dbo].[MARA].[KZKUP], [dgSAP].[dbo].[MARA].[KZNFM], [dgSAP].[dbo].[MARA].[PMATA], [dgSAP].[dbo].[MARA].[MSTAE], [dgSAP].[dbo].[MARA].[MSTAV], [dgSAP].[dbo].[MARA].[MSTDE], [dgSAP].[dbo].[MARA].[MSTDV], [dgSAP].[dbo].[MARA].[TAKLV], [dgSAP].[dbo].[MARA].[RBNRM], [dgSAP].[dbo].[MARA].[MHDRZ], [dgSAP].[dbo].[MARA].[MHDHB], [dgSAP].[dbo].[MARA].[MHDLP], [dgSAP].[dbo].[MARA].[INHME], [dgSAP].[dbo].[MARA].[INHAL], [dgSAP].[dbo].[MARA].[VPREH], [dgSAP].[dbo].[MARA].[ETIAG], [dgSAP].[dbo].[MARA].[INHBR], [dgSAP].[dbo].[MARA].[CMETH], [dgSAP].[dbo].[MARA].[CUOBF], [dgSAP].[dbo].[MARA].[KZUMW], [dgSAP].[dbo].[MARA].[KOSCH], [dgSAP].[dbo].[MARA].[SPROF], [dgSAP].[dbo].[MARA].[NRFHG], [dgSAP].[dbo].[MARA].[MFRPN], [dgSAP].[dbo].[MARA].[MFRNR], [dgSAP].[dbo].[MARA].[BMATN], [dgSAP].[dbo].[MARA].[MPROF], [dgSAP].[dbo].[MARA].[KZWSM], [dgSAP].[dbo].[MARA].[SAITY], [dgSAP].[dbo].[MARA].[PROFL], [dgSAP].[dbo].[MARA].[IHIVI], [dgSAP].[dbo].[MARA].[ILOOS], [dgSAP].[dbo].[MARA].[SERLV], [dgSAP].[dbo].[MARA].[KZGVH], [dgSAP].[dbo].[MARA].[XGCHP], [dgSAP].[dbo].[MARA].[KZEFF], [dgSAP].[dbo].[MARA].[COMPL], [dgSAP].[dbo].[MARA].[IPRKZ], [dgSAP].[dbo].[MARA].[RDMHD], [dgSAP].[dbo].[MARA].[PRZUS], [dgSAP].[dbo].[MARA].[MTPOS_MARA], [dgSAP].[dbo].[MARA].[BFLME], [dgSAP].[dbo].[MARA].[MATFI], [dgSAP].[dbo].[MARA].[CMREL], [dgSAP].[dbo].[MARA].[BBTYP], [dgSAP].[dbo].[MARA].[SLED_BBD], [dgSAP].[dbo].[MARA].[GTIN_VARIANT], [dgSAP].[dbo].[MARA].[GENNR], [dgSAP].[dbo].[MARA].[RMATP], [dgSAP].[dbo].[MARA].[GDS_RELEVANT], [dgSAP].[dbo].[MARA].[WEORA], [dgSAP].[dbo].[MARA].[HUTYP_DFLT], [dgSAP].[dbo].[MARA].[PILFERABLE], [dgSAP].[dbo].[MARA].[WHSTC], [dgSAP].[dbo].[MARA].[WHMATGR], [dgSAP].[dbo].[MARA].[HNDLCODE], [dgSAP].[dbo].[MARA].[HAZMAT], [dgSAP].[dbo].[MARA].[HUTYP], [dgSAP].[dbo].[MARA].[TARE_VAR], [dgSAP].[dbo].[MARA].[MAXC], [dgSAP].[dbo].[MARA].[MAXC_TOL], [dgSAP].[dbo].[MARA].[MAXL], [dgSAP].[dbo].[MARA].[MAXB], [dgSAP].[dbo].[MARA].[MAXH], [dgSAP].[dbo].[MARA].[MAXDIM_UOM], [dgSAP].[dbo].[MARA].[HERKL], [dgSAP].[dbo].[MARA].[MFRGR], [dgSAP].[dbo].[MARA].[QQTIME], [dgSAP].[dbo].[MARA].[QQTIMEUOM], [dgSAP].[dbo].[MARA].[QGRP], [dgSAP].[dbo].[MARA].[SERIAL], [dgSAP].[dbo].[MARA].[PS_SMARTFORM], [dgSAP].[dbo].[MARA].[LOGUNIT], [dgSAP].[dbo].[MARA].[CWQREL], [dgSAP].[dbo].[MARA].[CWQPROC], [dgSAP].[dbo].[MARA].[CWQTOLGR], [dgSAP].[dbo].[MARA].[ADPROF], [dgSAP].[dbo].[MARA].[IPMIPPRODUCT], [dgSAP].[dbo].[MARA].[ALLOW_PMAT_IGNO], [dgSAP].[dbo].[MARA].[MEDIUM], [dgSAP].[dbo].[MARA].[COMMODITY], [dgSAP].[dbo].[MARA].[ANIMAL_ORIGIN], [dgSAP].[dbo].[MARA].[TEXTILE_COMP_IND], [dgSAP].[dbo].[MARA].[SGT_CSGR], [dgSAP].[dbo].[MARA].[SGT_COVSA], [dgSAP].[dbo].[MARA].[SGT_STAT], [dgSAP].[dbo].[MARA].[SGT_SCOPE], [dgSAP].[dbo].[MARA].[SGT_REL], [dgSAP].[dbo].[MARA].[ANP], [dgSAP].[dbo].[MARA].[FSH_MG_AT1], [dgSAP].[dbo].[MARA].[FSH_MG_AT2], [dgSAP].[dbo].[MARA].[FSH_MG_AT3], [dgSAP].[dbo].[MARA].[FSH_SEALV], [dgSAP].[dbo].[MARA].[FSH_SEAIM], [dgSAP].[dbo].[MARA].[FSH_SC_MID], [dgSAP].[dbo].[MARA].[PSM_CODE], [dgSAP].[dbo].[MARA].[/BEV1/LULEINH], [dgSAP].[dbo].[MARA].[/BEV1/LULDEGRP], [dgSAP].[dbo].[MARA].[/BEV1/NESTRUCCAT], [dgSAP].[dbo].[MARA].[/CWM/XCWMAT], [dgSAP].[dbo].[MARA].[/CWM/VALUM], [dgSAP].[dbo].[MARA].[/CWM/TOLGR], [dgSAP].[dbo].[MARA].[/CWM/TARA], [dgSAP].[dbo].[MARA].[/CWM/TARUM], [dgSAP].[dbo].[MARA].[/DSD/SL_TOLTYP], [dgSAP].[dbo].[MARA].[/DSD/SV_CNT_GRP], [dgSAP].[dbo].[MARA].[/DSD/VC_GROUP], [dgSAP].[dbo].[MARA].[/VSO/R_TILT_IND], [dgSAP].[dbo].[MARA].[/VSO/R_STACK_IND], [dgSAP].[dbo].[MARA].[/VSO/R_BOT_IND], [dgSAP].[dbo].[MARA].[/VSO/R_TOP_IND], [dgSAP].[dbo].[MARA].[/VSO/R_STACK_NO], [dgSAP].[dbo].[MARA].[/VSO/R_PAL_IND], [dgSAP].[dbo].[MARA].[/VSO/R_PAL_OVR_D], [dgSAP].[dbo].[MARA].[/VSO/R_PAL_OVR_W], [dgSAP].[dbo].[MARA].[/VSO/R_PAL_B_HT], [dgSAP].[dbo].[MARA].[/VSO/R_PAL_MIN_H], [dgSAP].[dbo].[MARA].[/VSO/R_TOL_B_HT], [dgSAP].[dbo].[MARA].[/VSO/R_NO_P_GVH], [dgSAP].[dbo].[MARA].[/VSO/R_QUAN_UNIT], [dgSAP].[dbo].[MARA].[/VSO/R_KZGVH_IND], [dgSAP].[dbo].[MARA].[PACKCODE], [dgSAP].[dbo].[MARA].[DG_PACK_STATUS], [dgSAP].[dbo].[MARA].[MCOND], [dgSAP].[dbo].[MARA].[RETDELC], [dgSAP].[dbo].[MARA].[LOGLEV_RETO], [dgSAP].[dbo].[MARA].[NSNID], [dgSAP].[dbo].[MARA].[ADSPC_SPC], [dgSAP].[dbo].[MARA].[IMATN], [dgSAP].[dbo].[MARA].[PICNUM], [dgSAP].[dbo].[MARA].[BSTAT], [dgSAP].[dbo].[MARA].[COLOR_ATINN], [dgSAP].[dbo].[MARA].[SIZE1_ATINN], [dgSAP].[dbo].[MARA].[SIZE2_ATINN], [dgSAP].[dbo].[MARA].[COLOR], [dgSAP].[dbo].[MARA].[SIZE1], [dgSAP].[dbo].[MARA].[SIZE2], [dgSAP].[dbo].[MARA].[FREE_CHAR], [dgSAP].[dbo].[MARA].[CARE_CODE], [dgSAP].[dbo].[MARA].[BRAND_ID], [dgSAP].[dbo].[MARA].[FIBER_CODE1], [dgSAP].[dbo].[MARA].[FIBER_PART1], [dgSAP].[dbo].[MARA].[FIBER_CODE2], [dgSAP].[dbo].[MARA].[FIBER_PART2], [dgSAP].[dbo].[MARA].[FIBER_CODE3], [dgSAP].[dbo].[MARA].[FIBER_PART3], [dgSAP].[dbo].[MARA].[FIBER_CODE4], [dgSAP].[dbo].[MARA].[FIBER_PART4], [dgSAP].[dbo].[MARA].[FIBER_CODE5], [dgSAP].[dbo].[MARA].[FIBER_PART5], [dgSAP].[dbo].[MARA].[FASHGRD], [dgSAP].[dbo].[MARA].[/RIO/ZZSECT], [dgSAP].[dbo].[MARA].[/RIO/ZZUNSPSC], [dgSAP].[dbo].[MARA].[/RIO/ZZ_OBJ_CAT], [dgSAP].[dbo].[MARA].[/RIO/ZZ_EQART], [dgSAP].[dbo].[MARA].[/RIO/ZZ_HERST], [dgSAP].[dbo].[MARA].[/RIO/ZZ_TYPBZ], [dgSAP].[dbo].[MARA].[/RIO/ZZ_MAPAR], [dgSAP].[dbo].[MARA].[/RIO/ZZ_BEGRU], [dgSAP].[dbo].[MARA].[/RIO/ZZ_RBNRM], [dgSAP].[dbo].[MARA].[/RIO/ZZ_HME], [dgSAP].[dbo].[MARA].[/RIO/ZZ_RTRS_CT], [dgSAP].[dbo].[MARA].[OIGROUPNAM], [dgSAP].[dbo].[MARA].[OITRIND], [dgSAP].[dbo].[MARA].[OIHMTXGR] From [dgSAP].[dbo].[MARA]  INNER JOIN [dbo].dswParam ON [dgSAP].[dbo].[MARA].[MANDT] = [dbo].DswParam.SAPClient  
GO
