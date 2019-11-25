VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "MAC SSID KEY Write and Read Ver2.1  (MAC=0:00～F:FF  SSID=000000～FFFFFF  KEY=Lot+000～FFF)"
   ClientHeight    =   12045
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11865
   BeginProperty Font 
      Name            =   "宋体"
      Size            =   21.75
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form1.frx":08CA
   ScaleHeight     =   12045
   ScaleWidth      =   11865
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.Frame Frame1 
      Caption         =   "KEY Set"
      Height          =   3375
      Index           =   2
      Left            =   120
      TabIndex        =   119
      Top             =   8400
      Width           =   11535
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   2
         Left            =   1680
         MaxLength       =   5
         TabIndex        =   126
         Text            =   "18510"
         Top             =   720
         Width           =   2295
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Auto Inc"
         Height          =   495
         Index           =   2
         Left            =   1920
         TabIndex        =   125
         Top             =   1680
         Value           =   1  'Checked
         Width           =   2415
      End
      Begin VB.CommandButton Command4 
         Caption         =   "reset"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   2
         Left            =   10680
         TabIndex        =   124
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton Command2 
         Caption         =   "write"
         Height          =   615
         Index           =   2
         Left            =   5640
         TabIndex        =   123
         Top             =   840
         Width           =   1335
      End
      Begin VB.TextBox Text5 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   2
         Left            =   3960
         MaxLength       =   3
         TabIndex        =   122
         Text            =   "000"
         Top             =   720
         Width           =   1500
      End
      Begin VB.TextBox Text6 
         Alignment       =   2  'Center
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   2
         Left            =   1680
         MaxLength       =   17
         TabIndex        =   121
         Top             =   2280
         Width           =   3735
      End
      Begin VB.CommandButton Command1 
         Caption         =   "read"
         Height          =   615
         Index           =   2
         Left            =   5640
         TabIndex        =   120
         Top             =   2280
         Width           =   1335
      End
      Begin VB.Label Label1 
         Caption         =   "KEY"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   36
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   2
         Left            =   120
         TabIndex        =   127
         Top             =   600
         Width           =   1335
      End
      Begin VB.Image Image1 
         Height          =   735
         Index           =   2
         Left            =   7320
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "SSID Set"
      Height          =   3375
      Index           =   1
      Left            =   120
      TabIndex        =   111
      Top             =   4800
      Width           =   11535
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   1
         Left            =   1680
         MaxLength       =   17
         TabIndex        =   117
         Text            =   "BX"
         Top             =   720
         Width           =   1215
      End
      Begin VB.CommandButton Command4 
         Caption         =   "reset"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   1
         Left            =   10680
         TabIndex        =   116
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton Command2 
         Caption         =   "write"
         Height          =   615
         Index           =   1
         Left            =   5880
         TabIndex        =   115
         Top             =   840
         Width           =   1335
      End
      Begin VB.TextBox Text5 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   1
         Left            =   2880
         MaxLength       =   6
         TabIndex        =   114
         Text            =   "000000"
         Top             =   720
         Width           =   2700
      End
      Begin VB.TextBox Text6 
         Alignment       =   2  'Center
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   1
         Left            =   1680
         MaxLength       =   17
         TabIndex        =   113
         Top             =   2280
         Width           =   3855
      End
      Begin VB.CommandButton Command1 
         Caption         =   "read"
         Height          =   615
         Index           =   1
         Left            =   5880
         TabIndex        =   112
         Top             =   2280
         Width           =   1335
      End
      Begin VB.Label Label1 
         Caption         =   "SSID"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   36
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   1
         Left            =   120
         TabIndex        =   118
         Top             =   600
         Width           =   1335
      End
      Begin VB.Image Image1 
         Height          =   735
         Index           =   1
         Left            =   7800
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Receiver ADF7021"
      Height          =   7455
      Left            =   17520
      TabIndex        =   43
      Top             =   240
      Width           =   5535
      Begin VB.CommandButton Command11 
         Caption         =   "reset"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   4560
         TabIndex        =   107
         Top             =   1560
         Width           =   855
      End
      Begin VB.CommandButton Command10 
         Caption         =   "write"
         Height          =   495
         Left            =   3720
         TabIndex        =   106
         Top             =   6720
         Width           =   1335
      End
      Begin VB.CommandButton Command9 
         Caption         =   "read"
         Height          =   495
         Left            =   1800
         TabIndex        =   105
         Top             =   6720
         Width           =   1215
      End
      Begin VB.Frame Frame6 
         Caption         =   "Updata Registers(0x)--Design special"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   240
         TabIndex        =   52
         Top             =   2040
         Width           =   5055
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   15
            Left            =   3720
            TabIndex        =   100
            Top             =   4155
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   15
            Left            =   3720
            MaxLength       =   8
            TabIndex        =   99
            Top             =   3765
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   14
            Left            =   2520
            TabIndex        =   98
            Top             =   4155
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   14
            Left            =   2520
            MaxLength       =   8
            TabIndex        =   97
            Top             =   3765
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   13
            Left            =   1320
            MaxLength       =   8
            TabIndex        =   96
            Top             =   3765
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   13
            Left            =   1320
            TabIndex        =   95
            Top             =   4155
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   12
            Left            =   120
            MaxLength       =   8
            TabIndex        =   94
            Top             =   3765
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   12
            Left            =   120
            TabIndex        =   93
            Top             =   4155
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   11
            Left            =   3720
            TabIndex        =   88
            Top             =   3075
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   11
            Left            =   3720
            MaxLength       =   8
            TabIndex        =   87
            Top             =   2685
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   10
            Left            =   2520
            TabIndex        =   86
            Top             =   3075
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   10
            Left            =   2520
            MaxLength       =   8
            TabIndex        =   85
            Top             =   2685
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   9
            Left            =   1320
            MaxLength       =   8
            TabIndex        =   84
            Top             =   2685
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   9
            Left            =   1320
            TabIndex        =   83
            Top             =   3075
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   8
            Left            =   120
            MaxLength       =   8
            TabIndex        =   82
            Top             =   2685
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   8
            Left            =   120
            TabIndex        =   81
            Top             =   3075
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   7
            Left            =   3720
            TabIndex        =   76
            Top             =   1995
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   7
            Left            =   3720
            MaxLength       =   8
            TabIndex        =   75
            Top             =   1605
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   6
            Left            =   2520
            TabIndex        =   74
            Top             =   1995
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   6
            Left            =   2520
            MaxLength       =   8
            TabIndex        =   73
            Top             =   1605
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   5
            Left            =   1320
            MaxLength       =   8
            TabIndex        =   72
            Top             =   1605
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   5
            Left            =   1320
            TabIndex        =   71
            Top             =   1995
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   4
            Left            =   120
            MaxLength       =   8
            TabIndex        =   70
            Top             =   1605
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   4
            Left            =   120
            TabIndex        =   69
            Top             =   1995
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   0
            Left            =   120
            TabIndex        =   60
            Top             =   915
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   0
            Left            =   120
            MaxLength       =   8
            TabIndex        =   59
            Top             =   525
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   1
            Left            =   1320
            TabIndex        =   58
            Top             =   915
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   1
            Left            =   1320
            MaxLength       =   8
            TabIndex        =   57
            Top             =   525
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   2
            Left            =   2520
            MaxLength       =   8
            TabIndex        =   56
            Top             =   525
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   2
            Left            =   2520
            TabIndex        =   55
            Top             =   915
            Width           =   1095
         End
         Begin VB.TextBox TextR 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   3
            Left            =   3720
            MaxLength       =   8
            TabIndex        =   54
            Top             =   525
            Width           =   1095
         End
         Begin VB.CommandButton CommandR 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   3
            Left            =   3720
            TabIndex        =   53
            Top             =   915
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 15"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   15
            Left            =   3720
            TabIndex        =   104
            Top             =   3480
            Width           =   1215
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 14"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   14
            Left            =   2520
            TabIndex        =   103
            Top             =   3480
            Width           =   1215
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 13"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   13
            Left            =   1250
            TabIndex        =   102
            Top             =   3480
            Width           =   1335
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 12"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   12
            Left            =   20
            TabIndex        =   101
            Top             =   3480
            Width           =   1335
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 11"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   11
            Left            =   3720
            TabIndex        =   92
            Top             =   2400
            Width           =   1215
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 10"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   10
            Left            =   2520
            TabIndex        =   91
            Top             =   2400
            Width           =   1215
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 9"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   9
            Left            =   1320
            TabIndex        =   90
            Top             =   2400
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 8"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   8
            Left            =   120
            TabIndex        =   89
            Top             =   2400
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 7"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   7
            Left            =   3720
            TabIndex        =   80
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 6"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   6
            Left            =   2520
            TabIndex        =   79
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 5"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   5
            Left            =   1320
            TabIndex        =   78
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 4"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   77
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 3"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   3
            Left            =   3720
            TabIndex        =   68
            Top             =   240
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 2"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   2
            Left            =   2520
            TabIndex        =   67
            Top             =   240
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 1"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   1
            Left            =   1320
            TabIndex        =   66
            Top             =   240
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            Caption         =   "Register 0"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   65
            Top             =   240
            Width           =   1095
         End
      End
      Begin VB.ComboBox Combo3 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   3
         ItemData        =   "Form1.frx":0910
         Left            =   240
         List            =   "Form1.frx":0920
         TabIndex        =   50
         Text            =   "Icp = 0.3mA"
         Top             =   1560
         Width           =   1575
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   300
         Index           =   2
         Left            =   1725
         Max             =   3
         TabIndex        =   44
         Top             =   600
         Width           =   3615
      End
      Begin VB.Image Image3 
         Height          =   735
         Left            =   600
         Top             =   6650
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "PLL Charge Pump"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   6
         Left            =   240
         TabIndex        =   51
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "Setting 0"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Index           =   2
         Left            =   2880
         TabIndex        =   49
         Top             =   885
         Width           =   1335
      End
      Begin VB.Label Label5 
         Caption         =   "3"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   5160
         TabIndex        =   48
         Top             =   885
         Width           =   255
      End
      Begin VB.Label Label4 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   2280
         TabIndex        =   47
         Top             =   885
         Width           =   375
      End
      Begin VB.Label Label3 
         Caption         =   "VCO Adjust"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   5
         Left            =   240
         TabIndex        =   46
         Top             =   645
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "(Center Frequency)"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   45
         Top             =   900
         Width           =   1935
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Transmitter ADF7012"
      Height          =   6495
      Left            =   15120
      TabIndex        =   13
      Top             =   720
      Width           =   6495
      Begin VB.CommandButton Command8 
         Caption         =   "reset"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   5520
         TabIndex        =   42
         Top             =   3840
         Width           =   855
      End
      Begin VB.CommandButton Command7 
         Caption         =   "write"
         Height          =   615
         Left            =   4200
         TabIndex        =   41
         Top             =   5640
         Width           =   1335
      End
      Begin VB.CommandButton Command6 
         Caption         =   "read"
         Height          =   615
         Left            =   1200
         TabIndex        =   40
         Top             =   5640
         Width           =   1335
      End
      Begin VB.ComboBox Combo3 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   2
         ItemData        =   "Form1.frx":0958
         Left            =   4320
         List            =   "Form1.frx":0968
         TabIndex        =   38
         Text            =   "1.221kHz"
         Top             =   3120
         Width           =   1575
      End
      Begin VB.ComboBox Combo3 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   1
         ItemData        =   "Form1.frx":0994
         Left            =   2400
         List            =   "Form1.frx":09A4
         TabIndex        =   36
         Text            =   "< 2.35V"
         Top             =   3120
         Width           =   1575
      End
      Begin VB.ComboBox Combo3 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   0
         ItemData        =   "Form1.frx":09CC
         Left            =   360
         List            =   "Form1.frx":09DC
         TabIndex        =   34
         Text            =   "Icp = 0.3mA"
         Top             =   3120
         Width           =   1575
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   300
         Index           =   1
         Left            =   1845
         Max             =   3
         TabIndex        =   28
         Top             =   1800
         Width           =   4455
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   300
         Index           =   0
         Left            =   960
         Max             =   63
         TabIndex        =   23
         Top             =   795
         Width           =   5415
      End
      Begin VB.Frame Frame4 
         Caption         =   "Updata Registers(0x)--Design special"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1455
         Left            =   120
         TabIndex        =   14
         Top             =   3960
         Width           =   4935
         Begin VB.CommandButton Command5 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   3
            Left            =   3720
            TabIndex        =   22
            Top             =   1035
            Width           =   1095
         End
         Begin VB.TextBox Text4 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   3
            Left            =   3720
            MaxLength       =   8
            TabIndex        =   21
            Top             =   645
            Width           =   1095
         End
         Begin VB.CommandButton Command5 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   2
            Left            =   2520
            TabIndex        =   20
            Top             =   1035
            Width           =   1095
         End
         Begin VB.TextBox Text4 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   2
            Left            =   2520
            MaxLength       =   8
            TabIndex        =   19
            Top             =   645
            Width           =   1095
         End
         Begin VB.TextBox Text4 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   1
            Left            =   1320
            MaxLength       =   8
            TabIndex        =   18
            Top             =   645
            Width           =   1095
         End
         Begin VB.CommandButton Command5 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   1
            Left            =   1320
            TabIndex        =   17
            Top             =   1035
            Width           =   1095
         End
         Begin VB.TextBox Text4 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   0
            Left            =   120
            MaxLength       =   8
            TabIndex        =   16
            Top             =   645
            Width           =   1095
         End
         Begin VB.CommandButton Command5 
            Caption         =   "Updata"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   0
            Left            =   120
            TabIndex        =   15
            Top             =   1035
            Width           =   1095
         End
         Begin VB.Label Label9 
            Alignment       =   2  'Center
            Caption         =   "Register 3"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   3
            Left            =   3720
            TabIndex        =   64
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label9 
            Alignment       =   2  'Center
            Caption         =   "Register 2"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   2
            Left            =   2520
            TabIndex        =   63
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label9 
            Alignment       =   2  'Center
            Caption         =   "Register 1"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   1
            Left            =   1320
            TabIndex        =   62
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label9 
            Alignment       =   2  'Center
            Caption         =   "Register 0"
            BeginProperty Font 
               Name            =   "宋体"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   61
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Image Image2 
         Height          =   735
         Left            =   5400
         Top             =   4440
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "Frequency Deviation"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   4
         Left            =   4320
         TabIndex        =   39
         Top             =   2880
         Width           =   2055
      End
      Begin VB.Label Label3 
         Caption         =   "Battery Measure"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   3
         Left            =   2400
         TabIndex        =   37
         Top             =   2880
         Width           =   1575
      End
      Begin VB.Label Label3 
         Caption         =   "PLL Charge Pump"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   2
         Left            =   360
         TabIndex        =   35
         Top             =   2880
         Width           =   1575
      End
      Begin VB.Label Label7 
         Caption         =   "(Center Frequency)"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   33
         Top             =   2100
         Width           =   1935
      End
      Begin VB.Label Label3 
         Caption         =   "VCO Adjust"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   1
         Left            =   360
         TabIndex        =   32
         Top             =   1845
         Width           =   1215
      End
      Begin VB.Label Label4 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   2400
         TabIndex        =   31
         Top             =   2085
         Width           =   375
      End
      Begin VB.Label Label5 
         Caption         =   "3"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   6000
         TabIndex        =   30
         Top             =   2085
         Width           =   255
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "Setting 0"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Index           =   1
         Left            =   3720
         TabIndex        =   29
         Top             =   2085
         Width           =   1335
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "Setting 0"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Index           =   0
         Left            =   3000
         TabIndex        =   27
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label Label5 
         Caption         =   "+14dBm"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   5760
         TabIndex        =   26
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label Label4 
         Caption         =   "-16dBm"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   840
         TabIndex        =   25
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "TX Power"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   75
         TabIndex        =   24
         Top             =   840
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Debug DATA"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   10
      Top             =   120
      Width           =   9255
      Begin VB.TextBox Text3 
         BackColor       =   &H8000000B&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   3480
         TabIndex        =   12
         Top             =   360
         Width           =   5655
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H8000000B&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   14.25
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         TabIndex        =   11
         Top             =   360
         Width           =   3255
      End
   End
   Begin VB.ComboBox Combo2 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      ItemData        =   "Form1.frx":0A14
      Left            =   120
      List            =   "Form1.frx":0A21
      TabIndex        =   8
      Text            =   "Trigger mode"
      Top             =   12360
      Width           =   3615
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   700
      Left            =   6840
      Top             =   12240
   End
   Begin VB.CommandButton Command3 
      Caption         =   "exit"
      Height          =   615
      Left            =   8640
      TabIndex        =   5
      Top             =   12120
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      ItemData        =   "Form1.frx":0A58
      Left            =   9480
      List            =   "Form1.frx":0ADF
      TabIndex        =   4
      Text            =   "COM Port"
      Top             =   360
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      Caption         =   "MAC Set"
      Height          =   3375
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   11535
      Begin VB.CommandButton Command1 
         Caption         =   "read"
         Height          =   615
         Index           =   0
         Left            =   9120
         TabIndex        =   110
         Top             =   2400
         Width           =   1335
      End
      Begin VB.TextBox Text6 
         Alignment       =   2  'Center
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   0
         Left            =   1680
         MaxLength       =   17
         TabIndex        =   109
         Top             =   2280
         Width           =   7335
      End
      Begin VB.TextBox Text5 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   0
         Left            =   7040
         MaxLength       =   4
         TabIndex        =   108
         Text            =   "0:00"
         Top             =   720
         Width           =   1980
      End
      Begin VB.CommandButton Command2 
         Caption         =   "write"
         Height          =   615
         Index           =   0
         Left            =   9120
         TabIndex        =   9
         Top             =   840
         Width           =   1335
      End
      Begin VB.CommandButton Command4 
         Caption         =   "reset"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   0
         Left            =   10680
         TabIndex        =   7
         Top             =   240
         Width           =   855
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Auto Inc"
         Height          =   495
         Index           =   0
         Left            =   1920
         TabIndex        =   3
         Top             =   1680
         Value           =   1  'Checked
         Width           =   2415
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   36
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   0
         Left            =   1680
         MaxLength       =   17
         TabIndex        =   2
         Text            =   "70:B3:D5:5A:90:00"
         Top             =   720
         Width           =   7335
      End
      Begin VB.Image Image1 
         Height          =   735
         Index           =   0
         Left            =   10680
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "MAC"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   36
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Top             =   600
         Width           =   1335
      End
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   7560
      Top             =   12120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      CommPort        =   4
      DTREnable       =   -1  'True
      InBufferSize    =   2048
      OutBufferSize   =   2048
      BaudRate        =   115200
   End
   Begin VB.Image Image4 
      Height          =   495
      Left            =   11400
      Top             =   360
      Width           =   375
   End
   Begin VB.Label Label2 
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   3960
      TabIndex        =   6
      Top             =   12360
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim timer_delay_rx_1 As Byte
Public ComStatus As Boolean
Dim TimeDate As String
Dim InputSignal As String           ' 接收缓冲暂存
Private Sub Check2_Click()
'If Check2.Value = 1 Then
'Text1.Text = "AAA"
'Text1.Enabled = False
'Else
'Text1.Text = "00000000"
'Text1.Enabled = True
'End If
End Sub
'##################################################################################
'#                                     串口设置                                   #
'##################################################################################
Private Sub CommPort1_Set(id As Byte)
    On Error GoTo error_access
    CommPort = id
    If MSComm1.PortOpen = True Then MSComm1.PortOpen = False
    MSComm1.CommPort = CommPort
    MSComm1.RThreshold = 1
    MSComm1.PortOpen = True
    ComStatus = True
    Image4.Picture = LoadPicture(App.Path & "\kai.jpg")
    Exit Sub
