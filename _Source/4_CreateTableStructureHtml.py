#-*- coding: utf-8 -*-
# coding: utf-8
# coding: unicode_escape
import os
import re
import json
from pandas.io.json import json_normalize
def jsonToDataFrame(jsonStr):    
     return pd.json_normalize(jsonStr)

import pandas as pd

#TableName_Columns = ['TableID', 'TableName', 'TableNameViet', 'ModuleID', 'ModuleName', 'ModuleType']
#TableStructure_Columns=['TableID', 'TableName', 'ModuleID', 'sID', 'ID', 'FieldName', 'NameVietnam', 'Type', 'Length', 'Description']
#TableIndex_Columns = ['TableName', 'IndexName', 'IndexColumnName', 'isPrimaryKey']

# -- HTML Strings for Table Structure
html_string = '''
<html>
<head>
  <title>{HtmlTitle}</title>
  <link rel="stylesheet" href="../df_style.css" />
</head>
<body>
  <header>
    <h3>{MoudleTitle}</h3>
  </header>
  <div class="TableAccordion">
{table}
  </div>
  <!--- Footer
  <footer><div class="uk-margin-left uk-text-small">Copyright &copy;2022 VPIC1. All Rights Reserved.  <i>(Japlin Chen)</i></div></footer>
  --->
</body>
</html>
'''

def IndexKey_samp(s):
    if 'PK_' in s:
        return '<samp>'+str(s).strip()+'</samp>'
    else:
        return s

def Description_Convert_to_HTML_String(Description):
    s = str(Description)
    #s = s.split('//')[0]        # -- 去除 // 後面的資料
    #s = s.split('&&')[0]     # -- 去除 && 後面的資料
    s = s.replace('[', '<samp>[').replace(']', ']</samp>')
    s = s.replace('(', '<small>(').replace(')', ')</small>')
    # -- 使用 RegEx 語法，簡化大量的 replace
    regex = re.compile(r'([+-]?\w)\.|([+-]?\w):')
    replaceString = r"<samp>\1\2</samp>:"
    if re.match(regex,s):
        s = regex.sub(replaceString,s)
    """
    s = s.replace('0.', '<samp>0</samp>.').replace('-1.', '<samp>-1</samp>.')
    s = s.replace('1.', '<samp>1</samp>.').replace('2.', '<samp>2</samp>.').replace('3.', '<samp>3</samp>.').replace('4.', '<samp>4</samp>.').replace('5.', '<samp>5</samp>.')
    s = s.replace('6.', '<samp>6</samp>.').replace('7.', '<samp>7</samp>.').replace('8.', '<samp>8</samp>.').replace('9.', '<samp>9</samp>.')
    s = s.replace('A.', '<samp>A</samp>.').replace('B.', '<samp>B</samp>.').replace('C.', '<samp>C</samp>.').replace('D.', '<samp>D</samp>.')
    s = s.replace('E.', '<samp>E</samp>.').replace('F.', '<samp>F</samp>.').replace('G.', '<samp>G</samp>.').replace('H.', '<samp>H</samp>.')
    s = s.replace('I.', '<samp>I</samp>.').replace('J.', '<samp>J</samp>.').replace('K.', '<samp>K</samp>.').replace('L.', '<samp>L</samp>.')
    s = s.replace('M.', '<samp>M</samp>.').replace('N.', '<samp>N</samp>.').replace('O.', '<samp>O</samp>.').replace('P.', '<samp>P</samp>.')
    s = s.replace('Q.', '<samp>Q</samp>.').replace('R.', '<samp>R</samp>.').replace('S.', '<samp>S</samp>.').replace('T.', '<samp>T</samp>.')
    s = s.replace('U.', '<samp>U</samp>.').replace('V.', '<samp>V</samp>.').replace('W.', '<samp>W</samp>.').replace('X.', '<samp>X</samp>.')
    s = s.replace('Y.', '<samp>Y</samp>.').replace('Z.', '<samp>Z</samp>.').replace('y.', '<samp>y</samp>.').replace('u.', '<samp>u</samp>.')

    s = s.replace('0:', '<samp>0</samp>:').replace('-1:', '<samp>-1</samp>:').replace('1:', '<samp>1</samp>:')
    s = s.replace('2:', '<samp>2</samp>:').replace('3:', '<samp>3</samp>:').replace('4:', '<samp>4</samp>:')
    s = s.replace('5:', '<samp>5</samp>:').replace('6:', '<samp>6</samp>:').replace('7:', '<samp>7</samp>:')
    s = s.replace('8:', '<samp>8</samp>:').replace('9:', '<samp>9</samp>:').replace('A:', '<samp>A</samp>:')
    s = s.replace('B:', '<samp>B</samp>:').replace('C:', '<samp>C</samp>:').replace('D:', '<samp>D</samp>:')
    s = s.replace('E:', '<samp>E</samp>:').replace('F:', '<samp>F</samp>:').replace('G:', '<samp>G</samp>:')
    s = s.replace('H:', '<samp>H</samp>:').replace('I:', '<samp>I</samp>:').replace('J:', '<samp>J</samp>:')
    s = s.replace('K:', '<samp>K</samp>:').replace('L:', '<samp>L</samp>:').replace('M:', '<samp>M</samp>:')
    s = s.replace('N:', '<samp>N</samp>:').replace('O:', '<samp>O</samp>:').replace('P:', '<samp>P</samp>:')
    s = s.replace('Q:', '<samp>Q</samp>:').replace('R:', '<samp>R</samp>:').replace('S:', '<samp>S</samp>:')
    s = s.replace('T:', '<samp>T</samp>:').replace('U:', '<samp>U</samp>:').replace('V:', '<samp>V</samp>:')
    s = s.replace('W:', '<samp>W</samp>:').replace('X:', '<samp>X</samp>:').replace('Y:', '<samp>Y</samp>:')
    s = s.replace('Z:', '<samp>Z</samp>:').replace('y:', '<samp>y</samp>:').replace('u:', '<samp>u</samp>:')
    """

    return s

