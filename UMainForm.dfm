object MainForm: TMainForm
  Left = 1386
  Top = 303
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MainForm'
  ClientHeight = 556
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lll: TLabel
    Left = 328
    Top = 80
    Width = 102
    Height = 52
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086#13#10#1089#1083#1086#1074' '#13#10#1086#1082#1072#1085#1095#1080#1074#1072#1102#1097#1080#1093#1089#1103' '#13#10#1085#1072' '#1089#1086#1075#1083#1072#1089#1085#1091#1102' '#1073#1091#1082#1074#1091
  end
  object res: TLabel
    Left = 328
    Top = 144
    Width = 10
    Height = 23
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object inputEdt: TEdit
    Left = 0
    Top = 8
    Width = 321
    Height = 21
    Hint = 'Input word'
    TabOrder = 0
    OnKeyPress = inputEdtKeyPress
  end
  object fillTreeBtn: TButton
    Left = 336
    Top = 8
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1083#1086#1074#1086
    TabOrder = 1
    OnClick = fillTreeBtnClick
  end
  object findFormsBtn: TButton
    Left = 336
    Top = 40
    Width = 97
    Height = 25
    Caption = #1056#1077#1096#1080#1090#1100' '#1079#1072#1076#1072#1095#1091
    TabOrder = 2
    OnClick = findFormsBtnClick
  end
  object grp1: TGroupBox
    Left = 0
    Top = 40
    Width = 321
    Height = 513
    Caption = 'TrieTree'
    TabOrder = 3
    object treeView: TTreeView
      Left = 0
      Top = 16
      Width = 321
      Height = 497
      Indent = 19
      TabOrder = 0
    end
  end
end
