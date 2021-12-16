program MvFilesToDir;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal};

{$IFDEF RELEASE}
   {$WEAKLINKRTTI ON}
   {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$ENDIF}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
