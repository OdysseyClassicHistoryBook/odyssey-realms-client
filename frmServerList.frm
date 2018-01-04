VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmServerList 
   BackColor       =   &H0061514B&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Odyssey - Select Server"
   ClientHeight    =   3645
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3840
   Icon            =   "frmServerList.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3645
   ScaleWidth      =   3840
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   4
      Left            =   600
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   3
      Left            =   480
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   2
      Left            =   360
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   1
      Left            =   240
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   0
      Left            =   120
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.ListBox lstServers 
      Appearance      =   0  'Flat
      BackColor       =   &H0044342E&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H009AADC2&
      Height          =   2730
      ItemData        =   "frmServerList.frx":0E42
      Left            =   120
      List            =   "frmServerList.frx":0E49
      TabIndex        =   0
      Top             =   120
      Width           =   3615
   End
   Begin VB.Label btnPlay 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0044342E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Play!"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H009AADC2&
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   3120
      Width           =   1695
   End
End
Attribute VB_Name = "frmServerList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnPlay_Click()
    Select Case lstServers.ListIndex

        Case 0 'Classic
            ServerDescription = "Odyssey Realms"
            CacheDirectory = App.Path + "\classic"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5756
        Case 1 'God Sandbox
            ServerDescription = "God Sandbox"
            CacheDirectory = App.Path + "\sandbox"
            ServerIP = "libertyarchives.info"
            ServerPort = 5752
        Case 2 '127.0.0.1
            ServerDescription = "Local Host"
            CacheDirectory = App.Path + "\localhost"
            ServerIP = "127.0.0.1"
            ServerPort = 5756
    End Select
    
    On Error Resume Next
    MkDir CacheDirectory
    CheckCache
    sckPing(0).Close
    sckPing(1).Close
    sckPing(2).Close
    On Error GoTo 0
    
    Unload Me
    Load frmMenu
    frmMenu.Show
End Sub

Private Sub Form_Load()

    'Override Code 'Skip server list for now
    'ServerDescription = "Classic"
    'CacheDirectory = "classic"
    'ServerIP = "208.79.77.39"
    'ServerPort = 5756
    'Unload Me
    'InitializeGame
    'End Override Code
    
    lstServers.Clear
    
    lstServers.AddItem "Classic"
    lstServers.AddItem "God Sandbox"
    If Exists("Odyssey.vbp") Then lstServers.AddItem "Local Host (Source Testing)"
         
    'Classic
    sckPing(0).RemoteHost = "odysseyclassic.info"
    sckPing(0).RemotePort = 5756
    sckPing(0).connect
        
    'God Sandbox
    sckPing(1).RemoteHost = "libertyarchives.info"
    sckPing(1).RemotePort = 5752
    sckPing(1).connect
    
    lstServers.ListIndex = 0
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If UnloadMode = 0 Then blnEnd = True
End Sub

Private Sub lstServers_DblClick()
    btnPlay_Click
End Sub

Private Sub sckPing_Connect(Index As Integer)
    Dim St As String, send As String
    St = Chr$(35)
    sckPing(Index).SendData DoubleChar$(Len(St)) + Chr$(CheckSum(St) * 20 Mod 194) + Chr$(0) + St
End Sub

Private Sub sckPing_DataArrival(Index As Integer, ByVal bytesTotal As Long)
    Dim Receive As String
    sckPing(Index).GetData Receive, vbString, bytesTotal
    lstServers.List(Index) = lstServers.List(Index) + " (" + Receive + ")"
    sckPing(Index).Close
End Sub

