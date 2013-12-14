unit BCCommon.OptionsContainer;

interface

uses
  System.Classes, Vcl.ActnMenus, SynEdit{$ifdef EDITBONE}, Lib, BCCommon.FileUtils, SynHighlighterWebData,
  SynHighlighterWeb, SynHighlighterSQL{$endif};

type
  TOptionsContainer = class(TComponent)
  private
    FAnimationDuration: Integer;
    FAnimationStyle: TAnimationStyle;
    FAutoIndent: Boolean;
    FAutoSave: Boolean;
    FBeepIfSearchStringNotFound: Boolean;
    FColorBrightness: Integer;
    FCompletionProposalCaseSensitive: Boolean;
    FCompletionProposalEnabled: Boolean;
    FCompletionProposalShortcut: string;
    FEnableLineNumbers: Boolean;
    FEnableSelectionMode: Boolean;
    FEnableSpecialChars: Boolean;
    FEnableWordWrap: Boolean;
    FFontName: string;
    FFontSize: Integer;
    FIgnoreBlanks: Boolean;
    FIgnoreCase: Boolean;
    FInsertCaret: TSynEditCaretType;
    FLineSpacing: Integer;
    FMainMenuFontName: string;
    FMainMenuFontSize: Integer;
    FMainMenuSystemFontName: string;
    FMainMenuSystemFontSize: Integer;
    FMainMenuUseSystemFont: Boolean;
    FMarginFontName: string;
    FMarginFontSize: Integer;
    FMarginInTens: Boolean;
    FMarginLeftMarginAutoSize: Boolean;
    FMarginLeftMarginWidth: Integer;
    FMarginLeftMarginMouseMove: Boolean;
    FMarginLineModified: Boolean;
    FMarginModifiedColor: string;
    FMarginNormalColor: string;
    FMarginRightMargin: Integer;
    FMarginShowBookmarks: Boolean;
    FMarginShowBookmarkPanel: Boolean;
    FMarginVisibleLeftMargin: Boolean;
    FMarginVisibleRightMargin: Boolean;
    FMarginZeroStart: Boolean;
    FMinimapFontName: string;
    FMinimapFontSize: Integer;
    FMinimapWidth: Integer;
    FNonblinkingCaret: Boolean;
    FNonblinkingCaretColor: string;
    FOutputIndent: Integer;
    FOutputShowTreeLines: Boolean;
    FPersistentHotKeys: Boolean;
    FPrintDateTime: Integer;
    FPrintDocumentName: Integer;
    FPrintPageNumber: Integer;
    FPrintPrintedBy: Integer;
    FPrintShowFooterLine: Boolean;
    FPrintShowHeaderLine: Boolean;
    FPrintShowLineNumbers: Boolean;
    FPrintWordWrapLine: Boolean;
    FScrollPastEof: Boolean;
    FScrollPastEol: Boolean;
    FShadows: Boolean;
    FShowSearchStringNotFound: Boolean;
    FSmartTabDelete: Boolean;
    FSmartTabs: Boolean;
    FStatusBarFontName: string;
    FStatusBarFontSize: Integer;
    FStatusBarUseSystemFont: Boolean;
    FTabsToSpaces: Boolean;
    FTabWidth: Integer;
    FToolBarCase: Boolean;
    FToolBarCommand: Boolean;
    FToolBarIndent: Boolean;
    FToolBarMode: Boolean;
    FToolBarPrint: Boolean;
    FToolBarSearch: Boolean;
    FToolBarSort: Boolean;
    FToolBarStandard: Boolean;
    FToolBarTools: Boolean;
    FTrimTrailingSpaces: Boolean;
    FTripleClickRowSelect: Boolean;
    FUndoAfterSave: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AssignTo(Dest: TPersistent); override;
  published
    property AnimationDuration: Integer read FAnimationDuration write FAnimationDuration default 150;
    property AnimationStyle: TAnimationStyle read FAnimationStyle write FAnimationStyle default asDefault;
    property AutoIndent: Boolean read FAutoIndent write FAutoIndent default True;
    property AutoSave: Boolean read FAutoSave write FAutoSave default False;
    property BeepIfSearchStringNotFound: Boolean read FBeepIfSearchStringNotFound write FBeepIfSearchStringNotFound default True;
    property ColorBrightness: Integer read FColorBrightness write FColorBrightness;
    property CompletionProposalCaseSensitive: Boolean read FCompletionProposalCaseSensitive write FCompletionProposalCaseSensitive default True;
    property CompletionProposalEnabled: Boolean read FCompletionProposalEnabled write FCompletionProposalEnabled default True;
    property CompletionProposalShortcut: string read FCompletionProposalShortcut write FCompletionProposalShortcut;
    property EnableLineNumbers: Boolean read FEnableLineNumbers write FEnableLineNumbers default True;
    property EnableSelectionMode: Boolean read FEnableSelectionMode write FEnableSelectionMode default False;
    property EnableSpecialChars: Boolean read FEnableSpecialChars write FEnableSpecialChars default False;
    property EnableWordWrap: Boolean read FEnableWordWrap write FEnableWordWrap default False;
    property FontName: string read FFontName write FFontName;
    property FontSize: Integer read FFontSize write FFontSize default 9;
    property IgnoreBlanks: Boolean read FIgnoreBlanks write FIgnoreBlanks default True;
    property IgnoreCase: Boolean read FIgnoreCase write FIgnoreCase default True;
    property InsertCaret: TSynEditCaretType read FInsertCaret write FInsertCaret default ctVerticalLine;
    property LineSpacing: Integer read FLineSpacing write FLineSpacing default 0;
    property MainMenuFontName: string read FMainMenuFontName write FMainMenuFontName;
    property MainMenuFontSize: Integer read FMainMenuFontSize write FMainMenuFontSize default 8;
    property MainMenuSystemFontName: string read FMainMenuSystemFontName write FMainMenuSystemFontName;
    property MainMenuSystemFontSize: Integer read FMainMenuSystemFontSize write FMainMenuSystemFontSize;
    property MainMenuUseSystemFont: Boolean read FMainMenuUseSystemFont write FMainMenuUseSystemFont default False;
    property MarginFontName: string read FMarginFontName write FMarginFontName;
    property MarginFontSize: Integer read FMarginFontSize write FMarginFontSize default 9;
    property MarginInTens: Boolean read FMarginInTens write FMarginInTens default True;
    property MarginLeftMarginAutoSize: Boolean read FMarginLeftMarginAutoSize write FMarginLeftMarginAutoSize default True;
    property MarginLeftMarginWidth: Integer read FMarginLeftMarginWidth write FMarginLeftMarginWidth default 30;
    property MarginLeftMarginMouseMove: Boolean read FMarginLeftMarginMouseMove write FMarginLeftMarginMouseMove default True;
    property MarginLineModified: Boolean read FMarginLineModified write FMarginLineModified default False;
    property MarginModifiedColor: string read FMarginModifiedColor write FMarginModifiedColor;
    property MarginNormalColor: string read FMarginNormalColor write FMarginNormalColor;
    property MarginRightMargin: Integer read FMarginRightMargin write FMarginRightMargin default 80;
    property MarginShowBookmarks: Boolean read FMarginShowBookmarks write FMarginShowBookmarks default True;
    property MarginShowBookmarkPanel: Boolean read FMarginShowBookmarkPanel write FMarginShowBookmarkPanel default True;
    property MarginVisibleLeftMargin: Boolean read FMarginVisibleLeftMargin write FMarginVisibleLeftMargin default True;
    property MarginVisibleRightMargin: Boolean read FMarginVisibleRightMargin write FMarginVisibleRightMargin default True;
    property MarginZeroStart: Boolean read FMarginZeroStart write FMarginZeroStart default False;
    property MinimapFontName: string read FMinimapFontName write FMinimapFontName;
    property MinimapFontSize: Integer read FMinimapFontSize write FMinimapFontSize default 2;
    property MinimapWidth: Integer read FMinimapWidth write FMinimapWidth default 100;
    property NonblinkingCaret: Boolean read FNonblinkingCaret write FNonblinkingCaret default False;
    property NonblinkingCaretColor: string read FNonblinkingCaretColor write FNonblinkingCaretColor;
    property OutputIndent: Integer read FOutputIndent write FOutputIndent default 16;
    property OutputShowTreeLines: Boolean read FOutputShowTreeLines write FOutputShowTreeLines default False;
    property PersistentHotKeys: Boolean read FPersistentHotKeys write FPersistentHotKeys default False;
    property PrintDateTime: Integer read FPrintDateTime write FPrintDateTime;
    property PrintDocumentName: Integer read FPrintDocumentName write FPrintDocumentName;
    property PrintPageNumber: Integer read FPrintPageNumber write FPrintPageNumber;
    property PrintPrintedBy: Integer read FPrintPrintedBy write FPrintPrintedBy;
    property PrintShowFooterLine: Boolean read FPrintShowFooterLine write FPrintShowFooterLine;
    property PrintShowHeaderLine: Boolean read FPrintShowHeaderLine write FPrintShowHeaderLine;
    property PrintShowLineNumbers: Boolean read FPrintShowLineNumbers write FPrintShowLineNumbers;
    property PrintWordWrapLine: Boolean read FPrintWordWrapLine write FPrintWordWrapLine;
    property ScrollPastEof: Boolean read FScrollPastEof write FScrollPastEof default False;
    property ScrollPastEol: Boolean read FScrollPastEol write FScrollPastEol default True;
    property Shadows: Boolean read FShadows write FShadows default True;
    property ShowSearchStringNotFound: Boolean read FShowSearchStringNotFound write FShowSearchStringNotFound default True;
    property SmartTabDelete: Boolean read FSmartTabDelete write FSmartTabDelete default False;
    property SmartTabs: Boolean read FSmartTabs write FSmartTabs default False;
    property StatusBarFontName: string read FStatusBarFontName write FStatusBarFontName;
    property StatusBarFontSize: Integer read FStatusBarFontSize write FStatusBarFontSize default 8;
    property StatusBarUseSystemFont: Boolean read FStatusBarUseSystemFont write FStatusBarUseSystemFont default False;
    property TabsToSpaces: Boolean read FTabsToSpaces write FTabsToSpaces default True;
    property TabWidth: Integer read FTabWidth write FTabWidth default 8;
    property ToolBarCase: Boolean read FToolBarCase write FToolBarCase default True;
    property ToolBarCommand: Boolean read FToolBarCommand write FToolBarCommand default True;
    property ToolBarPrint: Boolean read FToolBarPrint write FToolBarPrint default True;
    property ToolBarIndent: Boolean read FToolBarIndent write FToolBarIndent default True;
    property ToolBarStandard: Boolean read FToolBarStandard write FToolBarStandard default True;
    property ToolBarMode: Boolean read FToolBarMode write FToolBarMode default True;
    property ToolBarSearch: Boolean read FToolBarSearch write FToolBarSearch default True;
    property ToolBarSort: Boolean read FToolBarSort write FToolBarSort default True;
    property ToolBarTools: Boolean read FToolBarTools write FToolBarTools default True;
    property TrimTrailingSpaces: Boolean read FTrimTrailingSpaces write FTrimTrailingSpaces default True;
    property TripleClickRowSelect: Boolean read FTripleClickRowSelect write FTripleClickRowSelect default True;
    property UndoAfterSave: Boolean read FUndoAfterSave write FUndoAfterSave default False;
  end;

  {$ifdef ORABONE}
  TOraBoneOptionsContainer = class(TOptionsContainer)
  private
    FConnectionCloseTabByDblClick: Boolean;
    FConnectionCloseTabByMiddleClick: Boolean;
    FConnectionDoubleBuffered: Boolean;
    FConnectionMultiLine: Boolean;
    FConnectionRightClickSelect: Boolean;
    FConnectionShowCloseButton: Boolean;
    FConnectionShowImage: Boolean;
    FDateFormat: string;
    FEditorCloseTabByDblClick: Boolean;
    FEditorCloseTabByMiddleClick: Boolean;
    FEditorDoubleBuffered: Boolean;
    FEditorMultiLine: Boolean;
    FEditorRightClickSelect: Boolean;
    FEditorShowCloseButton: Boolean;
    FEditorShowImage: Boolean;
    FFilterOnTyping: Boolean;
    FObjectFrameAlign: string;
    FOutputCloseTabByDblClick: Boolean;
    FOutputCloseTabByMiddleClick: Boolean;
    FOutputDoubleBuffered: Boolean;
    FOutputMultiLine: Boolean;
    FOutputRightClickSelect: Boolean;
    FOutputShowCloseButton: Boolean;
    FOutputShowImage: Boolean;
    FPollingInterval: Integer;
    FSchemaBrowserAlign: string;
    FSchemaBrowserIndent: Integer;
    FSchemaBrowserShowTreeLines: Boolean;
    FShowDataSearchPanel: Boolean;
    FShowObjectCreationAndModificationTimestamp: Boolean;
    FTimeFormat: string;
    FToolBarDBMS: Boolean;
    FToolBarExecute: Boolean;
    FToolBarExplainPlan: Boolean;
    FToolBarTransaction: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property ConnectionCloseTabByDblClick: Boolean read FConnectionCloseTabByDblClick write FConnectionCloseTabByDblClick default False;
    property ConnectionCloseTabByMiddleClick: Boolean read FConnectionCloseTabByMiddleClick write FConnectionCloseTabByMiddleClick default False;
    property ConnectionDoubleBuffered: Boolean read FConnectionDoubleBuffered write FConnectionDoubleBuffered default True;
    property ConnectionMultiLine: Boolean read FConnectionMultiLine write FConnectionMultiLine default False;
    property ConnectionRightClickSelect: Boolean read FConnectionRightClickSelect write FConnectionRightClickSelect default True;
    property ConnectionShowCloseButton: Boolean read FConnectionShowCloseButton write FConnectionShowCloseButton default False;
    property ConnectionShowImage: Boolean read FConnectionShowImage write FConnectionShowImage default True;
    property DateFormat: string read FDateFormat write FDateFormat;
    property EditorCloseTabByDblClick: Boolean read FEditorCloseTabByDblClick write FEditorCloseTabByDblClick default False;
    property EditorCloseTabByMiddleClick: Boolean read FEditorCloseTabByMiddleClick write FEditorCloseTabByMiddleClick  default False;
    property EditorDoubleBuffered: Boolean read FEditorDoubleBuffered write FEditorDoubleBuffered default True;
    property EditorMultiLine: Boolean read FEditorMultiLine write FEditorMultiLine default False;
    property EditorRightClickSelect: Boolean read FEditorRightClickSelect write FEditorRightClickSelect default True;
    property EditorShowCloseButton: Boolean read FEditorShowCloseButton write FEditorShowCloseButton default False;
    property EditorShowImage: Boolean read FEditorShowImage write FEditorShowImage default True;
    property FilterOnTyping: Boolean read FFilterOnTyping write FFilterOnTyping default True;
    property ObjectFrameAlign: string read FObjectFrameAlign write FObjectFrameAlign;
    property OutputCloseTabByDblClick: Boolean read FOutputCloseTabByDblClick write FOutputCloseTabByDblClick default False;
    property OutputCloseTabByMiddleClick: Boolean read FOutputCloseTabByMiddleClick write FOutputCloseTabByMiddleClick default False;
    property OutputDoubleBuffered: Boolean read FOutputDoubleBuffered write FOutputDoubleBuffered default True;
    property OutputMultiLine: Boolean read FOutputMultiLine write FOutputMultiLine default False;
    property OutputRightClickSelect: Boolean read FOutputRightClickSelect write FOutputRightClickSelect default True;
    property OutputShowCloseButton: Boolean read FOutputShowCloseButton write FOutputShowCloseButton default False;
    property OutputShowImage: Boolean read FOutputShowImage write FOutputShowImage default True;
    property PollingInterval: Integer read FPollingInterval write FPollingInterval default 1;
    property SchemaBrowserAlign: string read FSchemaBrowserAlign write FSchemaBrowserAlign;
    property SchemaBrowserIndent: Integer read FSchemaBrowserIndent write FSchemaBrowserIndent default 16;
    property SchemaBrowserShowTreeLines: Boolean read FSchemaBrowserShowTreeLines write FSchemaBrowserShowTreeLines default False;
    property ShowDataSearchPanel: Boolean read FShowDataSearchPanel write FShowDataSearchPanel default True;
    property ShowObjectCreationAndModificationTimestamp: Boolean read FShowObjectCreationAndModificationTimestamp write FShowObjectCreationAndModificationTimestamp default False;
    property TimeFormat: string read FTimeFormat write FTimeFormat;
    property ToolBarDBMS: Boolean read FToolBarDBMS write FToolBarDBMS default True;
    property ToolBarExecute: Boolean read FToolBarExecute write FToolBarExecute default True;
    property ToolBarExplainPlan: Boolean read FToolBarExplainPlan write FToolBarExplainPlan default True;
    property ToolBarTransaction: Boolean read FToolBarTransaction write FToolBarTransaction default True;
  end;

  function OptionsContainer: TOraBoneOptionsContainer;
  {$endif}

  {$ifdef EDITBONE}
  TEditBoneOptionsContainer = class(TOptionsContainer)
  private
    FCPASHighlighter: TCPASHighlighter;
    FCSSVersion: TSynWebCssVersion;
    FDefaultEncoding: Integer;
    FDefaultHighlighter: Integer;
    FDirCloseTabByDblClick: Boolean;
    FDirCloseTabByMiddleClick: Boolean;
    FDirDoubleBuffered: Boolean;
    FDirIndent: Integer;
    FDirMultiLine: Boolean;
    FDirRightClickSelect: Boolean;
    FDirSaveTabs: Boolean;
    FDirShowArchiveFiles: Boolean;
    FDirShowCloseButton: Boolean;
    FDirShowHiddenFiles: Boolean;
    FDirShowImage: Boolean;
    FDirShowSystemFiles: Boolean;
    FDirShowTreeLines: Boolean;
    FDocCloseTabByDblClick: Boolean;
    FDocCloseTabByMiddleClick: Boolean;
    FDocDoubleBuffered: Boolean;
    FDocMultiLine: Boolean;
    FDocRightClickSelect: Boolean;
    FDocSaveTabs: Boolean;
    FDocShowCloseButton: Boolean;
    FDocShowImage: Boolean;
    FFileTypes: TStrings;
    FHTMLErrorChecking: Boolean;
    FHTMLVersion: TSynWebHtmlVersion;
    FOutputCloseTabByDblClick: Boolean;
    FOutputCloseTabByMiddleClick: Boolean;
    FOutputDoubleBuffered: Boolean;
    FOutputMultiLine: Boolean;
    FOutputRightClickSelect: Boolean;
    FOutputSaveTabs: Boolean;
    FOutputShowCloseButton: Boolean;
    FOutputShowImage: Boolean;
    FPHPVersion: TSynWebPhpVersion;
    FShowSearchStringNotFound: Boolean;
    FShowXMLTree: Boolean;
    FSQLDialect: TSQLDialect;
    FSupportedFileExts: string;
    FToolBarDirectory: Boolean;
    FToolBarDocument: Boolean;
    FToolBarMacro: Boolean;
    FToolBarVisible: Boolean;
    function GetExtensions: string;
    function GetFilterCount: Cardinal;
    function GetFilters: string;
  public
    constructor Create(AOwner: TComponent); override;
    function FileType(FileType: TFileType): string;
    function GetFilterExt(FilterIndex: Cardinal): string;
    function GetFilterIndex(FileExt: string): Cardinal;
    function SupportedFileExts(Refresh: Boolean = False): string;
    procedure AssignTo(Dest: TPersistent); override;
  published
    property CPASHighlighter: TCPASHighlighter read FCPASHighlighter write FCPASHighlighter;
    property CSSVersion: TSynWebCssVersion read FCSSVersion write FCSSVersion;
    property DefaultEncoding: Integer read FDefaultEncoding write FDefaultEncoding;
    property DefaultHighlighter: Integer read FDefaultHighlighter write FDefaultHighlighter;
    property DirCloseTabByDblClick: Boolean read FDirCloseTabByDblClick write FDirCloseTabByDblClick default False;
    property DirCloseTabByMiddleClick: Boolean read FDirCloseTabByMiddleClick write FDirCloseTabByMiddleClick default False;
    property DirDoubleBuffered: Boolean read FDirDoubleBuffered write FDirDoubleBuffered default True;
    property DirIndent: Integer read FDirIndent write FDirIndent default 20;
    property DirMultiLine: Boolean read FDirMultiLine write FDirMultiLine default False;
    property DirRightClickSelect: Boolean read FDirRightClickSelect write FDirRightClickSelect default True;
    property DirSaveTabs: Boolean read FDirSaveTabs write FDirSaveTabs default True;
    property DirShowArchiveFiles: Boolean read FDirShowArchiveFiles write FDirShowArchiveFiles default True;
    property DirShowCloseButton: Boolean read FDirShowCloseButton write FDirShowCloseButton default False;
    property DirShowHiddenFiles: Boolean read FDirShowHiddenFiles write FDirShowHiddenFiles default False;
    property DirShowImage: Boolean read FDirShowImage write FDirShowImage default True;
    property DirShowSystemFiles: Boolean read FDirShowSystemFiles write FDirShowSystemFiles default False;
    property DirShowTreeLines: Boolean read FDirShowTreeLines write FDirShowTreeLines default False;
    property DocCloseTabByDblClick: Boolean read FDocCloseTabByDblClick write FDocCloseTabByDblClick default False;
    property DocCloseTabByMiddleClick: Boolean read FDocCloseTabByMiddleClick write FDocCloseTabByMiddleClick default False;
    property DocDoubleBuffered: Boolean read FDocDoubleBuffered write FDocDoubleBuffered default True;
    property DocMultiLine: Boolean read FDocMultiLine write FDocMultiLine;
    property DocRightClickSelect: Boolean read FDocRightClickSelect write FDocRightClickSelect;
    property DocSaveTabs: Boolean read FDocSaveTabs write FDocSaveTabs;
    property DocShowCloseButton: Boolean read FDocShowCloseButton write FDocShowCloseButton;
    property DocShowImage: Boolean read FDocShowImage write FDocShowImage;
    property Extensions: string read GetExtensions;
    property FileTypes: TStrings read FFileTypes write FFileTypes;
    property FilterCount: Cardinal read GetFilterCount;
    property Filters: string read GetFilters;
    property HTMLErrorChecking: Boolean read FHTMLErrorChecking write FHTMLErrorChecking;
    property HTMLVersion: TSynWebHtmlVersion read FHTMLVersion write FHTMLVersion;
    property OutputCloseTabByDblClick: Boolean read FOutputCloseTabByDblClick write FOutputCloseTabByDblClick;
    property OutputCloseTabByMiddleClick: Boolean read FOutputCloseTabByMiddleClick write FOutputCloseTabByMiddleClick;
    property OutputDoubleBuffered: Boolean read FOutputDoubleBuffered write FOutputDoubleBuffered;
    property OutputMultiLine: Boolean read FOutputMultiLine write FOutputMultiLine;
    property OutputRightClickSelect: Boolean read FOutputRightClickSelect write FOutputRightClickSelect;
    property OutputSaveTabs: Boolean read FOutputSaveTabs write FOutputSaveTabs;
    property OutputShowCloseButton: Boolean read FOutputShowCloseButton write FOutputShowCloseButton;
    property OutputShowImage: Boolean read FOutputShowImage write FOutputShowImage;
    property PHPVersion: TSynWebPhpVersion read FPHPVersion write FPHPVersion;
    property ShowXMLTree: Boolean read FShowXMLTree write FShowXMLTree;
    property SQLDialect: TSQLDialect read FSQLDialect write FSQLDialect;
    property ToolBarDirectory: Boolean read FToolBarDirectory write FToolBarDirectory;
    property ToolBarDocument: Boolean read FToolBarDocument write FToolBarDocument;
    property ToolBarMacro: Boolean read FToolBarMacro write FToolBarMacro;
    property ToolBarVisible: Boolean read FToolBarVisible write FToolBarVisible;
  end;

  function OptionsContainer: TEditBoneOptionsContainer;
  {$endif}

