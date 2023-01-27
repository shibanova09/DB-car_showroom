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
 MessageBox(Handle, 'Введите запрос!', 'Предупреждение', MB_OK);
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
  //фильтры
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
//запросы
    if ComboBox2.ItemIndex = 0 then begin
    //отдел кадров
      Form1.ADOQuery1.SQL.Clear;
      Form1.ADOQuery1.SQL.Add('SELECT [Фамилия], [Имя], [Наименование должности] FROM [Сотрудники] JOIN [Должности] ON [Сотрудники].[Код должности] = [Должности].[Код должности]');
      Form1.ADOQuery1.Open;
    end
    else
    if ComboBox2.ItemIndex = 1 then begin
    //каталог автомобилей
      Form1.ADOQuery1.SQL.Clear;
      Form1.ADOQuery1.SQL.Add('SELECT [Производители].[Наименование], [Марка], [Цвет], [Название], [Автомобили].[Цена] FROM [Автомобили] JOIN [Производители]');
      Form1.ADOQuery1.SQL.Add('ON [Автомобили].[Код производителя] = [Производители].[Код производителя] JOIN [Тип кузова] ON [Автомобили].[Код типа кузова] = [Тип кузова].[Код типа кузова] JOIN [Дополнительное оборудование]');
      Form1.ADOQuery1.SQL.Add('ON [Дополнительное оборудование].[Код оборудования] = [Автомобили].[Код оборудования 1] JOIN [Сотрудники] ON [Автомобили].[Код сотрудника] = [Сотрудники].[Код сотрудника]');
      Form1.ADOQuery1.Open;
    end
    else
    if ComboBox2.ItemIndex = 2 then begin
    //список заказов
      Form1.ADOQuery1.SQL.Clear;
      Form1.ADOQuery1.SQL.Add('SELECT [Заказчики].[Фамилия] AS [Заказчик], [Дата заказа], [Дата продажи], [Марка], [Цена], [Цвет], [Сотрудники].[Фамилия] AS [Продавец], [Отметка о выполнении]  FROM [Заказчики]');
      Form1.ADOQuery1.SQL.Add('JOIN [Автомобили] ON [Автомобили].[Код автомобиля] = [Заказчики].[Код автомобиля] JOIN [Сотрудники] ON [Сотрудники].[Код сотрудника] = [Заказчики].[Код сотрудника]');
      Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
//сотрудники отд должностей
    if ComboBox3.ItemIndex = 0 then begin
    //директор отдела
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Сотрудник данной должности] ''Директор отдела''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 1 then begin
    //бухгалтер
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Сотрудник данной должности] ''Бухгалтер''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 2 then begin
    //менеджер
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Сотрудник данной должности] ''Менеджер''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 3 then begin
    //техобсл персонал
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Сотрудник данной должности] ''Техобслуживающий персонал''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox3.ItemIndex = 4 then begin
    //консультант
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Сотрудник данной должности] ''Консультант''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
//автомобили отд производителей
    if ComboBox4.ItemIndex = 0 then begin
    //мерседес
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного производителя] ''Mercedes-Benz''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 1 then begin
    //бмв
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного производителя] ''BMW''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 2 then begin
    //ауди
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного производителя] ''Audi''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 3 then begin
    //порш
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного производителя] ''Porsche''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox4.ItemIndex = 4 then begin
    //бугатти
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного производителя] ''Bugatti''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox5Change(Sender: TObject);
begin
//автомобили отд типы кузова
    if ComboBox5.ItemIndex = 0 then begin
    //купе
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного типа кузова] ''Купе''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 1 then begin
    //седан
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного типа кузова] ''Седан''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 2 then begin
    //лимузин
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного типа кузова] ''Лимузин''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 3 then begin
    //внедорожник
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного типа кузова] ''Внедорожник''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox5.ItemIndex = 4 then begin
    //хэтчбек
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Автомобиль данного типа кузова] ''Хэтчбек''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox6Change(Sender: TObject);
begin
//выпол невыпол заказы
    if ComboBox6.ItemIndex = 0 then begin
    //выполн
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Выполненные и невыполненные заказы] ''1''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox6.ItemIndex = 1 then begin
    //невыполн
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Выполненные и невыполненные заказы] ''0''');
    Form1.ADOQuery1.Open;
    end;
end;

procedure TForm1.ComboBox7Change(Sender: TObject);
begin
//оплач неоплач заказы
    if ComboBox7.ItemIndex = 0 then begin
    //оплач
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Оплаченные и неоплаченные заказы] ''1''');
    Form1.ADOQuery1.Open;
    end
    else
    if ComboBox7.ItemIndex = 1 then begin
    //неоплач
    Form1.ADOQuery1.SQL.Clear;
    Form1.ADOQuery1.SQL.Add('EXEC [Оплаченные и неоплаченные заказы] ''0''');
    Form1.ADOQuery1.Open;
    end;
end;

end.
