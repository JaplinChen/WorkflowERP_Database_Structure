SELECT ADMMA.MA001 as ModuleID, ADMMA.MA002 as ModuleName 
 ,case ADMMA.MA001 
  when 'VTA' then N'Hệ thống quản lý thuế giá trị gia tăng' 
  else case when LANGUAGE.VIET is NULL then '' else rtrim(ltrim(LANGUAGE.VIET)) end 
  end as ModuleNameViet 
 ,ADMMA.MA004 as ModuleType 
 ,CASE ADMMA.MA001
  WHEN 'ADM' THEN N'系統'  WHEN 'CMS' THEN N'系統'  WHEN 'EBO' THEN N'系統'  WHEN 'FTS' THEN N'系統' 
  WHEN 'ACR' THEN N'財務'  WHEN 'ACP' THEN N'財務'  WHEN 'AJS' THEN N'財務'  WHEN 'NOT' THEN N'財務'  WHEN 'PCM' THEN N'財務' 
  WHEN 'AST' THEN N'財務'  WHEN 'CST' THEN N'財務'  WHEN 'ACT' THEN N'財務'  WHEN 'FCS' THEN N'財務'  WHEN 'TAX' THEN N'財務' 
  WHEN 'INV' THEN N'資材'  WHEN 'PUR' THEN N'資材'  WHEN 'EPS' THEN N'資材'  WHEN 'IPS' THEN N'資材' 
  WHEN 'BCS' THEN N'資材'  WHEN 'BCH' THEN N'資材' 
  WHEN 'MRP' THEN N'生產'  WHEN 'LRP' THEN N'生產'  WHEN 'APS' THEN N'生產'  WHEN 'MPS' THEN N'生產' 
  WHEN 'MOC' THEN N'生產'  WHEN 'SFT' THEN N'生產' 
  WHEN 'BOM' THEN N'研發'  WHEN 'MTM' THEN N'研發'  WHEN 'PSM' THEN N'研發' 
  WHEN 'COP' THEN N'業務'  WHEN 'MTP' THEN N'業務' 
  WHEN 'QMS' THEN N'品管' 

  WHEN 'AMS' THEN N'-人資'  WHEN 'HRS' THEN N'-人資'  WHEN 'PAL' THEN N'-人資'  WHEN 'VAM' THEN N'-人資' 
  WHEN 'VPA' THEN N'-人資'  WHEN 'YAM' THEN N'-人資'  WHEN 'YPA' THEN N'-人資' 
  WHEN 'BTS' THEN N'-系統'  WHEN 'EBC' THEN N'-系統'  WHEN 'LAN' THEN N'-系統'  WHEN 'PIP' THEN N'-系統'  WHEN 'RGR' THEN N'-系統' 
  WHEN 'CUS' THEN N'-資材'  WHEN 'PXM' THEN N'-資材'  WHEN 'WSC' THEN N'-資材' 
  WHEN 'ECI' THEN N'-整合'  WHEN 'EPI' THEN N'-整合'  WHEN 'FEP' THEN N'-整合' 
  WHEN 'SPC' THEN N'-整合'  WHEN 'TIS' THEN N'-整合' 
  WHEN 'IFB' THEN N'-財務'  WHEN 'VTA' THEN N'-財務' 
  WHEN 'RMA' THEN N'-品管'  WHEN 'EBM' THEN N'-研發'  WHEN 'SFC' THEN N'-生產'  WHEN 'IDL' THEN N'-行業' 
  ELSE '' 
  END AS ModuleClass 
FROM ADMMA 
left join LANGUAGE on rtrim(ltrim(LANGUAGE.CHT)) = rtrim(ltrim(ADMMA.MA002)) 
WHERE ADMMA.MA001 <> 'TES' 
ORDER BY ADMMA.MA001 