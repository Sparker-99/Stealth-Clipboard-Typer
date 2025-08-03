!+v:: {
    savedClip := A_Clipboard
    if (!savedClip || savedClip = "")
        return
    lines := StrSplit(savedClip, "`n", "`r")
    for i, line in lines {
        loop StrLen(line) {
            SendEvent("{Raw}" SubStr(line, A_Index, 1))
            Sleep(Random(50, 150))
            if Random(1, 100) <= 7
                Sleep(Random(1000, 4000))
        }
        if i < lines.Length
            SendEvent("{Enter}")
    }
}