implementation

uses
  System.SysUtils, Vcl.Forms, Vcl.ComCtrls, Vcl.Graphics, Vcl.Menus, SynEditTypes, SynCompletionProposal,
  BCCommon.StringUtils, BCCommon.LanguageStrings;

{$ifdef ORABONE}
var
  FOptionsContainer: TOraBoneOptionsContainer;

function OptionsContainer: TOraBoneOptionsContainer;
begin
  if not Assigned(FOptionsContainer) then
    FOptionsContainer := TOraBoneOptionsContainer.Create(nil);
  Result := FOptionsContainer;
end;
{$endif}
{$ifdef EDITBONE}
var
  FOptionsContainer: TEditBoneOptionsContainer;

function OptionsContainer: TEditBoneOptionsContainer;
begin
  if not Assigned(FOptionsContainer) then
    FOptionsContainer := TEditBoneOptionsContainer.Create(nil);
  Result := FOptionsContainer;
end;
{$endif}

procedure TOptionsContainer.AssignTo(Dest: TPersistent);
begin
  if Assigned(Dest) and (Dest is TCustomSynEdit) then
  begin
    TCustomSynEdit(Dest).Font.Name := FFontName;
    TCustomSynEdit(Dest).Font.Size := FFontSize;
    TCustomSynEdit(Dest).Gutter.Visible := FMarginVisibleLeftMargin;
    TCustomSynEdit(Dest).Gutter.Font.Name := FMarginFontName;
    TCustomSynEdit(Dest).Gutter.Font.Size := FMarginFontSize;
    TCustomSynEdit(Dest).LineSpacing := FLineSpacing;
    TCustomSynEdit(Dest).RightEdge.Visible := FMarginVisibleRightMargin;
    TCustomSynEdit(Dest).Gutter.AutoSize := FMarginLeftMarginAutoSize;
    TCustomSynEdit(Dest).Gutter.Width := FMarginLeftMarginWidth;
    TCustomSynEdit(Dest).Gutter.Intens := FMarginInTens;
    TCustomSynEdit(Dest).Gutter.ZeroStart := FMarginZeroStart;
    TCustomSynEdit(Dest).Gutter.ShowLineModified := FMarginLineModified;
    TCustomSynEdit(Dest).Gutter.ShowBookmarks := FMarginShowBookmarks;
    TCustomSynEdit(Dest).Gutter.ShowBookmarkPanel := FMarginShowBookmarkPanel;
    TCustomSynEdit(Dest).Gutter.LineModifiedColor := StringToColor(FMarginModifiedColor);
    TCustomSynEdit(Dest).Gutter.LineNormalColor := StringToColor(FMarginNormalColor);
    TCustomSynEdit(Dest).TabWidth := FTabWidth;
    TCustomSynEdit(Dest).InsertCaret := FInsertCaret;
    TCustomSynEdit(Dest).NonBlinkingCaretColor := StringToColor(FNonblinkingCaretColor);
    if FAutoIndent then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoAutoIndent]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoAutoIndent];
    if FScrollPastEof then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoScrollPastEof]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoScrollPastEof];
    if FScrollPastEol then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoScrollPastEol]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoScrollPastEol];
    if FTabsToSpaces then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoTabsToSpaces]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoTabsToSpaces];
    if FSmartTabs then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoSmartTabs]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoSmartTabs];
    if FSmartTabDelete then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoSmartTabDelete]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoSmartTabDelete];
    if FTrimTrailingSpaces then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoTrimTrailingSpaces]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoTrimTrailingSpaces];
    if FTripleClickRowSelect then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoTripleClicks]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoTripleClicks];
    if FNonblinkingCaret then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoNonblinkingCaret]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoNonblinkingCaret];

    TCustomSynEdit(Dest).WordWrap.Enabled := FEnableWordWrap;
    TCustomSynEdit(Dest).Gutter.ShowLineNumbers := FEnableLineNumbers;

    if FEnableSpecialChars then
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options + [eoShowSpecialChars]
    else
      TCustomSynEdit(Dest).Options := TCustomSynEdit(Dest).Options - [eoShowSpecialChars];

    if FEnableSelectionMode then
      TCustomSynEdit(Dest).SelectionMode := smColumn
    else
      TCustomSynEdit(Dest).SelectionMode := smNormal;

    TCustomSynEdit(Dest).RightEdge.Visible := FMarginVisibleRightMargin;
    TCustomSynEdit(Dest).RightEdge.MouseMove := FMarginLeftMarginMouseMove;
    TCustomSynEdit(Dest).RightEdge.Position := FMarginRightMargin;

    TCustomSynEdit(Dest).Gutter.ShowBookmarks := FMarginShowBookmarks;
    TCustomSynEdit(Dest).Minimap.Font.Name := FMinimapFontName;
    TCustomSynEdit(Dest).Minimap.Font.Size := FMinimapFontSize;
    TCustomSynEdit(Dest).Minimap.Width := FMinimapWidth;
  end
  else
  if Assigned(Dest) and (Dest is TActionMainMenuBar) then
  begin
    TActionMainMenuBar(Dest).PersistentHotKeys := FPersistentHotKeys;
    TActionMainMenuBar(Dest).Shadows := FShadows;
    TActionMainMenuBar(Dest).UseSystemFont := FMainMenuUseSystemFont;
    if FMainMenuUseSystemFont then
    begin
      Screen.MenuFont.Name := FMainMenuSystemFontName;
      Screen.MenuFont.Size := FMainMenuSystemFontSize;
    end
    else
    begin
      Screen.MenuFont.Name := FMainMenuFontName;
      Screen.MenuFont.Size := FMainMenuFontSize;
    end;
    TActionMainMenuBar(Dest).AnimationStyle := FAnimationStyle;
    TActionMainMenuBar(Dest).AnimateDuration := FAnimationDuration;
  end
  else
  if Assigned(Dest) and (Dest is TStatusBar) then
  begin
    TStatusBar(Dest).UseSystemFont := FStatusBarUseSystemFont;
    if not FStatusBarUseSystemFont then
    begin
      TStatusBar(Dest).Font.Name := FStatusBarFontName;
      TStatusBar(Dest).Font.Size := FStatusBarFontSize;
      TStatusBar(Dest).Height := FStatusBarFontSize + 11;
    end;
  end
  else
  if Assigned(Dest) and (Dest is TSynCompletionProposal) then
  begin
    if not FCompletionProposalEnabled then
      TSynCompletionProposal(Dest).ShortCut := TextToShortCut('')
    else
      TSynCompletionProposal(Dest).ShortCut := TextToShortCut(FCompletionProposalShortcut);
    if FCompletionProposalCaseSensitive then
      TSynCompletionProposal(Dest).Options := TSynCompletionProposal(Dest).Options + [scoCaseSensitive]
    else
      TSynCompletionProposal(Dest).Options := TSynCompletionProposal(Dest).Options - [scoCaseSensitive];
  end
  else
    inherited;
