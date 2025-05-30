object FormPolygons: TFormPolygons
  Left = 277
  Top = 106
  Caption = 'Polygons Example'
  ClientHeight = 527
  ClientWidth = 657
  Color = clBtnFace
  ParentFont = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Image: TImage32
    Left = 0
    Top = 0
    Width = 512
    Height = 527
    Align = alClient
    Bitmap.ResamplerClassName = 'TKernelResampler'
    Bitmap.Resampler.KernelClassName = 'TCubicKernel'
    Bitmap.Resampler.Kernel.Coeff = -0.500000000000000000
    Bitmap.Resampler.KernelMode = kmDynamic
    Bitmap.Resampler.TableSize = 32
    BitmapAlign = baTopLeft
    Scale = 1.000000000000000000
    ScaleMode = smStretch
    TabOrder = 0
    OnMouseDown = ImageMouseDown
    OnResize = ImageResize
  end
  object PanelControl: TPanel
    Left = 512
    Top = 0
    Width = 145
    Height = 527
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object LblLineOpacity: TLabel
      Left = 16
      Top = 47
      Width = 66
      Height = 15
      Caption = 'Line Opacity'
    end
    object LblFillOpacity: TLabel
      Left = 16
      Top = 87
      Width = 59
      Height = 15
      Caption = 'Fill Opacity'
    end
    object LabelOutlineThickness: TLabel
      Left = 16
      Top = 267
      Width = 72
      Height = 15
      Hint = 'Thickness: %.1n'
      Caption = 'Thickness: 0.0'
    end
    object LabelMiterLimit: TLabel
      Left = 16
      Top = 413
      Width = 82
      Height = 15
      Hint = 'Miter limit: %.2n'
      Caption = 'Miter limit: 0.00'
    end
    object LineAlpha: TTrackBar
      Left = 16
      Top = 63
      Width = 121
      Height = 16
      Max = 255
      PageSize = 0
      Position = 255
      ShowSelRange = False
      TabOrder = 0
      ThumbLength = 14
      TickMarks = tmBoth
      TickStyle = tsNone
      OnChange = LineAlphaChange
    end
    object FillAlpha: TTrackBar
      Left = 16
      Top = 103
      Width = 121
      Height = 16
      Max = 255
      PageSize = 0
      Position = 127
      ShowSelRange = False
      TabOrder = 1
      ThumbLength = 14
      TickMarks = tmBoth
      TickStyle = tsNone
      OnChange = FillAlphaChange
    end
    object RgpFillMode: TRadioGroup
      Left = 16
      Top = 126
      Width = 121
      Height = 65
      Caption = 'Fill Mode'
      ItemIndex = 0
      Items.Strings = (
        'pfEvenOdd'
        'pfNonZero')
      TabOrder = 2
      OnClick = FillModeChange
    end
    object BtnNewLine: TButton
      Left = 24
      Top = 8
      Width = 105
      Height = 25
      Caption = 'New Line'
      TabOrder = 3
      OnClick = BtnNewLineClick
    end
    object LineThickness: TTrackBar
      Left = 16
      Top = 284
      Width = 121
      Height = 16
      Max = 200
      Min = 1
      PageSize = 0
      Position = 10
      ShowSelRange = False
      TabOrder = 4
      ThumbLength = 14
      TickMarks = tmBoth
      TickStyle = tsNone
      OnChange = ThicknessChanged
    end
    object CbxThickOutline: TCheckBox
      Left = 16
      Top = 244
      Width = 121
      Height = 17
      Caption = 'Outline Enabled'
      TabOrder = 5
      OnClick = ThickOutlineChange
    end
    object MemoHint: TMemo
      Left = 16
      Top = 471
      Width = 121
      Height = 47
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'LMB - Add vertex'
        'RMB - Clear')
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CbxPattern: TCheckBox
      Left = 16
      Top = 197
      Width = 121
      Height = 17
      Caption = 'Pattern filling'
      TabOrder = 7
      OnClick = PatternFillingChange
    end
    object RgpJointMode: TRadioGroup
      Left = 16
      Top = 306
      Width = 121
      Height = 101
      Caption = 'Join Style'
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'jsMiter'
        'jsBevel'
        'jsRound'
        'jsRoundEx'
        'jsSquare')
      TabOrder = 8
      OnClick = JointModeChange
    end
    object MiterLimit: TTrackBar
      Left = 16
      Top = 432
      Width = 121
      Height = 16
      Max = 1000
      Min = 1
      PageSize = 0
      Position = 20
      ShowSelRange = False
      TabOrder = 9
      ThumbLength = 14
      TickMarks = tmBoth
      TickStyle = tsNone
      OnChange = MiterLimitChange
    end
  end
  object BitmapList: TBitmap32List
    Bitmaps = <
      item
        Bitmap.ResamplerClassName = 'TNearestResampler'
      end
      item
        Bitmap.ResamplerClassName = 'TNearestResampler'
      end>
    Left = 312
    Top = 328
  end
end