error_access:
    ComStatus = False
    Image4.Picture = LoadPicture(App.Path & "\guan.jpg")
    'MsgBox "COM fail"
    MsgBox "COM is not open", vbInformation, "Error"
    Exit Sub
End Sub

Private Sub Combo1_Click()
Dim id_i As Byte
Dim id_j As Byte

    id_i = Val(Mid(Combo1.Text, 4, 1))
    id_j = Val(Mid(Combo1.Text, 5, 1))
    
    Call CommPort1_Set(id_i * 10 + id_j)


End Sub

Private Sub Combo3_Click(Index As Integer)
Dim d1, d2, d3 As Long
Dim str As String
Dim str0 As String

    If Index = 0 Then
        str0 = Text4(3).Text
        
        d1 = hex2dec(Mid(str, 7, 1)) Mod 4
        d1 = d1 + Combo3(Index).ListIndex * 4
        
        Text4(3).Text = Mid(str0, 1, 6) + Right$("0" + Hex(d1), 1) + Mid(str0, 8, 1)
        Text4(3).BackColor = &H80FF80
    End If
    
    If Index = 1 Then
        str0 = Text4(3).Text

        d1 = hex2dec(Mid(str0, 5, 1)) * 16 + hex2dec(Mid(str0, 6, 1))
        d2 = d1 Mod 8
        d3 = d1 \ 128
        d1 = d3 * 128 + (Combo3(Index).ListIndex + 10) * 8 + d2
        
        Text4(3).Text = Mid(str0, 1, 4) + Right$("00" + Hex(d1), 2) + Mid(str0, 7, 2)
        Text4(3).BackColor = &H80FF80
    End If
    
    If Index = 2 Then
        str0 = Text4(2).Text

        d1 = hex2dec(Mid(str, 3, 1)) \ 8
        d1 = d1 * 8 + Combo3(Index).ListIndex
        
        Text4(2).Text = Mid(str0, 1, 2) + Right$("0" + Hex(d1), 1) + Mid(str0, 4, 5)
        Text4(2).BackColor = &H80FF80
                
    End If
    
    If Index = 3 Then
        str0 = TextR(1).Text

        d1 = hex2dec(Mid(str0, 4, 1)) * 16 + hex2dec(Mid(str0, 5, 1))
        d2 = d1 Mod 8
        d3 = d1 \ 32
        d1 = d3 * 32 + Combo3(Index).ListIndex * 8 + d2
        
        TextR(1).Text = Mid(str0, 1, 3) + Right$("00" + Hex(d1), 2) + Mid(str0, 6, 3)
        TextR(1).BackColor = &H80FF80
                
    End If
