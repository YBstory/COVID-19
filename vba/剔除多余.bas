Option Explicit
{name: '北京',value: Math.round(Math.random()*1000)},

sub 输出值()
    dim h as long
    dim i as long
    dim str as string
    dim strFile as string
    h = [a1].End(xlDown).Row
    str = "C:\Users\zyb71\Desktop\data\数据.txt"

    Open strFile For Append As #1

    for i=2 to h
        If (Cells(i, 1) <> Cells(i - 1, 1)) Then
            str="{name:'"&cells(i,1)&"',value:"&cells(i,2)&"},"
            Write #1,str
        End If
    next
    Close #1
end sub