end;

constructor TOptionsContainer.Create(AOwner: TComponent);
begin
  inherited;
  { default values }
  FCompletionProposalShortCut := 'Ctrl+Space';
  FFontName := 'Courier New';
  FNonblinkingCaretColor := 'clBlack';
  FMainMenuFontName := 'Tahoma';
  FMainMenuSystemFontName := Screen.MenuFont.Name;
  FMainMenuSystemFontSize := Screen.MenuFont.Size;
  FMarginFontName := 'Courier New';
  FMarginModifiedColor := 'clYellow';
  FMarginNormalColor := 'clGreen';
  FStatusBarFontName := 'Tahoma';
end;

destructor TOptionsContainer.Destroy;
begin
  FOptionsContainer := nil;
  inherited;
end;

{ TOraBoneOptionsContainer }

{$ifdef ORABONE}
constructor TOraBoneOptionsContainer.Create(AOwner: TComponent);
begin
  inherited;
  { default values }
  FCompletionProposalShortCut := 'Ctrl+Space';
  FDateFormat := 'DD.MM.YYYY';
  FFontName := 'Courier New';
  FNonblinkingCaretColor := 'clBlack';
  FMainMenuFontName := 'Tahoma';
  FMainMenuSystemFontName := Screen.MenuFont.Name;
  FMainMenuSystemFontSize := Screen.MenuFont.Size;
  FMarginFontName := 'Courier New';
  FMarginModifiedColor := 'clYellow';
  FMarginNormalColor := 'clGreen';
  FObjectFrameAlign := 'Bottom';
  FSchemaBrowserAlign := 'Bottom';
  FStatusBarFontName := 'Tahoma';
  FTimeFormat := 'HH24:MI:SS';
