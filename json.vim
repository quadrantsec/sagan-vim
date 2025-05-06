"https://www.ditig.com/publications/256-colors-cheat-sheet
"https://michurin.github.io/xterm256-color-picker/

hi SaganLog ctermfg=32 cterm=bold
hi SaganLogKeywords ctermfg=32
hi SaganKeyword ctermfg=214
hi SaganDisabled ctermfg=161
hi SaganDescription ctermfg=117
hi SaganBoolean ctermfg=9
hi SaganDisableLine ctermfg=242
hi SaganTopLevelJson ctermfg=196


hi jsonNumber ctermfg=240
hi jsonKeyword ctermfg=37
hi jsonString ctermfg=247
hi jsonCustom ctermfg=99 cterm=bold
hi jsonCustom2 ctermfg=105

syn match saganDisabledTrue "^.*disabled\":\s*true}.*$"

syntax match jsonCustom "\"custom\""
syntax match jsonCustom2 "\"cust_id\""
syntax match jsonCustom2 "\"action\""

syntax match saganTopLevelJson "^\"name\""
syntax match saganTopLevelJson "^\"rules\""
syntax match saganTopLevelJson "^\"on_alert\""
syntax match saganTopLevelJson "^\"cust_id\""
syntax match saganTopLevelJson "^\"map\""

syntax match saganLog "\"filters\""
"syntax match saganLog "\"core\""
syntax match saganLog "\"value\""
syntax match saganLog "\"rate\""
syntax match saganLog "\"correlation\""
syntax match saganLog "\"threat\""

syntax match saganLogFilters "\"equals\""
syntax match saganLogFilters "\"contains\""
syntax match saganLogFilters "\"starts_with\""
syntax match saganLogFilters "\"ends_with\""
syntax match saganLogFilters "\"matches\""
syntax match saganLogFilters "\"!equals\""
syntax match saganLogFilters "\"!contains\""
syntax match saganLogFilters "\"!starts_with\""
syntax match saganLogFilters "\"!ends_with\""
syntax match saganLogFilters "\"!matches\""
"syntax match saganLogFilters "\"map\""
syntax match saganLogFilters "\"country_code\""
syntax match saganLogFilters "\"ip\""

syntax match saganKeyword "\"field\""
syntax match saganKeyword "\"fields\""
syntax match saganKeyword "\"count\""
syntax match saganKeyword "\"seconds\""
syntax match saganKeyword "\"values\""
syntax match saganKeyword "\"patterns\""
syntax match saganKeyword "\"operation\""
"syntax match saganKeyword "\"ignore_case\""

"syntax match saganDisabled "\"disabled\""

syn region saganDescription start="\"\[" end="\""

"syn match saganDisabledBoolean /\(true\|false\)/
syn match saganDisabledBooleanTrue "true"
syn match saganDisabledBooleanFalse "false"


highlight link saganLog SaganLog
highlight link saganTopLevelJson SaganTopLevelJson
highlight link saganLogFilters SaganLogKeywords
"the ! overwrides the default colors
"highlight! link saganKeyword Comment
"hi! link saganDisabled SaganKeyword
hi link saganDescription SaganDescription
hi link saganDisabledBooleanTrue SaganBoolean
hi link saganDisabledBooleanFalse jsonString
hi link saganDisabledTrue SaganDisableLine
hi link saganKeyword SaganKeyword
