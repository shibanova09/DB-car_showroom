unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Button3: TButton;
    Edit1: TEdit;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if Memo1.Text = '' then begin
 MessageBox(Handle, '������� ������!', '��������������', MB_OK);
 Memo1.SetFocus;
 Exit;
end;
 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add(Memo1.Text);
 ADOQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Memo1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('Select * from ' + Edit1.Text);
  ADOQuery1.Open;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Form1.Close;
 Form2.Close;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Form2.Show;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  //�������
  if ComboBox1.ItemIndex = 0 then begin
    ComboBox4.Visible := False;
    ComboBox5.Visible := False;
    ComboBox6.Visible := False;
    ComboBox7.Visible := False;
    ComboBox3.Visible := True;
  end
  else
  if ComboBox1.ItemIndex = 1 then begin
    ComboBox3.Visible := False;
    ComboBox5.Visible := False;
    ComboBox6.Visible := False;
    ComboBox7.Visible := False;
    ComboBox4.Visible := True;
  end
  else
  if ComboBox1.ItemIndex = 2 then begin
    ComboBox3.Visible := False;
    ComboBox4.Visible := False;
    ComboBox6.Visible := False;
    ComboBox7.Visible := False;
    ComboBox5.Visible := True;
  end
  else
  if ComboBox1.ItemIndex = 3 then begin
    ComboBox3.Visible := False;
    ComboBox4.Visible := False;
    ComboBox5.Visible := False;
    ComboBox7.Visible := False;
    ComboBox6.Visible := True;
  end
  else
  if ComboBox1.ItemIndex = 4 then begin
    ComboBox3.Visible := False;
    ComboBox4.Visible := False;
    ComboBox5.Visible := False;
    ComboBox6.Visible := False;
    ComboBox7.Visible := True;
  end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
//�������
    if ComboBox2.ItemIndex = 0 then begin
    //����� ������
      Form1.ADOQuery1.SQL.Clear;
      Form1.ADOQuery1.SQL.Add('SELECT [�������], [���], [������������ ���������] FROM [����������] JOIN [���������] ON [����������].[��� ���������] = [���������].[��� ���������]');
      Form1.ADOQuery1.Open;
    end
    else
    if ComboBox2.ItemIndex = 1 then begin
    //������� �����������
      Form1.ADOQuery1.SQL.Clear;
      Form1.ADOQuery1.SQL.Add('SELECT [�������������].[������������], [�����], [����], [��������], [����������].[����] FROM [����������] JOIN [�������������]');
      Form1.ADOQuery1.SQL.Add('ON [����������].[��� �������������] = [�������������].[��� �������������] JOIN [��� ������] ON [����������].[��� ���� ������] = [��� ������].[��� ���� ������] JOIN [�������������� ������������]');
      Form1.ADOQuery1.SQL.Add('ON [�������������� ������������].[��� ������������] = [����������].[��� ������������ 1] JOIN [����������] ON [����������].[��� ����������] = [����������].[��� ����������]');
      Form1.ADOQuery1.Open;
    end
    else
    if ComboBox2.ItemIndex = 2 then begin
    //������ �������
      Form1.ADOQuery1.SQL.Clear;
      Form1.ADOQuery1.SQL.Add('SELECT [���������].[�������] AS [��������], [���� ������], [���� �������], [�����], [����], [����], [����������].[�������] AS [��������], [������� � ����������]  FROM [���������]');
      Form1.ADOQuery1.SQL.Add('JOIN [����������] ON [����������].[��� ����������] = [���������].[��� ����������] JOIN [����������] ON [����������].[��� ����������] = [���������].[��� ����������]');
      Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
//���������� ��� ����������
    if ComboBox3.ItemIndex = 0 then begin
    //�������� ������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [��������� ������ ���������] ''�������� ������''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 1 then begin
    //���������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [��������� ������ ���������] ''���������''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 2 then begin
    //��������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [��������� ������ ���������] ''��������''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 3 then begin
    //������� ��������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [��������� ������ ���������] ''���������������� ��������''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 4 then begin
    //�����������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [��������� ������ ���������] ''�����������''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
//���������� ��� ��������������
    if ComboBox4.ItemIndex = 0 then begin
    //��������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� �������������] ''Mercedes-Benz''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 1 then begin
    //���
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� �������������] ''BMW''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 2 then begin
    //����
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� �������������] ''Audi''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 3 then begin
    //����
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� �������������] ''Porsche''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 4 then begin
    //�������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� �������������] ''Bugatti''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox5Change(Sender: TObject);
begin
//���������� ��� ���� ������
    if ComboBox5.ItemIndex = 0 then begin
    //����
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� ���� ������] ''����''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 1 then begin
    //�����
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� ���� ������] ''�����''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 2 then begin
    //�������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� ���� ������] ''�������''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 3 then begin
    //�����������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� ���� ������] ''�����������''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 4 then begin
    //�������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� ������� ���� ������] ''�������''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox6Change(Sender: TObject);
begin
//����� ������� ������
    if ComboBox6.ItemIndex = 0 then begin
    //������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [����������� � ������������� ������] ''1''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox6.ItemIndex = 1 then begin
    //��������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [����������� � ������������� ������] ''0''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox7Change(Sender: TObject);
begin
//����� ������� ������
    if ComboBox7.ItemIndex = 0 then begin
    //�����
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� � ������������ ������] ''1''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox7.ItemIndex = 1 then begin
    //�������
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [���������� � ������������ ������] ''0''');
    Form1.ADOQuery1.Open;
    end;
end;

end.