End Sub
Public Function Command1_read(Index As Integer) As Variant


Dim str As String
Dim str1 As String


Text2.Text = ""
Text6(Index).Text = ""
char0 = 0

If Index = 0 Then

        Text2.Text = "MAC" + Chr(13)
        
        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.Output = Text2.Text
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 1
        
        Text3.Text = ""
        Call timer_delay(200)
        
        str = InputSignal
        Text3.Text = str
        
        str1 = Mid(Text3.Text, 12, 2) + ":" + Mid(Text3.Text, 15, 2) + ":" + Mid(Text3.Text, 18, 2) + ":" + Mid(Text3.Text, 21, 2) + ":" + Mid(Text3.Text, 24, 2) + ":" + Mid(Text3.Text, 27, 2)
        Text6(Index).Text = UCase(str1)
End If

If Index = 1 Then

        Text2.Text = "SSID" + Chr(13)
        
        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.Output = Text2.Text
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 1
        
        Text3.Text = ""
        Call timer_delay(200)
        
        str = InputSignal
        Text3.Text = str
        
        str1 = Mid(Text3.Text, 14, 8)
        Text6(Index).Text = UCase(str1)
End If

If Index = 2 Then

        Text2.Text = "PWD" + Chr(13)
        
        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.Output = Text2.Text
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 1
        
        Text3.Text = ""
        Call timer_delay(200)
        
        str = InputSignal
        Text3.Text = str
        
        str1 = Mid(Text3.Text, 12, 8)
        Text6(Index).Text = UCase(str1)
