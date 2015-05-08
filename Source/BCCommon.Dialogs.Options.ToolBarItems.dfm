object OptionsToolBarItemsDialog: TOptionsToolBarItemsDialog
  Left = 0
  Top = 0
  Caption = 'Select Items'
  ClientHeight = 376
  ClientWidth = 314
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PanelButton: TBCPanel
    Left = 0
    Top = 344
    Width = 314
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 8
    Padding.Right = 8
    Padding.Bottom = 8
    TabOrder = 0
    SkinData.SkinSection = 'CHECKBOX'
    object ButtonAdd: TButton
      Left = 151
      Top = 0
      Width = 75
      Height = 24
      Align = alRight
      Caption = 'Add'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object ButtonCancel: TButton
      AlignWithMargins = True
      Left = 231
      Top = 0
      Width = 75
      Height = 24
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
  object VirtualDrawTreeAddItems: TVirtualDrawTree
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 302
    Height = 332
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    Ctl3D = True
    DragOperations = []
    EditDelay = 0
    Header.AutoSizeIndex = 0
    Header.DefaultHeight = 20
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.Height = 20
    Header.Options = [hoAutoResize, hoShowImages, hoShowSortGlyphs, hoVisible, hoAutoSpring]
    Images = ImagesDataModule.ImageList
    Indent = 0
    ParentCtl3D = False
    SelectionBlendFactor = 255
    TabOrder = 1
    TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand]
    TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning, toEditOnClick]
    TreeOptions.PaintOptions = [toHideFocusRect, toShowButtons, toShowDropmark, toShowRoot, toThemeAware, toGhostedIfUnfocused]
    TreeOptions.SelectionOptions = [toFullRowSelect, toMiddleClickSelect]
    WantTabs = True
    OnDrawNode = VirtualDrawTreeAddItemsDrawNode
    OnFreeNode = VirtualDrawTreeAddItemsFreeNode
    OnGetImageIndex = VirtualDrawTreeAddItemsGetImageIndex
    OnGetNodeWidth = VirtualDrawTreeAddItemsGetNodeWidth
    Columns = <
      item
        Options = [coEnabled, coParentBidiMode, coParentColor, coVisible, coAutoSpring]
        Position = 0
        Width = 298
        WideText = 'Menu Item'
      end>
  end
  object SkinProvider: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 196
    Top = 74
  end
end