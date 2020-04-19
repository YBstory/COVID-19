Option Explicit

Sub 名称替换()
    Dim i As Long
    
    
    For i = 1 To 80508
    
        If (Cells(i, 1) = "北京市") Then Cells(i, 1) = "北京"
        If (Cells(i, 1) = "天津市") Then Cells(i, 1) = "天津"
        If (Cells(i, 1) = "上海市") Then Cells(i, 1) = "上海"
        If (Cells(i, 1) = "重庆市") Then Cells(i, 1) = "重庆"
        If (Cells(i, 1) = "河北省") Then Cells(i, 1) = "河北"
        If (Cells(i, 1) = "山西省") Then Cells(i, 1) = "山西"
        If (Cells(i, 1) = "辽宁省") Then Cells(i, 1) = "辽宁"
        If (Cells(i, 1) = "吉林省") Then Cells(i, 1) = "吉林"
        If (Cells(i, 1) = "黑龙江省") Then Cells(i, 1) = "黑龙江"
        If (Cells(i, 1) = "江苏省") Then Cells(i, 1) = "江苏"
        If (Cells(i, 1) = "浙江省") Then Cells(i, 1) = "浙江"
        If (Cells(i, 1) = "安徽省") Then Cells(i, 1) = "安徽"
        If (Cells(i, 1) = "福建省") Then Cells(i, 1) = "福建"
        If (Cells(i, 1) = "江西省") Then Cells(i, 1) = "江西"
        If (Cells(i, 1) = "山东省") Then Cells(i, 1) = "山东"
        If (Cells(i, 1) = "河南省") Then Cells(i, 1) = "河南"
        If (Cells(i, 1) = "湖北省") Then Cells(i, 1) = "湖北"
        If (Cells(i, 1) = "湖南省") Then Cells(i, 1) = "湖南"
        If (Cells(i, 1) = "广东省") Then Cells(i, 1) = "广东"
        If (Cells(i, 1) = "海南省") Then Cells(i, 1) = "海南"
        If (Cells(i, 1) = "四川省") Then Cells(i, 1) = "四川"
        If (Cells(i, 1) = "贵州省") Then Cells(i, 1) = "贵州"
        If (Cells(i, 1) = "云南省") Then Cells(i, 1) = "云南"
        If (Cells(i, 1) = "陕西省") Then Cells(i, 1) = "陕西"
        If (Cells(i, 1) = "甘肃省") Then Cells(i, 1) = "甘肃"
        If (Cells(i, 1) = "青海省") Then Cells(i, 1) = "青海"
        If (Cells(i, 1) = "台湾省") Then Cells(i, 1) = "台湾"
        If (Cells(i, 1) = "内蒙古自治区") Then Cells(i, 1) = "内蒙古"
        If (Cells(i, 1) = "广西壮族自治区") Then Cells(i, 1) = "广西"
        If (Cells(i, 1) = "西藏自治区") Then Cells(i, 1) = "西藏"
        If (Cells(i, 1) = "新疆维吾尔自治区") Then Cells(i, 1) = "新疆"
        If (Cells(i, 1) = "宁夏回族自治区") Then Cells(i, 1) = "宁夏"

        
    Next
    
End Sub

Sub 剔除多余()
    Dim i As Long
    Dim str As String
    Dim h As Long

    Dim test As String
    
    h = [a1].End(xlDown).Row
    str = "C:\Users\zyb71\Desktop\data\剔除多余.csv"
    Open str For Append As #1
    
    i = 1
    Write #1, Cells(i, 1), Cells(i, 2), Cells(i, 3), Cells(i, 4), Cells(i, 5)
    
    For i = 2 To h
    
        If (Cells(i, 1) = Cells(i - 1, 1) And (Left(Cells(i, 5), 11) <> Left(Cells(i - 1, 5), 11))) Then
            Write #1, Cells(i, 1), Cells(i, 2), Cells(i, 3), Cells(i, 4), Cells(i, 5)
        End If
        
        If (Cells(i, 1) <> Cells(i - 1, 1)) Then
            Write #1, Cells(i, 1), Cells(i, 2), Cells(i, 3), Cells(i, 4), Cells(i, 5)
        End If
        
    Next
    Close #1

End Sub