End If

End Function




Private Sub Command1_Click(Index As Integer)


    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If                                                          ' /

Command1(Index).Enabled = False
Image1(Index).Picture = LoadPicture("")

Call Command1_read(Index)

Command1(Index).Enabled = True


End Sub

Private Sub Command10_Click()
Dim str As String
Dim str0 As String
Dim str1 As String
Dim a As Long
Dim i, i0, char0 As Integer

    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If

 Command10.Enabled = False
 Image3.Picture = LoadPicture("")
 
 Text2.Text = ""
 char0 = 0
 
 'For i = 0 To 4
 For i = 1 To 1

        Text2.Text = "(WI" + Right$("0" + Hex(i), 1) + TextR(i).Text + ")"

        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 5

        'Text3.Text = ""
        MSComm1.Output = Text2.Text

        Call timer_delay(200)

        'str = MSComm1.Input
        str = InputSignal
        Text3.Text = str
        str0 = Mid(str, 1, 5)
        str1 = "(WI)" + Right$("0" + Hex(i), 1)
        If str0 <> str1 Then
           char0 = 1
        End If
 Next

If char0 = 0 Then
    Image3.Picture = LoadPicture(App.Path & "\navigate_check.bmp")

Else
   Image3.Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
End If
        
Command10.Enabled = True

 For i0 = 0 To 4
   TextR(i0).BackColor = &H80000005
 Next