end;
{$endif}

{ TEditBoneOptionsContainer }
{$ifdef EDITBONE}
function TEditBoneOptionsContainer.FileType(FileType: TFileType): string;
begin
  if FileType = ftHC11 then
    Result := FFileTypes.Strings[0]
  else
  if FileType = ftAWK then
    Result := FFileTypes.Strings[1]
  else
  if FileType = ftBaan then
    Result := FFileTypes.Strings[2]
  else
  if FileType = ftCS then
    Result := FFileTypes.Strings[3]
  else
  if FileType = ftCPP then
    Result := FFileTypes.Strings[4]
  else
  if FileType = ftCAC then
    Result := FFileTypes.Strings[5]
  else
  if FileType = ftCache then
    Result := FFileTypes.Strings[6]
  else
  if FileType = ftCss then
    Result := FFileTypes.Strings[7]
  else
  if FileType = ftCobol then
    Result := FFileTypes.Strings[8]
  else
  if FileType = ftIdl then
    Result := FFileTypes.Strings[9]
  else
  if FileType = ftCPM then
    Result := FFileTypes.Strings[10]
  else
  if FileType = ftDOT then
    Result := FFileTypes.Strings[11]
  else
  if FileType = ftADSP21xx then
    Result := FFileTypes.Strings[12]
   else
  if FileType = ftDWScript then
    Result := FFileTypes.Strings[13]
  else
  if FileType = ftEiffel then
    Result := FFileTypes.Strings[14]
  else
  if FileType = ftFortran then
    Result := FFileTypes.Strings[15]
  else
  if FileType = ftFoxpro then
    Result := FFileTypes.Strings[16]
  else
  if FileType = ftGalaxy then
    Result := FFileTypes.Strings[17]
  else
  if FileType = ftDml then
    Result := FFileTypes.Strings[18]
  else
  if FileType = ftGWScript then
    Result := FFileTypes.Strings[19]
  else
  if FileType = ftHaskell then
    Result := FFileTypes.Strings[20]
  else
  if FileType = ftHP48 then
    Result := FFileTypes.Strings[21]
  else
  if FileType = ftHTML then
    Result := FFileTypes.Strings[22]
  else
  if FileType = ftIni then
    Result := FFileTypes.Strings[23]
  else
  if FileType = ftInno then
    Result := FFileTypes.Strings[24]
  else
  if FileType = ftJava then
    Result := FFileTypes.Strings[25]
  else
  if FileType = ftJScript then
    Result := FFileTypes.Strings[26]
  else
  if FileType = ftKix then
    Result := FFileTypes.Strings[27]
  else
  if FileType = ftLDR then
    Result := FFileTypes.Strings[28]
  else
  if FileType = ftLLVM then
    Result := FFileTypes.Strings[29]
  else
  if FileType = ftModelica then
    Result := FFileTypes.Strings[30]
  else
  if FileType = ftM3 then
    Result := FFileTypes.Strings[31]
  else
  if FileType = ftMsg then
    Result := FFileTypes.Strings[32]
  else
  if FileType = ftBat then
    Result := FFileTypes.Strings[33]
  else
  if FileType = ftPas then
    Result := FFileTypes.Strings[34]
  else
  if FileType = ftPerl then
    Result := FFileTypes.Strings[35]
  else
  if FileType = ftPHP then
    Result := FFileTypes.Strings[36]
  else
  if FileType = ftProgress then
    Result := FFileTypes.Strings[37]
  else
  if FileType = ftPython then
    Result := FFileTypes.Strings[38]
  else
  if FileType = ftRC then
    Result := FFileTypes.Strings[39]
  else
  if FileType = ftRuby then
    Result := FFileTypes.Strings[40]
  else
  if FileType = ftSDD then
    Result := FFileTypes.Strings[41]
  else
  if FileType = ftSQL then
    Result := FFileTypes.Strings[42]
  else
  if FileType = ftSML then
    Result := FFileTypes.Strings[43]
  else
  if FileType = ftST then
    Result := FFileTypes.Strings[44]
  else
  if FileType = ftTclTk then
    Result := FFileTypes.Strings[45]
  else
  if FileType = ftTeX then
    Result := FFileTypes.Strings[46]
  else
  if FileType = ftText then
    Result := FFileTypes.Strings[47]
  else
  if FileType = ftUNIXShellScript then
    Result := FFileTypes.Strings[48]
  else
  if FileType = ftVB then
    Result := FFileTypes.Strings[49]
  else
  if FileType = ftVBScript then
    Result := FFileTypes.Strings[50]
  else
  if FileType = ftVrml97 then
    Result := FFileTypes.Strings[51]
  else
  if FileType = ftWebIDL then
    Result := FFileTypes.Strings[52]
  else
  if FileType = ftAsm then
    Result := FFileTypes.Strings[53]
  else
  if FileType = ftXML then
    Result := FFileTypes.Strings[54]
  else
  if FileType = ftYAML then
    Result := FFileTypes.Strings[55];

  Result := UpperCase(StringBetween(Result, '(', ')'));
