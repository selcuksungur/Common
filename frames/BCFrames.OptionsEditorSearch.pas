unit BCFrames.OptionsEditorSearch;

interface

uses
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, BCControls.CheckBox, Vcl.ExtCtrls,
  BCCommon.OptionsContainer;

type
  TOptionsEditorSearchFrame = class(TFrame)
    Panel: TPanel;
    ShowSearchStringNotFoundCheckBox: TBCCheckBox;
    BeepIfSearchStringNotFoundCheckBox: TBCCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetData(OptionsContainer: TOptionsContainer);
    procedure PutData(OptionsContainer: TOptionsContainer);
  end;

implementation

{$R *.dfm}

procedure TOptionsEditorSearchFrame.PutData(OptionsContainer: TOptionsContainer);
begin
  OptionsContainer.ShowSearchStringNotFound := ShowSearchStringNotFoundCheckBox.Checked;
  OptionsContainer.BeepIfSearchStringNotFound := BeepIfSearchStringNotFoundCheckBox.Checked;
end;

procedure TOptionsEditorSearchFrame.GetData(OptionsContainer: TOptionsContainer);
begin
  ShowSearchStringNotFoundCheckBox.Checked := OptionsContainer.ShowSearchStringNotFound;
  BeepIfSearchStringNotFoundCheckBox.Checked := OptionsContainer.BeepIfSearchStringNotFound;
end;

end.
