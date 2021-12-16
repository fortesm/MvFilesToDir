object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  CustomHint = BalloonHint
  BorderStyle = bsDialog
  ClientHeight = 334
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 343
    Height = 13
    CustomHint = BalloonHint
    Caption = 
      'Copie aqui o caminho completo da pasta ou navegue clicando no bo' +
      't'#227'o:'
  end
  object SPBCred: TSpeedButton
    Left = 369
    Top = 8
    Width = 101
    Height = 22
    CustomHint = BalloonHint
    Caption = 'Cr'#233'ditos...'
    OnClick = SPBCredClick
  end
  object BtMv: TButton
    Left = 112
    Top = 68
    Width = 297
    Height = 25
    CustomHint = BalloonHint
    Align = alCustom
    Caption = 'Mover Arquivos'
    TabOrder = 0
    OnClick = BtMvClick
  end
  object Memo: TMemo
    Left = 8
    Top = 99
    Width = 502
    Height = 202
    CustomHint = BalloonHint
    Lines.Strings = (
      'Move os arquivos de um diret'#243'rio  para um novo '
      
        'subdiret'#243'rio, cada novo subdiret'#243'rio com o mesmo nome pego de um' +
        ' '
      'dos arquivos listado.'
      ''
      
        'Assim, cada arquivo fica organizado em um diret'#243'rio com o mesmo ' +
        'nome do arquivo. '
      ''
      'Para organizar minha biblioteca de filmes, ao inv'#233's de todos os '
      
        'filmes misturados num diret'#243'rio, cada filme fica guardado no seu' +
        ' respectivo '
      
        'diret'#243'rio com o mesmo nome do arquivo, evitando de eu copiar os ' +
        'arquivos de um '
      'por um para um diret'#243'rio e renomear cada diret'#243'rio.'
      ''
      
        'Para usar '#233' bem simples ponha o caminho da pasta onde est'#227'o todo' +
        's os arquivos no edit '
      
        'acima e clique no bot'#227'o "Mover Arquivos" Todos os arquivos que e' +
        'stiverem l'#225' ficar'#227'o '
      'organizados em subdiret'#243'rios nesta apasta.')
    ReadOnly = True
    TabOrder = 1
  end
  object Ed: TEdit
    Left = 8
    Top = 35
    Width = 462
    Height = 21
    CustomHint = BalloonHint
    TabOrder = 2
  end
  object BtNav: TBitBtn
    Left = 476
    Top = 33
    Width = 34
    Height = 25
    Hint = 'Abrir Diret'#243'rio'
    CustomHint = BalloonHint
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFDEDEDECCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      CCCCCCCCDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3C29368BC722EBB
      702CBA6F2BBA6E2AB96E2AB96E2AB96E2ABA6F2CC29368FFFFFFFFFFFFFFFFFF
      FFFFFFD3D3D3BF7F48B98246CCD3DAD9DDE1E8ECF0F7FBFFFFFFFFFFFFFFFFFF
      FFFFFFFFBA6F2CFFFFFFFFFFFFFFFFFFD2D2D2BE7F48C48F52B88D53CBCED1D7
      D7D7E5E5E5F6F6F6FCFCFCFCFCFCFCFCFCFFFFFFB96E2AFFFFFFFFFFFFFFFFFF
      BE7F48CE9959CAA165B88C52CBCED1D7D7D7E5E5E5F9F9F9FCFCFCFCFCFCFCFC
      FCFFFFFFB96E2AFFFFFFFFFFFFFFFFFFBB7232E1BD88C99F62B88C51CBCED1D7
      D7D7E5E5E5FDFDFDFCFCFCFCFCFCFCFCFCFFFFFFB96E2AFFFFFFFFFFFFFFFFFF
      BB7231E3C08DC99E61B88C51CBCED1D6D6D6ECECECFDFDFDFCFCFCFCFCFCFCFC
      FCFFFFFFB96E2AFFFFFFFFFFFFFFFFFFBB7231E4C393C89E61B88C51CBCED1D6
      D6D6F4F4F4FDFDFDFCFCFCFEFEFEFFFFFFFFFFFFBA6F2BFFFFFFFFFFFFFFFFFF
      BB7231E5C699C89E61B88C51CBCED1D7D7D7FFFFFFFDFDFDFFFFFFD9D9D9B5B5
      B58D9297BD722EFFFFFFFFFFFFFFFFFFBB7130E7CBA0C89E60B88C51CBCDD0E3
      E3E3FEFEFEFEFEFED7D6D6FAFAFAE9EAECD7CFC4BC722FFFFFFFFFFFFFFFFFFF
      BA7130E9CEA7C89D5FB78A50C9CBCFF0F0F0FDFDFDFFFFFFC5C5C4E8E9EBC9B9
      A4CDB490BC7230FFFFFFFFFFFFFFFFFFBA712FEAD1ACC79B5DCAAA80DFE5EBFF
      FFFFFFFFFFFFFFFFC0C3C6D9D3C9D5BB98D1BC9CBC7332FFFFFFFFFFFFFFFFFF
      BA712FEBD2ADD6B78ACDA376BA6E2AB96E2AB96E2ABA6E2ABC712DBC712EBC72
      30BC7332D4A47AFFFFFFFFFFFFFFFFFFBB7230ECD5B1D3A87AD4A57BFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      BC7433D19C5CD3A47BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD7636C4864EFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtNavClick
  end
  object ProgressBar: TProgressBar
    Left = 8
    Top = 307
    Width = 501
    Height = 17
    CustomHint = BalloonHint
    Step = 1
    TabOrder = 4
  end
  object OpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Left = 464
    Top = 64
  end
  object BalloonHint: TBalloonHint
    Left = 416
    Top = 64
  end
end
