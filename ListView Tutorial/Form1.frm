VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Caption         =   "Simple List View Tutorial"
   ClientHeight    =   7695
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6705
   LinkTopic       =   "Form1"
   ScaleHeight     =   7695
   ScaleWidth      =   6705
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   840
      Top             =   5160
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":039A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0934
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0ECE
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":1468
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":1802
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":1B9C
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":2136
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton Add 
      Caption         =   "Add"
      Height          =   495
      Left            =   5280
      TabIndex        =   9
      Top             =   7080
      Width           =   1095
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   4335
      Left            =   240
      TabIndex        =   8
      Top             =   2520
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   7646
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ColHdrIcons     =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   3
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Main Caption"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Sub Item 1"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Sub Item 2"
         Object.Width           =   4410
      EndProperty
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   1440
      TabIndex        =   7
      Text            =   "Text3"
      Top             =   1920
      Width           =   4935
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1440
      TabIndex        =   2
      Text            =   "Text2"
      Top             =   1440
      Width           =   4935
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":26D0
      Left            =   1440
      List            =   "Form1.frx":26EC
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   480
      Width           =   3975
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   960
      Width           =   4935
   End
   Begin VB.Label Label4 
      Caption         =   "Sub Item 2"
      Height          =   375
      Left            =   240
      TabIndex        =   6
      Top             =   1920
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Sub Item 1"
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   1440
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Main Caption"
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Image index"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Add_Click()
    
    Dim a
    
    Set a = ListView1.ListItems.Add(, , Text1.Text, Val(Combo1.Text), Val(Combo1.Text))
    a.SubItems(1) = Text2.Text
    a.SubItems(2) = Text3.Text
    
    
    
End Sub