end;

constructor TEditBoneOptionsContainer.Create(AOwner: TComponent);
var
  i: Integer;
begin
  inherited;
  FCompletionProposalShortcut := 'Ctrl+Space';
  FDocDoubleBuffered := True;
  FDocMultiLine := False;
  FDocRightClickSelect := True;
  FDocSaveTabs := True;
  FDocShowCloseButton := False;
  FDocShowImage := True;
  FLineSpacing := 0;
  FFontName := 'Courier New';
  FFontSize := 9;
  FMarginLeftMarginAutoSize := True;
  FMarginFontName := 'Courier New';
  FMarginFontSize := 9;
  FMarginRightMargin := 80;
  FMarginLeftMarginWidth := 30;
  FMarginVisibleLeftMargin := True;
  FMarginVisibleRightMargin := True;
  FMarginInTens := True;
  FMarginZeroStart := False;
  FMarginLineModified := True;
  FMarginModifiedColor := 'clYellow';
  FMarginNormalColor := 'clGreen';
  FMinimapFontSize := 2;
  FMinimapFontName := 'Courier New';
  FHTMLErrorChecking := True;
  FHTMLVersion := shvHtml5;
  FIgnoreBlanks := True;
  FIgnoreCase := True;
  FInsertCaret := ctVerticalLine;
  FNonblinkingCaretColor := 'clBlack';
  FMainMenuFontName := 'Tahoma';
  FMainMenuFontSize := 8;
  FMainMenuSystemFontName := Screen.MenuFont.Name;
  FMainMenuSystemFontSize := Screen.MenuFont.Size;
  FMainMenuUseSystemFont := False;
  FOutputCloseTabByDblClick := False;
  FOutputCloseTabByMiddleClick := False;
  FOutputDoubleBuffered := True;
  FOutputIndent := 20;
  FOutputMultiLine := False;
  FOutputRightClickSelect := True;
  FOutputSaveTabs := True;
  FOutputShowCloseButton := False;
  FOutputShowImage := True;
  FOutputShowtreeLines := False;
  FPersistentHotKeys := False;
  FPrintDateTime := 1;
  FPrintDocumentName := 2;
  FPrintPageNumber := 3;
  FPrintPrintedBy := 0;
  FPrintShowFooterLine := True;
  FPrintShowHeaderLine := True;
  FPrintShowLineNumbers := False;
  FPrintWordWrapLine := False;
  FScrollPastEof := False;
  FScrollPastEol := True;
  FShadows := True;
  FShowSearchStringNotFound := True;
  FShowXMLTree := False;
  FSmartTabDelete := False;
  FSmartTabs := False;
  FStatusBarFontName := 'Tahoma';
  FStatusBarFontSize := 8;
  FStatusBarUseSystemFont := False;
  FTabsToSpaces := True;
  FTabWidth := 2;
  FToolBarCase := True;
  FToolBarCommand := True;
  FToolBarDirectory := True;
  FToolBarDocument := True;
  FToolBarIndent := True;
  FToolBarMacro := True;
  FToolBarMode := True;
  FToolBarPrint := True;
  FToolBarSearch := True;
  FToolBarSort := True;
  FToolBarStandard := True;
  FToolBarTools := True;
  FTrimTrailingSpaces := True;
  FTripleClickRowSelect := True;
  FUndoAfterSave := False;

  FFileTypes := TStringList.Create;
  for i := 0 to 55 do
    FFileTypes.Add(LanguageDataModule.FileTypesMultiStringHolder.MultipleStrings.Items[i].Strings.Text);