End Sub

Private Sub Command11_Click()

    Image3.Picture = LoadPicture("")
'-------------------------------RX

HScroll1(2).Value = 2           'VCO Adjust
Label6(2).Caption = "Setting " + Right$("00" + HScroll1(2).Value, 2)

Combo3(3).ListIndex = 2   'PLL Charge Pump

TextR(0).Text = "0954C7B0"
TextR(1).Text = "031B5011"
TextR(2).Text = "00500882"
TextR(3).Text = "29915CD3"
TextR(4).Text = "00289A14"
TextR(10).Text = "049668FA"

TextR(5).Text = "00000005"
TextR(6).Text = "00000006"
TextR(7).Text = "00000007"
TextR(8).Text = "00000008"
TextR(9).Text = "00000009"
TextR(11).Text = "0000000B"
TextR(12).Text = "0000000C"
TextR(13).Text = "0000000D"
TextR(14).Text = "0000000E"
TextR(15).Text = "0000000F"

 For i0 = 0 To 15
   TextR(i0).BackColor = &H80000005
 Next

End Sub

Private Sub Command2_Click(Index As Integer)


Dim str As String
Dim str1 As String
Dim str2 As String
Dim str3 As String
Dim str4 As String
Dim str_SET As String
Dim str_Write As String
Dim str_Read As String
Dim a As Long
Dim d1  As Long
Dim Send_Str As String
Dim char0 As Integer
Dim b As Integer

    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If                                                          ' /

Command2(Index).Enabled = False
Image1(Index).Picture = LoadPicture("")

Text2.Text = ""
char0 = 0

If Index = 0 Then

        Send_Str = Text5(Index).Text
        Long_Num = Len(Send_Str)
        If Long_Num <> 4 Then
        MsgBox "bits ! = 4,value（ 0:00～F:FF ）", vbInformation, "Error"
        Command2(Index).Enabled = True
        Exit Sub
        End If
        
        str1 = Mid(Text5(Index).Text, 1, 1) + Mid(Text5(Index).Text, 3, 2)
        'a = Val(str1)
        a = hex2dec(Mid(str1, 1, 1)) * 256 + hex2dec(Mid(str1, 2, 1)) * 16 + hex2dec(Mid(str1, 3, 1))
        If a > 4095 Then
        
            MsgBox "MAC>4095(Hex=0xFFF)", vbInformation, "Error"
            Command2(Index).Enabled = True
            Exit Sub
        End If
        
        
        str2 = Right$("000" + Hex(a), 3)
        
        Text2.Text = "MAC -W 70B3D55A9" + Mid(str2, 1, 1) + Mid(str2, 2, 2) + Chr(13)
        str_Write = Mid(Text1(Index).Text, 1, 13) + Mid(str2, 1, 1) + ":" + Mid(str2, 2, 2)
        
        b = MsgBox("请仔细确认需要写入的MAC地址后三位" + str1 + "是否正确，由于是写入到OTP区域，只能写一次,如果MAC地址正确，请点击“确定”；如果MAC地址错误，请点击“取消”", vbOKCancel, "注意，特别提示是否MAC写入")
        If b = vbCancel Then
         Command2(Index).Enabled = True
         Exit Sub
        End If
        
        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.Output = Text2.Text
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 1
        
        Text3.Text = ""
        Call timer_delay(200)
        
        'str = MSComm1.Input
        str = InputSignal
        Text3.Text = str
        
        str_SET = Mid(Text3.Text, 23, 3)
        str4 = "Set"
        If str_SET <> str4 Then
            Image1(Index).Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
            Command2(Index).Enabled = True
            Exit Sub
        End If
        
        Call timer_delay(200)
        Call Command1_read(Index)
        str_Read = Text6(Index).Text
        
                If str_Read <> str_Write Then
                   char0 = 1
                End If
        
        If char0 = 0 Then
        
            Image1(Index).Picture = LoadPicture(App.Path & "\navigate_check.bmp")
        
        Else
        
           Image1(Index).Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
        End If
        
        
        If Check1(Index).Value = 1 Then
            If char0 = 0 Then
                If a < 4095 Then
                    d1 = a + 1
                    str3 = Right$("000" + Hex(d1), 3)
                    Text5(Index).Text = Mid(str3, 1, 1) + ":" + Mid(str3, 2, 2)
                Else
                    Text5(Index).Text = "0:00"
                End If
            End If
        End If

End If

If Index = 1 Then
        Send_Str = Text5(Index).Text
        Long_Num = Len(Send_Str)
        If Long_Num <> 6 Then
        MsgBox "bits ! = 6,value（ 000000～FFFFFF ）", vbInformation, "Error"
        Command2(Index).Enabled = True
        Exit Sub
        End If
        
        str1 = Text5(Index).Text
        
        Text2.Text = "SSID -W BX" + Mid(str1, 1, 6) + Chr(13)
        str_Write = Mid(Text1(Index).Text, 1, 2) + Mid(str1, 1, 6)
        
        b = MsgBox("请仔细确认需要写入的SSID后六位" + str1 + "是否正确，由于是写入到OTP区域，只能写一次,如果SSID正确，请点击“确定”；如果SSID错误，请点击“取消”", vbOKCancel, "注意，特别提示是否SSID写入")
        If b = vbCancel Then
         Command2(Index).Enabled = True
         Exit Sub
        End If
        
        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.Output = Text2.Text
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 1
        
        Text3.Text = ""
        Call timer_delay(200)
        
        'str = MSComm1.Input
        str = InputSignal
        Text3.Text = str
                
        str_SET = Mid(Text3.Text, 20, 3)
        str4 = "Set"
        If str_SET <> str4 Then
            Image1(Index).Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
            Command2(Index).Enabled = True
            Exit Sub
        End If
                
        Call timer_delay(200)
        Call Command1_read(Index)
        str_Read = Text6(Index).Text
        
                If str_Read <> str_Write Then
                   char0 = 1
                End If
        
        If char0 = 0 Then
        
            Image1(Index).Picture = LoadPicture(App.Path & "\navigate_check.bmp")
        
        Else
        
           Image1(Index).Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
        End If
                
