<%
Dim Datatype,Method,Path,Badge
Datatype = Request.QueryString("Datatype")
Method = Request.QueryString("Method")
Path = Request.QueryString("Page")
Badge = Request.QueryString("Badge")
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
Case "svg"
If Badge="" Then
Badge = "visitors-$counter$-red"
End If
Dim CrNum(),Diff(),Lgths()
Bdg = Split(Badge,"-")
Set re = New RegExp
re.Pattern = "\$counter\$"
re.Global = True
re.IgnoreCase = True
For i=0 to UBound(Bdg)
If re.Test(Bdg(i)) Then
Bdg(i) = Replace(Bdg(i),"$counter$",Counter)
End If
Next
CrsDec = Array("f","i","j","l","r","t","I","J")
CrsInc = Array("w","m","O","Q","W","M")
For i=0 to UBound(Bdg)
ReDim Preserve Lgths(i)
ReDim Preserve CrNum(i)
Lgths(i) = Len(Bdg(i))
For j=0 to UBound(CrsDec)
ReDim Preserve Diff(j)
Diff(j) = Len(Bdg(i))-Len(Replace(Bdg(i),CrsDec(j),""))
CrNum(i) = CrNum(i)+Diff(j)
Next
Lgths(i) = Lgths(i)-CrNum(i)*0.5
CrNum(i) = 0
For j=0 to UBound(CrsInc)
ReDim Preserve Diff(j)
Diff(j) = Len(Bdg(i))-Len(Replace(Bdg(i),CrsInc(j),""))
CrNum(i) = CrNum(i)+Diff(j)
Next
Lgths(i) = Lgths(i)+CrNum(i)*0.5
Next
BdgLen1 = Lgths(0)
BdgLen2 = Lgths(1)
BdgLen3 = Lgths(2)
Num0 = 13+6*BdgLen1
Num1 = 13+6*BdgLen2
Num2 = Num0+Num1
Num3 = 70+30*BdgLen1
Num4 = 30+60*BdgLen1
Num5 = (33*(BdgLen2-BdgLen1)+80)+Num3+Num4
Num6 = 10+60*BdgLen2
Select Case Bdg(2)
Case "brightgreen"
Color = "#4c1"
Case "green"
Color = "#97ca00"
Case "yellowgreen"
Color = "#a4a61d"
Case "yellow"
Color = "#dfb317"
Case "orange"
Color = "#fe7d37"
Case "red"
Color = "#e05d44"
Case "blue"
Color = "#007ec6"
Case "lightgrey"
Color = "#9f9f9f"
Case "success"
Color = "#4c1"
Case "important"
Color = "#fe7d37"
Case "critical"
Color = "#e05d44"
Case "informational"
Color = "#007ec6"
Case "inactive"
Color = "#9f9f9f"
Case Else
Color = Bdg(2)
End Select
Response.AddHeader "Cache-Control","no-cache,max-age=0"
Response.AddHeader "Expires","Wed, 21 Oct 2015 07:28:00 GMT"
Response.ContentType="image/svg+xml"
Response.Write "<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='"&Num2&"' height='20' role='img' aria-label='"&Bdg(0)&": "&Bdg(1)&"'>"&vbCrLf
Response.Write "<title>"&Bdg(0)&": "&Bdg(1)&"</title>"&vbCrLf
Response.Write "<linearGradient id='s' x2='0' y2='100%'>"&vbCrLf
Response.Write "<stop offset='0' stop-color='#bbb' stop-opacity='.1'/>"&vbCrLf
Response.Write "<stop offset='1' stop-opacity='.1'/>"&vbCrLf
Response.Write "</linearGradient>"&vbCrLf
Response.Write "<clipPath id='r'>"&vbCrLf
Response.Write "<rect width='"&Num2&"' height='20' rx='3' fill='#fff'/>"&vbCrLf
Response.Write "</clipPath>"&vbCrLf
Response.Write "<g clip-path='url(#r)'>"&vbCrLf
Response.Write "<rect width='"&Num0&"' height='20' fill='#555'/>"&vbCrLf
Response.Write "<rect x='"&Num0&"' width='"&Num1&"' height='20' fill='"&Color&"'/>"&vbCrLf
Response.Write "<rect width='"&Num2&"' height='20' fill='url(#s)'/>"&vbCrLf
Response.Write "</g>"&vbCrLf
Response.Write "<g fill='#fff' text-anchor='middle' font-family='Verdana,Geneva,DejaVu Sans,sans-serif' text-rendering='geometricPrecision' font-size='110'>"&vbCrLf
Response.Write "<text aria-hidden='true' x='"&Num3&"' y='150' fill='#010101' fill-opacity='.3' transform='scale(.1)' textLength='"&Num4&"'>"&Bdg(0)&"</text>"&vbCrLf
Response.Write "<text x='"&Num3&"' y='140' transform='scale(.1)' fill='#fff' textLength='"&Num4&"'>"&Bdg(0)&"</text>"&vbCrLf
Response.Write "<text aria-hidden='true' x='"&Num5&"' y='150' fill='#010101' fill-opacity='.3' transform='scale(.1)' textLength='"&Num6&"'>"&Bdg(1)&"</text>"&vbCrLf
Response.Write "<text x='"&Num5&"' y='140' transform='scale(.1)' fill='#fff' textLength='"&Num6&"'>"&Bdg(1)&"</text>"&vbCrLf
Response.Write "</g>"&vbCrLf
Response.Write "</svg>"&vbCrLf
Case Else
Response.ContentType="text/plain"
Response.Write Counter
End Select
Set Stms = Nothing
Set Stm = Nothing
Set St = Nothing
Set fs = Nothing
%>
