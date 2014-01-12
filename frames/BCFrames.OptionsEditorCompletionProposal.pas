unit BCFrames.OptionsEditorCompletionProposal;

interface

uses
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, BCControls.CheckBox, Vcl.ExtCtrls,
  BCControls.ComboBox, BCCommon.OptionsContainer, BCFrames.OptionsFrame;

type
  TOptionsEditorCompletionProposalFrame = class(TOptionsFrame)
    Panel: TPanel;
    EnabledCheckBox: TBCCheckBox;
    CaseSensitiveCheckBox: TBCCheckBox;
    ShortcutLabel: TLabel;
    ShortcutComboBox: TBCComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
    destructor Destroy; override;
    procedure Init; override;
    procedure GetData; override;
    procedure PutData; override;
  end;

function OptionsEditorCompletionProposalFrame(AOwner: TComponent): TOptionsEditorCompletionProposalFrame;

implementation

{$R *.dfm}

uses
  Vcl.Menus, BCCommon.Lib;

var
  FOptionsEditorCompletionProposalFrame: TOptionsEditorCompletionProposalFrame;

function OptionsEditorCompletionProposalFrame(AOwner: TComponent): TOptionsEditorCompletionProposalFrame;
begin
  if not Assigned(FOptionsEditorCompletionProposalFrame) then
    FOptionsEditorCompletionProposalFrame := TOptionsEditorCompletionProposalFrame.Create(AOwner);
  Result := FOptionsEditorCompletionProposalFrame;
end;

destructor TOptionsEditorCompletionProposalFrame.Destroy;
begin
  inherited;
  FOptionsEditorCompletionProposalFrame := nil;
end;

procedure TOptionsEditorCompletionProposalFrame.Init;
var
  i: Integer;
begin
  for i := 1 to High(ShortCuts) do
    ShortcutComboBox.Items.Add(ShortCutToText(ShortCuts[i]));
end;

procedure TOptionsEditorCompletionProposalFrame.PutData;
begin
  OptionsContainer.CompletionProposalEnabled := EnabledCheckBox.Checked;
  OptionsContainer.CompletionProposalCaseSensitive := CaseSensitiveCheckBox.Checked;
  OptionsContainer.CompletionProposalShortcut := ShortcutComboBox.Text;
end;

procedure TOptionsEditorCompletionProposalFrame.GetData;
begin
  EnabledCheckBox.Checked := OptionsContainer.CompletionProposalEnabled;
  CaseSensitiveCheckBox.Checked := OptionsContainer.CompletionProposalCaseSensitive;
  ShortcutComboBox.ItemIndex := ShortcutComboBox.Items.IndexOf(OptionsContainer.CompletionProposalShortcut);
end;

end.