End If

If Index = 2 Then
        Send_Str = Text5(Index).Text
        Long_Num = Len(Send_Str)
        If Long_Num <> 3 Then
        MsgBox "bits ! = 3,value（ 000～FFF ）", vbInformation, "Error"
        Command2(Index).Enabled = True
        Exit Sub
        End If
        
        'Text1(Index).Text = "17Z07"
        str1 = Text5(Index).Text
        
        a = hex2dec(Mid(str1, 1, 1)) * 256 + hex2dec(Mid(str1, 2, 1)) * 16 + hex2dec(Mid(str1, 3, 1))
        If a > 4095 Then
        
            MsgBox "KEY>4095(Hex=0xFFF)", vbInformation, "Error"
            Command2(Index).Enabled = True
            Exit Sub
        End If
        
        Text2.Text = "PWD -W " + Mid(Text1(Index).Text, 1, 5) + Mid(str1, 1, 3) + Chr(13)
        str_Write = Mid(Text1(Index).Text, 1, 5) + Mid(str1, 1, 3)
        
        b = MsgBox("请仔细确认今天的日期" + TimeDate + "，以及需要写入的KEY后三位" + str1 + "是否正确，由于是写入到OTP区域，只能写一次,如果KEY正确，请点击“确定”；如果KEY错误，请点击“取消”", vbOKCancel, "注意，特别提示是否KEY写入")
        If b = vbCancel Then
         Command2(Index).Enabled = True
         Exit Sub
        End If
        
        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.Output = Text2.Text
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 1
        
        Text3.Text = ""
        Call timer_delay(200)
        
        'str = MSComm1.Input
        str = InputSignal
        Text3.Text = str
                
        str_SET = Mid(Text3.Text, 19, 3)
        str4 = "set"
        If str_SET <> str4 Then
            Image1(Index).Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
            Command2(Index).Enabled = True
            Exit Sub
        End If
                
        Call timer_delay(200)
        Call Command1_read(Index)
        str_Read = Text6(Index).Text
        
                If str_Read <> str_Write Then
                   char0 = 1
                End If
        
        If char0 = 0 Then
        
            Image1(Index).Picture = LoadPicture(App.Path & "\navigate_check.bmp")
        
        Else
        
           Image1(Index).Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
        End If
        
        If Check1(Index).Value = 1 Then
            If char0 = 0 Then
                If a < 4095 Then
                    d1 = a + 1
                    str3 = Right$("000" + Hex(d1), 3)
                    Text5(Index).Text = Mid(str3, 1, 1) + Mid(str3, 2, 2)
                Else
                    Text5(Index).Text = "000"
                End If
            End If
        End If
                
End If


Command2(Index).Enabled = True

End Sub

Private Sub Command4_Click(Index As Integer)

On Error GoTo err_flag
If Index = 0 Then
    Text5(Index).Text = "0:00"
    Text6(Index).Text = ""
End If
If Index = 1 Then
    Text5(Index).Text = "000000"
    Text6(Index).Text = ""
End If
If Index = 2 Then
    Text5(Index).Text = "000"
    Text6(Index).Text = ""
End If
Image1(Index).Picture = LoadPicture("")
Label2.Caption = ""

Check1(Index).Value = True
Check2.Value = False
 'Combo1.Text = "串口"
 MSComm1.PortOpen = False                      '关闭串口
err_flag:

End Sub

Private Sub Command5_Click(Index As Integer)
Dim str As String
Dim str0 As String
Dim str1 As String
Dim a As Long

    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If
    
 Command5(Index).Enabled = False
 Image2.Picture = LoadPicture("")
    
Text2.Text = "(WH" + Right$("0" + Trim(Index), 1) + Text4(Index).Text + ")"

MSComm1.OutBufferCount = 0                   '清发送缓存区
MSComm1.InBufferCount = 0                    '清接收缓存区
InputSignal = ""
MSComm1.RThreshold = 5

Text3.Text = ""
MSComm1.Output = Text2.Text

Call timer_delay(200)

'str = MSComm1.Input
str = InputSignal
Text3.Text = str
str0 = Mid(str, 1, 5)
str1 = "(WH)" + Right$("0" + Trim(Index), 1)
If str0 = str1 Then

    Image2.Picture = LoadPicture(App.Path & "\navigate_check.bmp")

Else

   Image2.Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
End If

Text4(Index).BackColor = &H80000005
Command5(Index).Enabled = True
End Sub


Private Sub Command6_Click()
    Dim str As String
    Dim str0 As String
    Dim d1  As Long
    Dim i, char0 As Integer
    
    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If                                                          ' /

Command6.Enabled = False
Image2.Picture = LoadPicture("")

 For i = 0 To 3

        Text2.Text = "(RH" + Right$("0" + Trim(i), 1) + ")"

        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 12

        'Text3.Text = ""
        MSComm1.Output = Text2.Text

        Call timer_delay(200)

        'str = MSComm1.Input
        str = InputSignal
        Text3.Text = str
        str0 = Mid(str, 1, 4)
        If str0 = "(RH)" Then
           Text4(i).Text = Mid(str, 5, 8)
        Else
          char0 = 1
        End If
 Next

If char0 = 0 Then
    Image2.Picture = LoadPicture(App.Path & "\navigate_check.bmp")

Else
   Image2.Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
End If


Text4(0).BackColor = &H80000005
Text4(1).BackColor = &H80000005
Text4(2).BackColor = &H80000005
Text4(3).BackColor = &H80000005
Command6.Enabled = True
End Sub

