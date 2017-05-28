object FormData: TFormData
  Left = 0
  Top = 0
  Caption = 'FormData'
  ClientHeight = 67
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ABSDatabase: TABSDatabase
    CurrentVersion = '7.50 '
    DatabaseName = 'SyngentaDb'
    Exclusive = False
    Password = 'syadmin'
    MaxConnections = 20
    MultiUser = False
    SessionName = 'Default'
    Left = 24
    Top = 15
  end
  object ABSTable: TABSTable
    CurrentVersion = '7.50 '
    DatabaseName = 'SyngentaDb'
    InMemory = False
    ReadOnly = False
    AutoCalcFields = False
    StoreDefs = True
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'CRPCD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MATID'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HIGHNAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ABBRC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CGENES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ADMNC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOTID'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'GENCD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FPTID'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UUID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ALTID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MLTST'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TREATMENT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DISCLAIMER'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LABELLED'
        DataType = ftString
        Size = 50
      end>
    TableName = 'tbl_input'
    Exclusive = False
    Left = 72
    Top = 15
  end
  object ABSQuerySearch: TABSQuery
    CurrentVersion = '7.50 '
    DatabaseName = 'dbSyngenta'
    InMemory = False
    ReadOnly = False
    Left = 200
    Top = 15
  end
  object ABSQuery: TABSQuery
    CurrentVersion = '7.50 '
    DatabaseName = 'SyngentaDb'
    InMemory = False
    ReadOnly = True
    DataSource = DataSource
    RequestLive = True
    Left = 264
    Top = 15
  end
  object DataSource: TDataSource
    DataSet = ABSTable
    Left = 144
    Top = 15
  end
  object ABSQueryUpdate: TABSQuery
    CurrentVersion = '7.50 '
    DatabaseName = 'SyngentaDb'
    InMemory = False
    ReadOnly = False
    Left = 456
    Top = 16
  end
end
