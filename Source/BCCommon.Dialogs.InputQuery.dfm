object InputQueryDialog: TInputQueryDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caption'
  ClientHeight = 72
  ClientWidth = 170
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelButton: TBCPanel
    Left = 0
    Top = 31
    Width = 170
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Top = 8
    Padding.Right = 6
    Padding.Bottom = 8
    TabOrder = 1
    SkinData.SkinSection = 'CHECKBOX'
    object ButtonOK: TButton
      Left = 9
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alRight
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object ButtonCancel: TButton
      AlignWithMargins = True
      Left = 89
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PanelTop: TBCPanel
    Left = 0
    Top = 0
    Width = 170
    Height = 31
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 8
    Padding.Top = 8
    Padding.Right = 8
    Padding.Bottom = 4
    TabOrder = 0
    SkinData.SkinSection = 'CHECKBOX'
    object EditValue: TBCEdit
      Left = 8
      Top = 8
      Width = 154
      Height = 21
      Align = alTop
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      EnterToTab = False
      OnlyNumbers = False
      NumbersWithDots = False
      NumbersWithSpots = False
      ErrorColor = 14803198
      NumbersAllowNegative = False
    end
  end
end