Private Sub Command7_Click()
Dim str As String
Dim str0 As String
Dim str1 As String
Dim a As Long
Dim i, char0 As Integer

    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If

 Command7.Enabled = False
 Image2.Picture = LoadPicture("")
 
 Text2.Text = ""
 char0 = 0
 
 For i = 0 To 3

        Text2.Text = "(WH" + Right$("0" + Trim(i), 1) + Text4(i).Text + ")"

        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 5

        'Text3.Text = ""
        MSComm1.Output = Text2.Text

        Call timer_delay(200)

        'str = MSComm1.Input
        str = InputSignal
        Text3.Text = str
        str0 = Mid(str, 1, 5)
        str1 = "(WH)" + Right$("0" + Trim(i), 1)
        If str0 <> str1 Then
           char0 = 1
        End If
 Next

If char0 = 0 Then
    Image2.Picture = LoadPicture(App.Path & "\navigate_check.bmp")

Else
   Image2.Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
End If
        
Command7.Enabled = True

Text4(0).BackColor = &H80000005
Text4(1).BackColor = &H80000005
Text4(2).BackColor = &H80000005
Text4(3).BackColor = &H80000005
End Sub

Private Sub Command8_Click()
    Image2.Picture = LoadPicture("")
    HScroll1(0).Value = 13           'TX Power
    Label6(0).Caption = "Setting " + Right$("00" + HScroll1(0).Value, 2)
    
    HScroll1(1).Value = 1           'VCO Adjust
    Label6(1).Caption = "Setting " + Right$("00" + HScroll1(1).Value, 2)
    
    '    a = cboSysOp(1).ListIndex
    '    b = cboSysOp(1).ItemData(a)
    Combo3(0).ListIndex = 1  'PLL Charge Pump
    Combo3(1).ListIndex = 0  'Battery Measure
    Combo3(2).ListIndex = 1  'Frequency Deviation
    
    Text4(0).Text = "00884000"
    Text4(1).Text = "00154DC1"
    Text4(2).Text = "011209A6"
    Text4(3).Text = "0021D04F"
    
    Text4(0).BackColor = &H80000005
    Text4(1).BackColor = &H80000005
    Text4(2).BackColor = &H80000005
    Text4(3).BackColor = &H80000005
End Sub

Private Sub Command9_Click()
    Dim str As String
    Dim str0 As String
    Dim d1  As Long
    Dim i, i0, char0 As Integer
    
    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If                                                          ' /

Command9.Enabled = False
Image3.Picture = LoadPicture("")

' For i = 0 To 4
 For i = 1 To 1

        Text2.Text = "(RI" + Right$("0" + Hex(i), 1) + ")"

        MSComm1.OutBufferCount = 0                   '清发送缓存区
        MSComm1.InBufferCount = 0                    '清接收缓存区
        InputSignal = ""
        MSComm1.RThreshold = 12

        'Text3.Text = ""
        MSComm1.Output = Text2.Text

        Call timer_delay(200)

        'str = MSComm1.Input
        str = InputSignal
        Text3.Text = str
        str0 = Mid(str, 1, 4)
        If str0 = "(RI)" Then
           TextR(i).Text = Mid(str, 5, 8)
        Else
          char0 = 1
        End If
 Next

If char0 = 0 Then
    Image3.Picture = LoadPicture(App.Path & "\navigate_check.bmp")

Else
   Image3.Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
End If


 For i0 = 0 To 4
   TextR(i0).BackColor = &H80000005
 Next
Command9.Enabled = True
End Sub

Private Sub CommandR_Click(Index As Integer)
Dim str As String
Dim str0 As String
Dim str1 As String
Dim a As Long

    If (ComStatus = False) Then                                     ' \
        MsgBox "COM is not open", vbInformation, "Error"            ' |
        Exit Sub                                                    ' |
    End If
    
 CommandR(Index).Enabled = False
 Image3.Picture = LoadPicture("")
    
Text2.Text = "(WI" + Right$("0" + Trim(Index), 1) + TextR(Index).Text + ")"

MSComm1.OutBufferCount = 0                   '清发送缓存区
MSComm1.InBufferCount = 0                    '清接收缓存区
InputSignal = ""
MSComm1.RThreshold = 5

Text3.Text = ""
MSComm1.Output = Text2.Text

Call timer_delay(200)

'str = MSComm1.Input
str = InputSignal
Text3.Text = str
str0 = Mid(str, 1, 5)
str1 = "(WI)" + Right$("0" + Trim(Index), 1)
If str0 = str1 Then

    Image3.Picture = LoadPicture(App.Path & "\navigate_check.bmp")

Else

   Image3.Picture = LoadPicture(App.Path & "\navigate_cross.bmp")
End If

TextR(Index).BackColor = &H80000005
CommandR(Index).Enabled = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo flagg
MSComm1.PortOpen = False
flagg:
End Sub


Private Sub HScroll1_Change(Index As Integer)
Dim d1, d2, d3 As Long
Dim str As String
Dim str0 As String

Label6(Index).Caption = "Setting " + Right$("00" + HScroll1(Index).Value, 2)

    If Index = 0 Then
        str0 = Text4(2).Text

        d1 = hex2dec(Mid(str0, 6, 1)) * 16 + hex2dec(Mid(str0, 7, 1))
        d2 = d1 Mod 2
        d3 = d1 \ 128
        d1 = d3 * 128 + HScroll1(Index).Value * 2 + d2
        
        Text4(2).Text = Mid(str0, 1, 5) + Right$("00" + Hex(d1), 2) + Mid(str0, 8, 1)
        Text4(2).BackColor = &H80FF80
    
    End If
    
    If Index = 1 Then
        str0 = Text4(0).Text

        d1 = hex2dec(Mid(str0, 2, 1)) * 16 + hex2dec(Mid(str0, 3, 1))
        d2 = d1 Mod 8
        d3 = d1 \ 32
        d1 = d3 * 32 + HScroll1(Index).Value * 8 + d2
        
        Text4(0).Text = Mid(str0, 1, 1) + Right$("00" + Hex(d1), 2) + Mid(str0, 4, 5)
        Text4(0).BackColor = &H80FF80
    
    End If
    
    If Index = 2 Then
        str0 = TextR(1).Text

        d1 = hex2dec(Mid(str0, 2, 1)) * 16 + hex2dec(Mid(str0, 3, 1))
        d2 = d1 Mod 8
        d3 = d1 \ 32
        d1 = d3 * 32 + HScroll1(Index).Value * 8 + d2
        
        TextR(1).Text = Mid(str0, 1, 1) + Right$("00" + Hex(d1), 2) + Mid(str0, 4, 5)
        TextR(1).BackColor = &H80FF80
    
    End If
