unit menuf;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ComCtrls;

type

  { TMenuForm }

  TMenuForm = class(TForm)
    DifficultyBar: TTrackBar;
    Btn_Start: TImage;
    Lbl_Label: TLabel;
    SizeBar: TTrackBar;
    Lbl_Diff: TLabel;
    Lbl_Size: TLabel;
    procedure Btn_StartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MenuForm: TMenuForm;
  justcreated: boolean;

implementation

uses teamg;

{$R *.lfm}

{ TMenuForm }

procedure TMenuForm.Btn_StartClick(Sender: TObject);
begin
  justcreated := false;
  MainForm.Show;
  MenuForm.Visible := false;
end;

procedure TMenuForm.FormCreate(Sender: TObject);
begin
  justcreated := true;
  //Исходные цвета
  MenuForm.Color := clWhite;
  //Зададим используемые настройки шрифта в одном лейбле
  Lbl_Label.Font.Name := 'Courier';
  Lbl_Label.Font.Color := clBLack;
  Lbl_Label.Font.Size := 14;
  //Применение шрифта ко всем лейблам
  Lbl_Size.Font := Lbl_Label.Font;
  Lbl_Diff.Font := Lbl_Label.Font;
end;

procedure TMenuForm.FormShow(Sender: TObject);
begin
  //Свяжем положения форм на экране
  if not justcreated then begin
    MenuForm.Left := MainForm.Left;
    MenuForm.Top := MainForm.Top;
  end;
end;

end.

