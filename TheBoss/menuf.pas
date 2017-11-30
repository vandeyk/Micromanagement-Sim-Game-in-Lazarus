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
    procedure SizeBarChange(Sender: TObject);  //Не используется
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
  //Расположение бегунков, кнопок и надписей - для совместимости
  Lbl_Size.Left := 45;
  Lbl_Diff.Left := 45;
  SizeBar.Left := Lbl_Size.Left + Lbl_Size.Width + 10;
  DifficultyBar.Left := Lbl_Diff.Left + Lbl_Size.Width + 10;
  MenuForm.Width := Lbl_Diff.Left + Lbl_Size.Width + 10 + SizeBar.Width + 45;
  Btn_Start.Left := trunc(MenuForm.Width / 2) - 100;
end;

procedure TMenuForm.FormShow(Sender: TObject);
begin
  //Свяжем положения форм на экране
  if not justcreated then begin
    MenuForm.Left := MainForm.Left;
    MenuForm.Top := MainForm.Top;
  end;
end;

procedure TMenuForm.SizeBarChange(Sender: TObject);
begin

end;

end.

