object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'ZPL Preview'
  ClientHeight = 629
  ClientWidth = 1176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbDPMM: TLabel
    Left = 8
    Top = 11
    Width = 39
    Height = 15
    Caption = ' '#54644#49345#46020
  end
  object lbPaperWidth: TLabel
    Left = 8
    Top = 43
    Width = 80
    Height = 15
    Caption = #50857#51648#53356#44592'('#44032#47196')'
  end
  object lbPaperHewight: TLabel
    Left = 8
    Top = 72
    Width = 80
    Height = 15
    Caption = #50857#51648#53356#44592'('#49464#47196')'
  end
  object lbContent: TLabel
    Left = 8
    Top = 109
    Width = 48
    Height = 15
    Caption = #51064#49604#45236#50857
  end
  object eZPL: TMemo
    Left = 8
    Top = 130
    Width = 481
    Height = 495
    Lines.Strings = (
      '^XA'
      ''
      '^FX Top section with logo, name and address.'
      '^CF0,60'
      '^FO50,50^GB100,100,100^FS'
      '^FO75,75^FR^GB100,100,100^FS'
      '^FO93,93^GB40,40,40^FS'
      '^FO220,50^FDIntershipping, Inc.^FS'
      '^CF0,30'
      '^FO220,115^FD1000 Shipping Lane^FS'
      '^FO220,155^FDShelbyville TN 38102^FS'
      '^FO220,195^FDUnited States (USA)^FS'
      '^FO50,250^GB700,3,3^FS'
      ''
      
        '^FX Second section with recipient address and permit information' +
        '.'
      '^CFA,30'
      '^FO50,300^FDJohn Doe^FS'
      '^FO50,340^FD100 Main Street^FS'
      '^FO50,380^FDSpringfield TN 39021^FS'
      '^FO50,420^FDUnited States (USA)^FS'
      '^CFA,15'
      '^FO600,300^GB150,150,3^FS'
      '^FO638,340^FDPermit^FS'
      '^FO638,390^FD123456^FS'
      '^FO50,500^GB700,3,3^FS'
      ''
      '^FX Third section with bar code.'
      '^BY5,2,270'
      '^FO100,550^BC^FD12345678^FS'
      ''
      '^FX Fourth section (the two boxes on the bottom).'
      '^FO50,900^GB700,250,3^FS'
      '^FO400,900^GB3,250,3^FS'
      '^CF0,40'
      '^FO100,960^FDCtr. X34B-1^FS'
      '^FO100,1010^FDREF1 F00B47^FS'
      '^FO100,1060^FDREF2 BL4H8^FS'
      '^CF0,190'
      '^FO470,955^FDCA^FS'
      ''
      '^XZ')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object eDPMM: TComboBox
    Left = 96
    Top = 8
    Width = 121
    Height = 23
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '6dpmm'
    Items.Strings = (
      '6dpmm'
      '8dpmm'
      '12dpmm'
      '24dpmm')
  end
  object eWidth: TEdit
    Left = 96
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 2
    Text = '6'
  end
  object eHeight: TEdit
    Left = 96
    Top = 69
    Width = 121
    Height = 23
    TabOrder = 3
    Text = '4'
  end
  object btnExecute: TButton
    Left = 414
    Top = 8
    Width = 75
    Height = 25
    Caption = #49373#49457
    TabOrder = 4
    OnClick = btnExecuteClick
  end
  object ScrollBox1: TScrollBox
    Left = 495
    Top = 8
    Width = 673
    Height = 617
    Color = clBlack
    ParentColor = False
    TabOrder = 5
    object Image1: TImage
      Left = 11
      Top = 14
      Width = 481
      Height = 425
    end
  end
  object btnSave: TButton
    Left = 414
    Top = 39
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 6
    OnClick = btnSaveClick
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = '.png'
    Filter = 'PNG FILE (*.png)|*.png'
    Left = 584
    Top = 320
  end
end
