unit uMain;

interface

uses
  System.SysUtils,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ExtDlgs,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmMain = class(TForm)
    eZPL: TMemo;
    eDPMM: TComboBox;
    eWidth: TEdit;
    eHeight: TEdit;
    btnExecute: TButton;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    lbDPMM: TLabel;
    lbPaperWidth: TLabel;
    lbPaperHewight: TLabel;
    lbContent: TLabel;
    btnSave: TButton;
    SavePictureDialog1: TSavePictureDialog;
    procedure btnExecuteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    procedure GetZPLImage();
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

{ TForm1 }

uses
  System.NetEncoding,
  System.Net.HttpClient;

procedure TfrmMain.btnExecuteClick(Sender: TObject);
begin
  GetZPLImage;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
begin
  SavePictureDialog1.FileName := '이름없음.png';
  if SavePictureDialog1.Execute(Handle) then
    Image1.Picture.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TfrmMain.GetZPLImage;
const
  URL = 'http://api.labelary.com/v1/printers/%s/labels/%sx%s/0/%s';

  function GetZPL: string;
  begin
    Result := StringReplace(eZPL.Text, #13#10, '', [rfReplaceall]);
    Result := TNetEncoding.URL.Encode(Result);
  end;
begin
  var LHttpClient := THttpClient.Create;
  try
    var LURL := Format(URL, [
      eDPMM.Text, eWidth.Text, eHeight.Text, GetZPL
    ]);
    LHttpClient.Accept := 'image/png';
    var LResponse := LHttpClient.Get(LURL);
    if LResponse.StatusCode = 200 then
    begin
      var LPNGImage := TPNGImage.Create;
      try
        LPNGImage.LoadFromStream(LResponse.ContentStream);
        Image1.Left := 10;
        Image1.Top := 10;
        Image1.Width := LPNGImage.Width;
        Image1.Height := LPNGImage.Height;

        Image1.Picture.Assign(LPNGImage);
      finally
        LPNGImage.Free;
      end;
    end;
  finally
    LHttpClient.Free;
  end;
end;

end.