End Sub



Private Sub MSComm1_OnComm()
On Error GoTo Err
    Select Case MSComm1.CommEvent                                                    ' 每接收1个数就触发一次
        Case comEvReceive

                'Call textReceive                                                    ' 文本接收
                InputSignal = InputSignal & MSComm1.Input
            
        Case comEvSend                                                              ' 每发送1个数就触发一次
        Case Else
    End Select
Err:
End Sub

Private Sub Picture1_Click()

End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
'判断输入字符的Ascii码,如果不符合英文Ascii码就不进行任何操作
Select Case KeyAscii
Case 48 To 57 '数字有效
Case 8 '退格

Case Else
KeyAscii = 0
End Select
End Sub

Private Sub Command3_Click()
Unload Form1
End Sub

Private Sub Form_Load()
Dim i0 As Integer
Dim str As String
Dim str1 As String
Dim str2 As String

str = Format(Now, "yyyy-mm-dd")
TimeDate = str
str1 = Mid(str, 6, 1)
str2 = Mid(str, 6, 2)
If str1 <> "0" Then
   If str2 = "10" Then
      Text1(2).Text = Mid(str, 3, 2) + "X" + Mid(str, 9, 2)
   End If
   If str2 = "11" Then
      Text1(2).Text = Mid(str, 3, 2) + "Y" + Mid(str, 9, 2)
   End If
   If str2 = "12" Then
      Text1(2).Text = Mid(str, 3, 2) + "Z" + Mid(str, 9, 2)
   End If
Else
  Text1(2).Text = Mid(str, 3, 2) + Mid(str, 7, 1) + Mid(str, 9, 2)
End If


'----------------------------TX
HScroll1(0).Value = 13           'TX Power
Label6(0).Caption = "Setting " + Right$("00" + HScroll1(0).Value, 2)

HScroll1(1).Value = 1           'VCO Adjust
Label6(1).Caption = "Setting " + Right$("00" + HScroll1(1).Value, 2)

'    a = cboSysOp(1).ListIndex
'    b = cboSysOp(1).ItemData(a)
Combo3(0).ListIndex = 1  'PLL Charge Pump
Combo3(1).ListIndex = 0  'Battery Measure
Combo3(2).ListIndex = 1  'Frequency Deviation

Text4(0).Text = "00884000"
Text4(1).Text = "00154DC1"
Text4(2).Text = "011209A6"
Text4(3).Text = "0021D04F"

 For i0 = 0 To 3
   Text4(i0).BackColor = &H80000005
 Next


'-------------------------------RX

HScroll1(2).Value = 2           'VCO Adjust
Label6(2).Caption = "Setting " + Right$("00" + HScroll1(2).Value, 2)

Combo3(3).ListIndex = 2   'PLL Charge Pump

TextR(0).Text = "0954C7B0"
TextR(1).Text = "031B5011"
TextR(2).Text = "00500882"
TextR(3).Text = "29915CD3"
TextR(4).Text = "00289A14"
TextR(10).Text = "049668FA"

TextR(5).Text = "00000005"
TextR(6).Text = "00000006"
TextR(7).Text = "00000007"
TextR(8).Text = "00000008"
TextR(9).Text = "00000009"
TextR(11).Text = "0000000B"
TextR(12).Text = "0000000C"
TextR(13).Text = "0000000D"
TextR(14).Text = "0000000E"
TextR(15).Text = "0000000F"

 For i0 = 0 To 15
   TextR(i0).BackColor = &H80000005
 Next



'---------------------------to fty
Frame4.Enabled = False
Frame6.Enabled = False
 For i0 = 0 To 3
   Label9(i0).ForeColor = &H80000010
   Text4(i0).Enabled = False
   Command5(i0).Enabled = False
 Next
  For i0 = 0 To 15
   Label10(i0).ForeColor = &H80000010
   TextR(i0).Enabled = False
   CommandR(i0).Enabled = False
 Next

End Sub



Private Sub Text4_Change(Index As Integer)
  Text4(Index).BackColor = &H80FF80
End Sub

Private Sub Text5_KeyPress(Index As Integer, KeyAscii As Integer)
    '判断输入字符的Ascii码,如果不符合英文Ascii码就不进行任何操作
    Select Case KeyAscii
    Case 48 To 58 '数字有效
    Case 65 To 70 ' 字母A,B,C,D,E,F
    
    Case Else
    KeyAscii = 0
    End Select
    
 If Index = 0 Then
    If Mid(Text5(Index).Text, 2, 1) <> ":" Then
          MsgBox "Wrong format, format（ 0:00～F:FF ）", vbInformation, "Error"
          Command2(Index).Enabled = True
    End If
 End If
End Sub

Private Sub TextR_Change(Index As Integer)
  TextR(Index).BackColor = &H80FF80
End Sub

Private Sub Timer1_Timer()
  timer_delay_rx_1 = 0
  Timer1.Enabled = False
End Sub

Sub timer_delay(count As Single)
    timer_delay_rx_1 = 1
    Timer1.Interval = count
    Timer1.Enabled = True
    Do
      DoEvents
    Loop While (timer_delay_rx_1 = 1)
End Sub
'************************************************************
'             十六进制字符串转换成十进制数
'************************************************************
Public Function hex2dec(char As String) As Variant
    Dim i As Integer
    char = UCase(char)
    Select Case char
        Case "0": i = 0
        Case "1": i = 1
        Case "2": i = 2
        Case "3": i = 3
        Case "4": i = 4
        Case "5": i = 5
        Case "6": i = 6
        Case "7": i = 7
        Case "8": i = 8
        Case "9": i = 9
        Case "A": i = 10
        Case "B": i = 11
        Case "C": i = 12
        Case "D": i = 13
        Case "E": i = 14
        Case "F": i = 15
    End Select
    hex2dec = i
End Function
