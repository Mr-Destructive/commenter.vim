function! Comment()
    let ext = tolower(expand('%:e'))
    if ext == 'py' 
        let cmt1 = "'''"
        let cmt2 = "'''"   
        let cmt = "#"
    elseif ext == 'cpp' || ext =='java' || ext == 'css' || ext == 'js' || ext == 'c' || ext =='cs' || ext == 'rs' || ext == 'go'
        let cmt1 = '/*'
        let cmt2 = '*/'
        let cmt = "//"
    elseif ext == 'sh'
        let cmt1 = ": '"
        let cmt2 = "'"
        let cmt = "#"
    elseif ext == 'html'
        let cmt1 = "<!--"
        let cmt2 = "-->"
        let cmt = cmt1
    elseif ext == 'hs'
        let cmt1 = "{-"
        let cmt2 = "-}"
    elseif ext == "rb"
        let cmt1 = "=begin"
        let cmt2 = "=end"
    elseif ext == 'lua'
        let cmt1 = "--[["
        let cmt2 = "--]]"
        let cmt = "--"
    endif
    let lines = line("'>") - line("'<") + 1
    if lines == 1
        exe line("'<")."normal 0i".cmt
    else
        exe line("'<")."normal O". cmt1 | exe line("'>")."normal o". cmt2 
    endif
endfunction

function! UnComment()
    let lines = line("'>") - line("'<") + 1
    if lines > 1
        exe line("'<")."normal dd" | exe line("'>")."normal dd"   
    else
        let ext = tolower(expand('%:e'))
        if ext == 'cpp' || ext =='java' || ext == 'css' || ext == 'js' || ext == 'c' || ext =='cs' || ext == 'rs' || ext == 'go'
            let cmt = "//"
        elseif ext == 'sh'
            let cmt = "#"
        elseif ext == "hs" || ext == "lua" 
            let cmt = "--"
        elseif ext == "rb" || ext == "sh" || ext == "py"
            let cmt = "#"
        endif
        let chars = strlen(cmt)
        exe line("'<")."normal 0".chars."x" 
    endif 
endfunction
