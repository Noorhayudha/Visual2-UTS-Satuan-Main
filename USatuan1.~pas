unit USatuan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    dbgrd1: TDBGrid;
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses USatuan2;

{$R *.dfm}

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
bersih;
btn2.Enabled:= True;
btn1.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
end;

procedure TForm1.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else
if edt2.Text = '' then
begin
ShowMessage('Deskripsi Satuan Tidak Boleh Kosong!');
end else
if DataModule2.ZSatuan.Locate('nama',edt1.Text,[]) and DataModule2.ZSatuan.Locate('deskripsi',edt2.Text,[]) then
begin
ShowMessage('Nama Satuan '+edt1.Text+' dan Deskripsi '+edt2.Text+' Sudah Ada Didalam Sistem');
end else
begin
DataModule2.ZSatuan.SQL.Clear;
DataModule2.ZSatuan.SQL.Add('insert into satuan values(null,"'+edt1.Text+'", "'+edt2.Text+'")');
DataModule2.ZSatuan.ExecSQL;

DataModule2.ZSatuan.SQL.Clear;
DataModule2.ZSatuan.SQL.Add ('select * from satuan');
DataModule2.ZSatuan.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else
if edt2.Text = '' then
begin
ShowMessage('Deskripsi Satuan Tidak Boleh Kosong!');
end else
if (edt1.Text = DataModule2.ZSatuan.Fields[1].AsString) and (edt2.Text = DataModule2.ZSatuan.Fields[2].AsString) then
begin
ShowMessage('Nama Satuan '+edt1.Text+' dan Deskripsi Satuan '+edt2.Text+' Tidak Ada Perubahan');
end else
begin
DataModule2.ZSatuan.SQL.Clear;
DataModule2.ZSatuan.SQL.Add('update satuan set nama="'+edt1.Text+'", deskripsi = "'+edt2.Text+'" where id= "'+a+'"');
DataModule2.ZSatuan.ExecSQL;

DataModule2.ZSatuan.SQL.Clear;
DataModule2.ZSatuan.SQL.Add ('select * from satuan');
DataModule2.ZSatuan.Open;
ShowMessage('Data Berhasil Diupdate!');
posisiawal;
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
DataModule2.ZSatuan.SQL.Clear;
DataModule2.ZSatuan.SQL.Add('delete from satuan where id= "'+a+'"');
DataModule2.ZSatuan.ExecSQL;

DataModule2.ZSatuan.SQL.Clear;
DataModule2.ZSatuan.SQL.Add ('select * from satuan');
DataModule2.ZSatuan.Open;
ShowMessage('Data Berhasil Dihapus!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.edt3Change(Sender: TObject);
begin
DataModule2.ZSatuan.SQL.Clear;
DataModule2.ZSatuan.SQL.Add ('SELECT * FROM satuan WHERE nama LIKE "%'+edt3.Text+'%" OR deskripsi LIKE "%'+edt3.Text+'%"');
DataModule2.ZSatuan.Open;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule2.ZSatuan.Fields[1].AsString;
edt2.Text:= DataModule2.ZSatuan.Fields[2].AsString;
a:= DataModule2.ZSatuan.Fields[0].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
