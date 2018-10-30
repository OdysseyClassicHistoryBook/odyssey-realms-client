VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmServerList 
   BackColor       =   &H0061514B&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Odyssey Realms [Server List]"
   ClientHeight    =   5055
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3840
   Icon            =   "frmServerList.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5055
   ScaleWidth      =   3840
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   11
      Left            =   1440
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   10
      Left            =   1320
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   9
      Left            =   1200
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   8
      Left            =   1080
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   7
      Left            =   960
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   6
      Left            =   840
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckPing 
      Index           =   5
      Left            =   720
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
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
      Height          =   4230
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
      Top             =   4560
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
    Select Case lstServers.ItemData(lstServers.ListIndex)
        Case 0 '127.0.0.1
            ServerDescription = "Local Host"
            CacheDirectory = GetCachePath + "\localhost"
            ServerIP = "127.0.0.1"
            ServerPort = 5750
        Case 1 'Classic
            ServerDescription = "Classic"
            CacheDirectory = GetCachePath + "\classic"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5750
        Case 2 'God Sandbox
            ServerDescription = "God Sandbox"
            CacheDirectory = GetCachePath + "\sandbox"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5751
        Case 3 'Condemned
            ServerDescription = "Condemned"
            CacheDirectory = GetCachePath + "\condemned"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5753
        Case 4 'Ethia
            ServerDescription = "Ethia"
            CacheDirectory = GetCachePath + "\ethia"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5754
        Case 5 'Tales of Destiny
            ServerDescription = "Tales of Destiny"
            CacheDirectory = GetCachePath + "\talesofdestiny"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5752
        Case 6 'Fankenstein
            ServerDescription = "Fankenstein"
            CacheDirectory = GetCachePath + "\fankenstein"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5755
        Case 7 'Relentless
            ServerDescription = "Relentless"
            CacheDirectory = GetCachePath + "\relentless"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5756
        Case 8 'REDRUM PK
            ServerDescription = "REDRUM PK"
            CacheDirectory = GetCachePath + "\redrumpk"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5757
        Case 9 'Greta
            ServerDescription = "Greta"
            CacheDirectory = GetCachePath + "\greta"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5758
        Case 10 'Odyssey Adventures
            ServerDescription = "Odyssey Adventures"
            CacheDirectory = GetCachePath + "\odysseyadventures"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5759
        Case 11 'Roshar
            ServerDescription = "Roshar"
            CacheDirectory = GetCachePath + "\roshar"
            ServerIP = "odysseyclassic.info"
            ServerPort = 5761
    End Select
    
    On Error Resume Next
    MkDir GetCachePath
    MkDir CacheDirectory
    CheckCache
    sckPing(0).Close
    sckPing(1).Close
    sckPing(2).Close
    sckPing(3).Close
    sckPing(4).Close
    sckPing(5).Close
    sckPing(6).Close
    sckPing(7).Close
    sckPing(8).Close
    sckPing(9).Close
    sckPing(10).Close
    sckPing(11).Close

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
    
       
    If Exists("Odyssey.vbp") Then
        lstServers.AddItem "---Local Host---"
        lstServers.ItemData(lstServers.ListCount - 1) = 0
    End If
    
    lstServers.AddItem "Classic"
    lstServers.ItemData(lstServers.ListCount - 1) = 1
    
    lstServers.AddItem "God Sandbox"
    lstServers.ItemData(lstServers.ListCount - 1) = 2
    
    If Exists("Player_Made_Servers.txt") Then 'Player made servers
            
        lstServers.AddItem "Condemned"
        lstServers.ItemData(lstServers.ListCount - 1) = 3
                
        lstServers.AddItem "Ethia"
        lstServers.ItemData(lstServers.ListCount - 1) = 4
        
    End If
    
    If Exists("delisted_servers.txt") Then 'Delisted Servers
            
        lstServers.AddItem "Tales of Destiny"
        lstServers.ItemData(lstServers.ListCount - 1) = 5
        
        lstServers.AddItem "Fankenstein"
        lstServers.ItemData(lstServers.ListCount - 1) = 6
        
        lstServers.AddItem "Relentless"
        lstServers.ItemData(lstServers.ListCount - 1) = 7
        
        lstServers.AddItem "REDRUM PK"
        lstServers.ItemData(lstServers.ListCount - 1) = 8
        
        lstServers.AddItem "Greta"
        lstServers.ItemData(lstServers.ListCount - 1) = 9
                
        lstServers.AddItem "Odyssey Adventures"
        lstServers.ItemData(lstServers.ListCount - 1) = 10
                
        lstServers.AddItem "Roshar"
        lstServers.ItemData(lstServers.ListCount - 1) = 11
        
    End If
       
        
    'LocalHost
    sckPing(0).RemoteHost = "127.0.0.1"
    sckPing(0).RemotePort = 5750
    sckPing(0).connect
    
    'Classic
    sckPing(1).RemoteHost = "odysseyclassic.info"
    sckPing(1).RemotePort = 5750
    sckPing(1).connect
    
    'God Sandbox
    sckPing(2).RemoteHost = "odysseyclassic.info"
    sckPing(2).RemotePort = 5751
    sckPing(2).connect
        
    'Condemned
    sckPing(3).RemoteHost = "odysseyclassic.info"
    sckPing(3).RemotePort = 5753
    sckPing(3).connect
    
    'Ethia
    sckPing(4).RemoteHost = "odysseyclassic.info"
    sckPing(4).RemotePort = 5754
    sckPing(4).connect
    
    'Tales of Destiny
    sckPing(5).RemoteHost = "odysseyclassic.info"
    sckPing(5).RemotePort = 5752
    sckPing(5).connect

    'Fankenstein
    sckPing(6).RemoteHost = "odysseyclassic.info"
    sckPing(6).RemotePort = 5755
    sckPing(6).connect

    'Relentless
    sckPing(7).RemoteHost = "odysseyclassic.info"
    sckPing(7).RemotePort = 5756
    sckPing(7).connect
    
    'REDRUM PK
    sckPing(8).RemoteHost = "odysseyclassic.info"
    sckPing(8).RemotePort = 5757
    sckPing(8).connect
    
    'Greta
    sckPing(9).RemoteHost = "odysseyclassic.info"
    sckPing(9).RemotePort = 5758
    sckPing(9).connect
    
    'Odyssey Adventures
    sckPing(10).RemoteHost = "odysseyclassic.info"
    sckPing(10).RemotePort = 5759
    sckPing(10).connect
    
    'Roshar
    sckPing(11).RemoteHost = "odysseyclassic.info"
    sckPing(11).RemotePort = 5761
    sckPing(11).connect
    
    lstServers.ListIndex = 0
    
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If UnloadMode = 0 Then blnEnd = True
End Sub

Private Sub sckPing_Connect(Index As Integer)
    Dim St As String, send As String
    St = Chr$(35)
    sckPing(Index).SendData DoubleChar$(Len(St)) + Chr$(CheckSum(St) * 20 Mod 194) + Chr$(0) + St
End Sub

Private Sub sckPing_DataArrival(Index As Integer, ByVal bytesTotal As Long)
    Dim A As Long, Receive As String
    For A = 0 To lstServers.ListCount - 1
        If lstServers.ItemData(A) = Index Then
            sckPing(A).GetData Receive, vbString, bytesTotal
            lstServers.List(A) = lstServers.List(A) + " (" + Receive + ")"
            sckPing(A).Close
            Exit Sub
        End If
    Next A
End Sub

