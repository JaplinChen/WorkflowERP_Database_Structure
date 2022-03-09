# -*- coding: utf-8 -*-

import re
import json
import pymssql

# mssql parameters
SERVER_IP = 'your_server_ip'
DATABASE = 'DSCSYS'
USERNAME = 'your_username'
PASSWORD = 'password'

Get_MoudleNameSQL = '''SELECT ADMMA.MA001 as ModuleID, ADMMA.MA002 as ModuleName 
 ,case ADMMA.MA001 
  when 'VTA' then 'Hệ thống quản lý thuế giá trị gia tăng' 
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
  WHEN 'AMS' THEN N'人資_'  WHEN 'HRS' THEN N'人資_'  WHEN 'PAL' THEN N'人資_'  WHEN 'VAM' THEN N'人資_' 
  WHEN 'VPA' THEN N'人資_'  WHEN 'YAM' THEN N'人資_'  WHEN 'YPA' THEN N'人資_' 
  WHEN 'BTS' THEN N'系統_'  WHEN 'EBC' THEN N'系統_'  WHEN 'LAN' THEN N'系統_'  WHEN 'PIP' THEN N'系統_'  WHEN 'RGR' THEN N'系統_' 
  WHEN 'CUS' THEN N'資材_'  WHEN 'PXM' THEN N'資材_'  WHEN 'WSC' THEN N'資材_' 
  WHEN 'ECI' THEN N'整合_'  WHEN 'EPI' THEN N'整合_'  WHEN 'FEP' THEN N'整合_' 
  WHEN 'SPC' THEN N'整合_'  WHEN 'TIS' THEN N'整合_' 
  WHEN 'IFB' THEN N'財務_'  WHEN 'VTA' THEN N'財務_' 
  WHEN 'RMA' THEN N'品管_'  WHEN 'EBM' THEN N'研發_'  WHEN 'SFC' THEN N'生產_'  WHEN 'IDL' THEN N'行業_' 
  ELSE '' 
  END AS ModuleClass 
FROM ADMMA 
left join LANGUAGE on rtrim(ltrim(LANGUAGE.CHT)) = rtrim(ltrim(ADMMA.MA002)) 
WHERE ADMMA.MA001 <> 'TES' 
ORDER BY ADMMA.MA001 
'''
Get_TableNameSQL = """select ADMMC.MC001 as TableID, ADMMC.MC002 as TableName, 
    case when LANG1.VIET is NULL then '' else rtrim(ltrim(LANG1.VIET)) end as TableNameViet, 
    ADMMC.MC004 as ModuleID, ADMMA.MA002 as ModuleName, 
    case ADMMC.MC004 
    when 'VTA' then 'Hệ thống quản lý thuế giá trị gia tăng' 
    else case when LANG2.VIET is NULL then '' else rtrim(ltrim(LANG2.VIET)) end 
    end as ModuleNameViet, 
    ADMMA.MA004 as ModuleType 
    from ADMMC 
    left join ADMMA on ADMMA.MA001=ADMMC.MC004 
    left join LANGUAGE LANG1 on rtrim(ltrim(LANG1.CHT)) = rtrim(ltrim(ADMMC.MC002)) 
    left join LANGUAGE LANG2 on rtrim(ltrim(LANG2.CHT)) = rtrim(ltrim(ADMMA.MA002)) 
    WHERE ADMMC.MC004 <> 'PDA'
    ORDER BY ADMMC.MC004, ADMMC.MC001"""

Get_TableStructureSQL = """select ADMMC.MC001 as TableID, ADMMC.MC002 as TableName, ADMMC.MC004 as ModuleID, 
    ADMMD.MD002 as sID, ADMMD.MD003 as ID, ADMMD.MD004 as FieldName, 
    case when LANGUAGE.VIET is NULL then '' else rtrim(ltrim(LANGUAGE.VIET)) end as NameVietnam, 
    ADMMD.MD005 as Type, 
    ADMMD.MD006 as Length, ADMMD.MD007 as Description 
    from ADMMD 
    left join ADMMC on ADMMD.MD001 = ADMMC.MC001 
    left join LANGUAGE on rtrim(ltrim(LANGUAGE.CHT)) = rtrim(ltrim(ADMMD.MD004)) 
    WHERE ADMMC.MC004 <> 'PDA'
    ORDER BY ADMMD.MD001, ADMMD.MD003 
    """