end;

function TEditBoneOptionsContainer.GetFilterCount: Cardinal;
begin
  Result := FFileTypes.Count;
end;

function TEditBoneOptionsContainer.GetFilterExt(FilterIndex: Cardinal): string;
begin
  { -2 because filter index is not 0-based and there's all files (in save dialog) first }
  Result := StringBetween(FFileTypes.Strings[FilterIndex - 2], '(', ')');
  Result := StringReplace(Result, '*', '', []);
  if Pos(';', Result) <> 0 then
    Result := Copy(Result, 1, Pos(';', Result) - 1);
end;

function TEditBoneOptionsContainer.GetFilterIndex(FileExt: string): Cardinal;
var
  i: Integer;
begin
  Result := 1;
  for i := 0 to FFileTypes.Count - 1 do
    if IsExtInFileType(FileExt, FFileTypes.Strings[i]) then
    begin
      Result := i + 2;
      Break;
    end;
end;

function TEditBoneOptionsContainer.GetFilters: string;
var
  i: Integer;
begin
  Result := Format('%s'#0'*.*'#0, [LanguageDataModule.GetConstant('AllFiles')]);
  i := 0;
  while i < FFileTypes.Count do
  begin
    Result := Format('%s%s'#0'%s', [Result, LanguageDataModule.FileTypesMultiStringHolder.MultipleStrings.Items[i].Strings.Text,
      StringBetween(FFileTypes.Strings[i], '(', ')')]);
    Inc(i);
    if i < FFileTypes.Count then
      Result := Format('%s'#0, [Result]);
  end;
  Result := Format('%s'#0#0, [Result]);
end;

function TEditBoneOptionsContainer.GetExtensions: string;
var
  i: Integer;
begin
  Result := '*.*|';
  for i := 0 to FFileTypes.Count - 1 do
    Result := Format('%s%s|', [Result, StringBetween(FFileTypes.Strings[i], '(', ')')]);
end;

function TEditBoneOptionsContainer.SupportedFileExts(Refresh: Boolean): string;
var
  i: Integer;
begin
  if (FSupportedFileExts = '') or Refresh then
    for i := 0 to FFileTypes.Count - 1 do
      FSupportedFileExts := Format('%s%s;', [FSupportedFileExts, StringBetween(FFileTypes.Strings[i], '(', ')')]);
  Result := FSupportedFileExts;
end;

procedure TEditBoneOptionsContainer.AssignTo(Dest: TPersistent);
begin
  inherited;
  if Assigned(Dest) and (Dest is TCustomSynEdit) then
  begin
    if TCustomSynEdit(Dest).Highlighter is TSynWebHtmlSyn then
    begin
      TSynWebHtmlSyn(TCustomSynEdit(Dest).Highlighter).Engine.Options.HtmlVersion := FHTMLVersion;
      TSynWebHtmlSyn(TCustomSynEdit(Dest).Highlighter).Engine.Options.CssVersion := FCSSVersion;
      TSynWebHtmlSyn(TCustomSynEdit(Dest).Highlighter).Engine.Options.PhpVersion := FPHPVersion;
    end;
    if TCustomSynEdit(Dest).Highlighter is TSynSQLSyn then
      TSynSQLSyn(TCustomSynEdit(Dest).Highlighter).SQLDialect := FSQLDialect;
  end;
end;
{$endif}

end.
