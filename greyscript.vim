if exists("b:current_syntax")
  finish
endif
let s:cpo_save = &cpo
set cpo&vim

" All Keywords including or and not else
syn keyword greyKeywords if else return then end new in
syn keyword greyLogic or and not
syn keyword greyRepeat while for break continue
syn keyword greyFunction function
syn keyword greyBoolean true false null
" syn keyword greyNull null

" Constants
syn match greyNumber '\<\d\+'
syn match greyNumber '\<\d\+\.\d*'
syn region greyString start=+"+ skip=+\""+ end=+"+

" Mathematic Operators
syn match greyOperator "\*"
syn match greyOperator "/"
syn match greyOperator '\v\+'
syn match greyOperator "-"
syn match greyOperator ":"
syn match greyOperator ">"
syn match greyOperator "<"
syn match greyOperator "\v\^"
syn match greyOperator "="
syn match greyOperator "!="

" Objects
syn match greyObject '\<[A-Z][A-Za-z0-9]*'
syn match greyObject '\s[A-Z][A-Za-z0-9]*'

syn match greyMethod '[A-Za-z0-9]*\((\)\@='
syn match greyObjProp '\(\.\)\@<=[A-Za-z0-9]*\([A-Za-z0-9]*(\)\@!'

" Comments start with //
syn keyword greyTodo TODO contained
syn match greyComment +//.*+ contains=greyTodo

" Containers
syn region greyBrackets start='(' end=')' transparent fold
syn region greyMap start='{' end='}' transparent fold
syn region greyList start=+\[+ end=+\]+ transparent fold

" String functions
syn keyword greyStringFunction remove hasIndex indexOf lastIndexOf slice split 
syn keyword greyStringFunction replace trim indexes code len lower upper val
syn keyword greyStringFunction values to_int

syn cluster greyFunctions add=greyStringFunction

" Numeric functions
syn keyword greyNumberFunction abs acos asin atan tan cos sin char floor range
syn keyword greyNumberFunction round rnd sign sqrt str ceil pi

syn cluster greyFunctions add=greyNumberFunction

" List functions
syn keyword greyListFunction slice hasIndex indexOf remove join push pop pull
syn keyword greyListFunction shuffle reverse sort indexes len sum values

syn cluster greyFunctions add=greyListFunction

" Map functions
syn keyword greyMapFunction hasIndex indexOf push remove indexes len pop shuffle
syn keyword greyMapFunction sum values

syn cluster greyFunctions add=greyMapFunction

" System functions
syn keyword greySystemFunction print globals locals time typeof md5 get_router
syn keyword greySystemFunction get_shell nslookup whois is_valid_ip is_lan_ip
syn keyword greySystemFunction command_info current_date parent_path home_dir
syn keyword greySystemFunction program_path active_user user_mail_address
syn keyword greySystemFunction user_bank_number format_columns user_input
syn keyword greySystemFunction include_lib exit wait
syn keyword greySystemFunction import_code

syn cluster greyFunctions add=greySystemFunction

" Router functions
syn keyword greyRouterFunction public_ip local_ip device_ports computers_lan_ip
syn keyword greyRouterFunction ping_port port_info used_ports bssid_name essid_name

syn cluster greyFunctions add=greyRouterFunction

" Computer functions
syn keyword greyComputerFunction change_password create_user create_group
syn keyword greyComputerFunction create_folder close_program connect_wifi
syn keyword greyComputerFunction connect_ethernet network_gateway active_net_card
syn keyword greyComputerFunction delete_user delete_group groups network_devices
syn keyword greyComputerFunction get_ports is_network_active lan_ip show_procs
syn keyword greyComputerFunction current_path touch wifi_networks File

syn cluster greyFunctions add=greyComputerFunction

" File functions
syn keyword greyFileFunction copy move rename chmod set_content set_group group
syn keyword greyFileFunction path content is_binary is_folder has_permission
syn keyword greyFileFunction set_owner owner permissions parent name size delete
syn keyword greyFileFunction get_folders get_files

syn cluster greyFunctions add=greyFileFunction

" Port functions
syn keyword greyPortFunction get_lan_ip is_closed port_number

syn cluster greyFunctions add=greyPortFunction

" Shell functions
syn keyword greyShellFunction host_computer start_terminal connect_service scp
syn keyword greyShellFunction launch build

syn cluster greyFunctions add=greyShellFunction

" FtpShell functions
syn keyword greyFtpShellFunction start_terminal put host_computer

syn cluster greyFunctions add=greyFtpShellFunction

" Crypto functions
syn keyword greyCryptoFunction aircrack airmon decipher smtp_user_list

syn cluster greyFunctions add=greyCryptoFunction

" Metalib functions
syn keyword greyMetalibFunction overflow lib_name version

syn cluster greyFunctions add=greyMetalibFunction

" Metaexploit functions
syn keyword greyMetaexploitFunction load net_use scan scan_address sniffer

syn cluster greyFunctions add=greyMetaexploitFunction

" NetSession functions
syn keyword greyNetSessionFunction dump_lib

syn cluster greyFunctions add=greyNetSessionFunction


" Highlights

highlight greyRepeat guifg=#C678DD
highlight Statement guifg=#C678DD
highlight greyLogic guifg=#C678DD
highlight InternalFunction guifg=#56B6C2
highlight greyOperator guifg=#56B6C2
highlight greyObject guifg=#E5C07B
highlight greyObjProp guifg=#E06C75
highlight greyMethod guifg=#61AFEF


" Function Highlights
hi def link greySystemFunction Internalfunction
hi def link greyRouterFunction Internalfunction
hi def link greyComputerFunction Internalfunction
hi def link greyFileFunction Internalfunction
hi def link greyPortFunction Internalfunction
hi def link greyShellFunction Internalfunction
hi def link greyFtpShellFunction Internalfunction
hi def link greyCryptoFunction Internalfunction
hi def link greyMetalibFunction Internalfunction
hi def link greyMetaexploitFunction Internalfunction
hi def link greyNetSessionFunction Internalfunction

hi def link greyStringFunction Function
hi def link greyNumberFunction Function
hi def link greyListFunction Function
hi def link greyMapFunction Function

" Constant Highlights
hi def link greyString String
hi def link greyNumber Number
hi def link greyBoolean Boolean
" hi def link greyNull Boolean

" Keyword and Operator Highlights
hi def link greyOperator Operator
hi def link greyLogic Operator
hi def link greyKeywords Statement
" hi def link greyRepeat Repeat
hi def link greyThen Statement
hi def link greyEnd Statement
hi def link greyFunction Statement

" Comment Highlights
hi def link greyTodo Todo
hi def link greyComment Comment


let b:current_syntax = "greyscript"
let &cpo = s:cpo_save
unlet s:cpo_save