TableName_Columns = ['TableID', 'TableName', 'TableNameViet', 'ModuleID', 'ModuleName', 'ModuleNameViet', 'ModuleType']
TableStructure_Columns=['TableID', 'TableName', 'ModuleID', 'sID', 'ID', 'FieldName', 'NameVietnam', 'Type', 'Length', 'Description']
MoudleName_Columns = ['ModuleID', 'ModuleName', 'ModuleNameViet', 'ModuleType', 'ModuleClass']

""" 
TypeError: Object of type 'Decimal' is not JSON serializable 报错
报这个错是因为json.dumps函数发现字典里面有 Decimal类型的数据，无法JSON serializable
解决方法：是检查到Decimal类型的值转化成float类型
"""
from decimal import Decimal
class DecimalEncoder(json.JSONEncoder):
  def default(self, obj):
    if isinstance(obj, Decimal):
      return str(obj)
    return json.JSONEncoder.default(self, obj)

class BytesEncoder(json.JSONEncoder):
    def default(self,obj):
        """
        只要检查到了是bytes类型的数据就把它转为str类型
        :param obj:
        :return:
        """
        if isinstance(obj,bytes):
           return str(obj,encoding='utf-8')
        return json.JSONEncoder.default(self,obj)

def Table(SQLString, Columns):
    try:
        # -- 建立 MSSQL 連線
        conn = pymssql.connect(server=SERVER_IP, user=USERNAME, password=PASSWORD, database=DATABASE)
        cursor = conn.cursor()
        cursor.execute(SQLString)

        jsonData=[]
        rows = cursor.fetchall()
        ss = len(Columns)
        
        for row in rows:
            result={}
            i=0
            while i < ss:
                row_string = str(row[i])

                # -- 避免製作 [模組名稱].html 檔案時，因爲 / 產生問題
                if Columns[i] == 'ModuleName':
                    row_string = row_string.replace('/', '_')
                # -- 針對 TableStructure 的 Description 欄位做處理
                if Columns[i] == 'Description':
                    row_string = row_string.split('//')[0].split('&&')[0]        # -- 去除 // 和 && 後面的資料
                    row_string = re.sub('FORMATE', 'Formate', row_string)  
                    s1 = row_string.split('[')[0].split('(')[0]      # -- 先去除 [ 和 ( 後面的資料，方便比對
                    if result['FieldName'] == s1.strip():          # -- 如果 [FieldName] in [Description]
                        row_string = re.sub(result['FieldName'], '', row_string)    # -- 將 [FieldName] 去除

                result[Columns[i]] = row_string.strip()
                i += 1
            jsonData.append(result)
    except Exception as e:
        print(e)
    else:
        #加 ensure_ascii=False，能够防止中文乱码。
        jsonDateChar=json.dumps(jsonData, ensure_ascii=False, cls=DecimalEncoder)
        #去除中括号
        return jsonDateChar[1:len(jsonDateChar)-1]

if __name__=='__main__':

    _jsonData = ''
    with open('MoudleName.json', 'w', encoding="utf-8") as fn:
        try:
            _jsonData = Table(Get_MoudleNameSQL, MoudleName_Columns)
            _jsonData = '[' + _jsonData + ']'
            _jsonData = json.loads(_jsonData)   # --
            _jsonData = sorted(_jsonData, key=lambda x: (x['ModuleClass'],x['ModuleID']), reverse=False)
            _jsonData = json.dumps(_jsonData, indent=2, ensure_ascii=False)
        except Exception as e:
            print(e)
        fn.write(_jsonData)
        fn.close()

    _jsonData = ''
    with open('TableName.json', 'w', encoding="utf-8") as fn:
        try:
            _jsonData = Table(Get_TableNameSQL, TableName_Columns)
            _jsonData = '[' + _jsonData + ']'
            _jsonData = json.loads(_jsonData)
            _jsonData = json.dumps(_jsonData, indent=2, ensure_ascii=False)
        except Exception as e:
            print(e)
        fn.write(_jsonData)
        fn.close()
    
    _jsonData = ''
    with open('TableStructure.json', 'w', encoding="utf-8") as fs:
        try:
            _jsonData = Table(Get_TableStructureSQL, TableStructure_Columns)
            _jsonData = '[' + _jsonData + ']'
            _jsonData = json.loads(_jsonData)
            _jsonData = json.dumps(_jsonData, indent=2, ensure_ascii=False)
        except Exception as e:
            print(e)
        fs.write(_jsonData)
        fs.close()