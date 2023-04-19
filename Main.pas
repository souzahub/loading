unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
    btLoad: TUniButton;
    procedure btLoadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUI.Loading;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btLoadClick(Sender: TObject);
begin
// site gif 
// https://lottiefiles.com/search?q=loading&category=animations 
 
 try
   MainForm.ShowMask('Carregando...');
   UniSession.Synchronize();
   // coloca a rotina
   
 
 finally
  //MainForm.HideMask; // AQUI ESCONDE A MASCARA esta comentado para teste 
   
 end;
 
 
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