# -- Begin of Main

# -- load json file: TableIndexKey.json
_Index_Json = ''
with open('TableIndexKey.json', 'r', encoding="utf-8") as f:
    try:
        _Index_Json = json.load(f)
    except Exception as e:
        print(e)
    f.close()
# -- load json file: TableName.json
_TableName = ''
with open('TableName.json', 'r', encoding="utf-8") as f:
    try:
        _TableName = json.load(f)
    except Exception as e:
        print(e)
    f.close()
# -- load json file: TableStructure.json
_TableStructure = ''
with open('TableStructure.json', 'r', encoding="utf-8") as f:
    try:
        _TableStructure = json.load(f)
    except Exception as e:
        print(e)
    f.close()
# -- json string to dataframe
_TableIndex_df = jsonToDataFrame(_Index_Json)     # -- 避免每次讀取，該放置到 程序開頭
_TableName_df = jsonToDataFrame(_TableName)
_TableStructure_df = jsonToDataFrame(_TableStructure)
# --------------------------------------------------------------------
# -- Table Structure : Ready to build one html file for each class

AllTableHtml = ''
last_Module_ID = ''
TitleString = ''
HeaderString = ''

for x in _TableName_df.index:

    if (last_Module_ID) == '':
        # -- 設定 Table_ModuleID & last_Module_ID
        Table_ModuleID = _TableName_df.loc[x]['ModuleID'].strip()
        Table_ModuleType = _TableName_df.loc[x]['ModuleType'].strip()
        last_Module_ID = Table_ModuleID

    if _TableName_df.loc[x]['ModuleID'].strip() != last_Module_ID:
        if not os.path.isdir('HTML'):       # -- 檢查資料夾是否存在
            os.makedirs('HTML', mode=0o777)     # -- 如果不存在，就建立資料夾
        # -- output to HTML file
        with open('HTML\\'+ModuleName+'.html', 'w',encoding="utf-8") as f:
            html_data = html_string.format(HtmlTitle=TitleString, MoudleTitle=HeaderString, tablename=TableName, table=AllTableHtml)
            f.write(html_data)
            f.close()

        # -- 設定 Table_ModuleID & last_Module_ID
        Table_ModuleID = _TableName_df.loc[x]['ModuleID'].strip()
        Table_ModuleType = _TableName_df.loc[x]['ModuleType']
        last_Module_ID = Table_ModuleID
        AllTableHtml = ''

    # -- 設定 ModuleName
    if _TableName_df.loc[x]['ModuleName'] == None:
        Table_ModuleName = ''
        ModuleName = Table_ModuleID +'_'
        TitleString = Table_ModuleID
        HeaderString = '<span style="color:red">'+Table_ModuleID +'</span> '
    else:
        Table_ModuleName = _TableName_df.loc[x]['ModuleName']
        ModuleName = Table_ModuleID +'_' +Table_ModuleName.strip().replace('/','_')
        TitleString = Table_ModuleID +'_' +Table_ModuleName.strip().replace('/','')
        HeaderString = '<span style="color:red">'+Table_ModuleID +'</span> ' +Table_ModuleName.strip().replace('/','')

    _TableID =  str(_TableName_df.loc[x]['TableID']).strip()
    TableName = '<samp>'+_TableID +'</samp> : ' +_TableName_df.loc[x]['TableName'].strip().replace('/','')
    _TableNameViet = str(_TableName_df.loc[x]['TableNameViet']).strip()
    if  _TableNameViet != '':
        TableName = TableName+'    <small>('+_TableNameViet+')</small>'

    # ----------------------------------------------------------------------------------------------------------------------
    # -- 只需要 TableName_df.loc[x]['TableID'] 的資料
    TableIndex_df1 = _TableIndex_df.loc[ _TableIndex_df['TableName'] == _TableID ]
    if len(TableIndex_df1) == 0:    # -- 若無資料，以空字串代替 = 不顯示
        IndexHtml = ''
    else:
        # -- 設定需要顯示的 TableIndex 欄位
        # -- ['TableName', 'IndexName', 'IndexColumnName', 'isPrimaryKey']
        TableIndex_df1 = TableIndex_df1.loc[:,'IndexName':'isPrimaryKey']
        # -- 設定 Index 欄位格式 (HTML> TABLE> TD)
        IndexHtml = TableIndex_df1.to_html( 
            border=0, 
            index=False,
            formatters={ 'IndexName': lambda x: IndexKey_samp(x) } 
            )
        IndexHtml = re.sub('&lt;', '<', IndexHtml)   # -- 將 &lt; 替換成 <
        IndexHtml = re.sub('&gt;', '>', IndexHtml)  # -- 將 &gt; 替換成 >

    # ----------------------------------------------------------------------------------------------------------------------
    # -- 取得 Table Structure 資料
    # -- 只需要 _TableStructure_df.loc[x]['TableID'] 的資料

    _TableStructure_df1 = _TableStructure_df.loc[ _TableStructure_df['TableID'] == _TableID ]
    if len(_TableStructure_df1) == 0:    # -- 若無資料，以空字串代替 = 不顯示
        TableHtml = ''
    else:
        # -- 設定需要顯示的 TableStructure 欄位
        # -- ['TableID', 'TableName', 'ModuleID', 'sID', 'ID', 'FieldName', 'NameVietnam', 'Type', 'Length', 'Description']
        _TableStructure_df1 = _TableStructure_df1.loc[:,'ID':'Description']

        # -- 設定 Field 欄位格式 (HTML> TABLE> TD)
        TableHtml = _TableStructure_df1.to_html(
            border=0,                                                                   # -- 設定 TABLE BORDER=0
            index=False,                                                                # -- 設定不顯示索引
            formatters={'Description': lambda x: Description_Convert_to_HTML_String(x)
                                #'FieldName': lambda x: Name_Tooltip(x)
                        })
        TableHtml = re.sub('&lt;', '<', TableHtml)   # -- 將 &lt; 替換成 <
        TableHtml = re.sub('&gt;', '>', TableHtml)  # -- 將 &gt; 替換成 >

        TableStructure_Caption = '\n   <details>\n   <summary>' + TableName + '</summary>\n'       # -- 設定 TABLE 標題
        AllTableHtml += TableStructure_Caption + '   <content>\n\n      ' + IndexHtml + '\n      ' + TableHtml + '\n   </content>\n</details>\n\n'

if not os.path.isdir('HTML'):       # -- 檢查資料夾是否存在
    # -- 如果不存在，就建立資料夾
    os.makedirs('HTML', mode=0o777)

# OUTPUT AN HTML FILE
with open('HTML\\'+ModuleName+'.html', 'w',encoding="utf-8") as f:
    html_data = html_string.format(
        HtmlTitle=TitleString,
        MoudleTitle=HeaderString,        # -- 替換 html_string 中的 {MoudleTitle}
        tablename=TableName,           # -- 替換 html_string 中的 {tablename}
        table=AllTableHtml                  # -- 替換 html_string 中的 {table}
        )
    f.write(html_data)
    f.close()


