object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 211
  Width = 324
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\mysql\Documents\GitHub\Jefferson_Dezembro\Pedidos\libmy' +
      'sql.dll'
    Left = 144
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=sakila'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 16
  end
end