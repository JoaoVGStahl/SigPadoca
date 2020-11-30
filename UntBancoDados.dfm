object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 168
  Width = 258
  object ADOConexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=admin123@;Persist Security Info=Tru' +
      'e;User ID=sa;Initial Catalog=padoca;Data Source=PCSEMIGAMER\SQLS' +
      'ERVER'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 112
    Top = 64
  end
end
