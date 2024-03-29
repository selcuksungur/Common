inherited OptionsEditorCompletionProposalFrame: TOptionsEditorCompletionProposalFrame
  Width = 164
  Height = 113
  object Panel: TBCPanel [0]
    AlignWithMargins = True
    Left = 4
    Top = 0
    Width = 160
    Height = 113
    Margins.Left = 4
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    BevelOuter = bvNone
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    SkinData.SkinSection = 'CHECKBOX'
    object StickyLabelCaseSensitive: TsStickyLabel
      Left = 0
      Top = 27
      Width = 102
      Height = 13
      AutoSize = False
      Caption = 'Case sensitive'
      AttachTo = SliderCaseSensitive
      Gap = 8
    end
    object StickyLabelEnabled: TsStickyLabel
      Left = 0
      Top = 4
      Width = 102
      Height = 13
      AutoSize = False
      Caption = 'Enabled'
      AttachTo = SliderEnabled
      Gap = 8
    end
    object StickyLabelAutoInvoke: TsStickyLabel
      Left = 0
      Top = 50
      Width = 102
      Height = 13
      AutoSize = False
      Caption = 'Auto invoke'
      AttachTo = SliderAutoInvoke
      Gap = 8
    end
    object ComboBoxShortcut: TBCComboBox
      Left = 0
      Top = 91
      Width = 160
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = 'Shortcut'
      BoundLabel.Indent = 4
      BoundLabel.Layout = sclTopLeft
      DropDownCount = 9
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Style = csOwnerDrawFixed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentFont = False
      TabOrder = 3
      UseMouseWheel = False
    end
    object SliderCaseSensitive: TsSlider
      Left = 110
      Top = 23
      Width = 50
      AutoSize = True
      TabOrder = 1
      BoundLabel.Indent = 6
      ImageIndexOff = 0
      ImageIndexOn = 0
      FontOn.Charset = DEFAULT_CHARSET
      FontOn.Color = clWindowText
      FontOn.Height = -11
      FontOn.Name = 'Tahoma'
      FontOn.Style = []
      SliderCaptionOn = 'Yes'
      SliderCaptionOff = 'No'
      SliderOn = False
    end
    object SliderEnabled: TsSlider
      Left = 110
      Top = 0
      Width = 50
      AutoSize = True
      TabOrder = 0
      BoundLabel.Indent = 6
      ImageIndexOff = 0
      ImageIndexOn = 0
      FontOn.Charset = DEFAULT_CHARSET
      FontOn.Color = clWindowText
      FontOn.Height = -11
      FontOn.Name = 'Tahoma'
      FontOn.Style = []
      SliderCaptionOn = 'Yes'
      SliderCaptionOff = 'No'
    end
    object SliderAutoInvoke: TsSlider
      Left = 110
      Top = 46
      Width = 50
      AutoSize = True
      TabOrder = 2
      BoundLabel.Indent = 6
      ImageIndexOff = 0
      ImageIndexOn = 0
      FontOn.Charset = DEFAULT_CHARSET
      FontOn.Color = clWindowText
      FontOn.Height = -11
      FontOn.Name = 'Tahoma'
      FontOn.Style = []
      SliderCaptionOn = 'Yes'
      SliderCaptionOff = 'No'
      SliderOn = False
    end
  end
end
