"let g:args = '-fno-exceptions -Winit-self'
let g:flags = ''
let g:args = ''
function! s:Devisive()
        let file = &ft
        if ( file == "c" )
                execute '!gcc' g:flags '-g -o output "%" -lm && ./output' g:args
        if ( file == "cpp" )
                execute '!g++' g:flags '-g -o output "%" -lm && ./output' g:args
        elseif ( file == "python" )
                execute '!python "%"' g:args
        else
                echo 'Unsupported filetype'
        endif
        endfunction

        command! -bar Compile call s:Devisive()

