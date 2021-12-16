(******************************************************************************
* Original Author: Marcelo Fortes.
* fortes.m at gmail.com
* 2020© All Rights Reserved.
*
* You canot use this code without mention 'Original Author' or without his
* permission. It is under Artistic License 2.0
* http://www.perlfoundation.org/attachment/legal/artistic-2_0.txt
*******************************************************************************)
unit Principal;

{$IFDEF RELEASE}
   {$WEAKLINKRTTI ON}
   {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$ENDIF}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.IOUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.FileCtrl, Vcl.ShellAnimations, Vcl.AppEvnts, Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    BtMv: TButton;
    Memo: TMemo;
    Ed: TEdit;
    Label1: TLabel;
    BtNav: TBitBtn;
    OpenDialog: TFileOpenDialog;
    BalloonHint: TBalloonHint;
    ProgressBar: TProgressBar;
    SPBCred: TSpeedButton;

    procedure BtMvClick(Sender: TObject);
    procedure BtNavClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SPBCredClick(Sender: TObject);
  private
    { Private declarations }
  public
     ExeName : String;
  end;

var FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses JvVersionInfo;

procedure TFrmPrincipal.FormCreate(Sender: TObject); 
begin  Ed.Text := ExtractFilePath(Application.ExeName);
       ExeName := Trim(Ed.Text);  end;

procedure TFrmPrincipal.FormShow(Sender: TObject); begin
  var AppInfo := TjvVersionInfo.Create(Application.ExeName);
  try
     FrmPrincipal.Caption  :=  FrmPrincipal.Caption + AppInfo.OriginalFilename;
  finally
     FreeAndNil(AppInfo);
  end;
end;

procedure TFrmPrincipal.BtNavClick(Sender: TObject);
begin if OpenDialog.Execute then  Ed.Text := Opendialog.FileName; end;

procedure TFrmPrincipal.BtMvClick(Sender: TObject);
var Lista : TStringlist;
begin
  var Arquivo : String := '';
  var Path : string := IncludeTrailingPathDelimiter(Ed.Text);
  var i : Integer;
  Lista := TStringList.Create;

  try
    if Application.MessageBox('Deseja mesmo mover os arquivos para diretórios com seus nomes?',
       'Warning', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES  then begin

       ProgressBar.Position := 0;

       for Arquivo in TDirectory.GetFiles(Path) do
          if not (Arquivo = Path + ExeName) then Lista.Add(Arquivo);

       ProgressBar.Max := Lista.Count;

       for i := 0 to Lista.Count - 1  do
          TDirectory.CreateDirectory(TPath.GetFileNameWithoutExtension(Lista.Strings[i]));

       for i := 0 to Lista.Count - 1  do begin
           MoveFile(Pchar(Lista.Strings[i]), Pchar(Path + TPath.GetFileNameWithoutExtension(Lista.Strings[i])+'\'+ TPath.GetFileName(Lista.Strings[i])));
           ProgressBar.StepIt;
           Application.ProcessMessages;
       end;
    end else Ed.SetFocus;
  finally
    ProgressBar.Position := 0;
    FreeAndNil(Lista);
  end;
end;

procedure TFrmPrincipal.SPBCredClick(Sender: TObject);
begin
   var About : String := 'About';
   Application.MessageBox('Autor: Marcelo Fortes' + #13#10 +
        'fortes.m@gmail.com', PChar(About), MB_OK + MB_ICONINFORMATION +
        MB_DEFBUTTON2);
end;

end.
