Option Explicit

Sub Classify()
    Dim str As String
    Dim i As Long
    Dim provinceEnglishName As String
    
    Dim test As String
    For i = 3 To 140930
        provinceEnglishName = Cells(i, 5)
        str = "C:\Users\zyb71\Desktop\data\" & provinceEnglishName & ".csv"
        Open str For Append As #1
            Write #1, Cells(i, 2), Cells(i, 5), Cells(i, 6), Cells(i, 8), Cells(i, 10), Cells(i, 11), Cells(i, 19)
            '洲，中文国家/省份，英文，确诊，治愈，死亡，时间
        Close #1
    Next
    
End Sub

Sub China()
    Dim strFile As String
    Dim i As Long
    Dim country As String
    
    strFile = "C:\Users\zyb71\Desktop\data\China.csv"
    country = "中国"
    
    Open strFile For Append As #1
    
    For i = 3 To 140930
        If (Cells(i, 3) = "中国" And Cells(i, 5) <> "中国") Then
            Write #1, Cells(i, 5), Cells(i, 8), Cells(i, 10), Cells(i, 11), Cells(i, 12), Cells(i, 13), Cells(i, 16), Cells(i, 18), Cells(i, 19)
            '         省份         确诊         治愈          死亡          时间          城市          确诊          治愈          死亡
        End If
    Next
    Close #1
    
End Sub


