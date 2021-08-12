<%
Dim Datatype,Method,Path
Datatype = Request.QueryString("Datatype")
Method = Request.QueryString("Method")
Path = Request.QueryString("Page")
Set fs = Server.CreateObject("Scripting.FileSystemObject")
Dim Fds,Pth,Pths,Pthss,LNum,UNum,LNums,UNums,LNumss,UNumss,Counter
Fds = "/analyze/"
Pth = Split(Path,"//")
LNum = LBound(Pth)
UNum = UBound(Pth)
Do While LNum <= UNum
Pths = Split(Pth(LNum),":")
LNums = LBound(Pths)
UNums = UBound(Pths)
Do While LNums <= UNums
If Pths(LNums)="" Then
Else
Pthss = Split(Pths(LNums),"/")
LNumss = LBound(Pthss)
UNumss = UBound(Pthss)
Do While LNumss <= UNumss
If Pthss(LNumss)="" Then
Else
Fds = Fds&Pthss(LNumss)&"/"
If fs.FolderExists(Server.MapPath(Fds)) Then
Else
fs.CreateFolder(Server.MapPath(Fds))
End If
End If
LNumss = LNumss + 1
Loop
End If
LNums = LNums + 1
Loop
LNum = LNum + 1
Loop
Set St = Server.CreateObject("ADODB.Stream")
Set Stm = Server.CreateObject("ADODB.Stream")
Set Stms = Server.CreateObject("ADODB.Stream")
Select Case Method
Case "readonly"
With Stm
    .Type = 2
    .Mode = 3
    .Charset = "utf-8"
    .Open
    .LoadFromFile Server.MapPath(Fds&"counter.txt")
    Counter = .ReadText
End With
Case "reset"
If fs.FileExists(Server.MapPath(Fds&"counter.txt")) Then
With Stm
    .Type = 2
    .Mode = 3
    .Charset = "utf-8"
    .Open
    Counter = 0
    .WriteText Counter
    .Position = 3
End With
With Stms
    .Type = 1
    .Mode = 3
    .Open
End With
Stm.CopyTo Stms
With Stms
    .SaveToFile Server.MapPath(Fds&"counter.txt"),2
    .Close
End With
With Stm
    .Flush
    .Close
End With
Else
With Stm
    .Type = 2
    .Mode = 3
    .Charset = "utf-8"
    .Open
    Counter = 0
    .WriteText Counter
    .Position = 3
End With
With Stms
    .Type = 1
    .Mode = 3
    .Open
End With
Stm.CopyTo Stms
With Stms
    .SaveToFile Server.MapPath(Fds&"counter.txt"),2
    .Close
End With
With Stm
    .Flush
    .Close
End With
End If
Case Else
If fs.FileExists(Server.MapPath(Fds&"counter.txt")) Then
With St
    .Type = 2
    .Mode = 3
    .CharSet = "utf-8"
    .Open
    .LoadFromFile Server.MapPath(Fds&"counter.txt")
End With
With Stm
    .Type = 2
    .Mode = 3
    .Charset = "utf-8"
    .Open
     Counter = St.ReadText+1
    .WriteText Counter
    .Position = 3
End With
With Stms
    .Type = 1
    .Mode = 3
    .Open
End With
Stm.CopyTo Stms
With Stms
    .SaveToFile Server.MapPath(Fds&"counter.txt"),2
    .Close
End With
With Stm
    .Flush
    .Close
End With
With St
    .Close
End With
Else
With Stm
    .Type = 2
    .Mode = 3
    .Charset = "utf-8"
    .Open
     Counter = 0
    .WriteText Counter
    .Position = 3
End With
With Stms
    .Type = 1
    .Mode = 3
    .Open
End With
Stm.CopyTo Stms
With Stms
    .SaveToFile Server.MapPath(Fds&"counter.txt"),2
    .Close
End With
With Stm
    .Flush
    .Close
End With
End If
End Select
Select Case Datatype
Case "js"
Response.ContentType="text/javascript"
Response.Write "document.write("&Counter&")"&vbCrLf
Case "txt"
Response.ContentType="text/plain"
Response.Write Counter
Case "json"
Response.ContentType="application/x-javascript"
Response.Write "{"&vbCrLf
Response.Write "    ""name"":""visitors"","&vbCrLf
Response.Write "    ""url"":"""&Path&""","&vbCrLf
Response.Write "    ""counter"":"&Counter&vbCrLf
Response.Write "}"&vbCrLf
Case "xml"
Response.ContentType="application/xml"
Response.Write "<visitors>"&vbCrLf
Response.Write "    <url>"&Path&"</url>"&vbCrLf
Response.Write "    <counter>"&Counter&"</counter>"&vbCrLf
Response.Write "</visitors>"&vbCrLf
Case Else
Response.ContentType="text/plain"
Response.Write Counter
End Select
Set Stms = Nothing
Set Stm = Nothing
Set St = Nothing
Set fs = Nothing
%>