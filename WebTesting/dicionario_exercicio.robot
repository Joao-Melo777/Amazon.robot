*** Variables ***

&{Meses_do_ano}  janeiro=31
...                    fevereiro=28
...                    março=31
...                    abril=30
...                    maio=31
...                    junho=30
...                    julho=31
...                    agosto=31
...                    setembro=30
...                    outubro=31
...                    novembro=30
...                    dezembro=31

*** Test Cases ***

Caso de teste2

    Log to console  ${Meses_do_ano.janeiro} dias
    Log to console  ${Meses_do_ano.fevereiro} dias
    Log to console  ${Meses_do_ano.março} dias
    Log to console  ${Meses_do_ano.abril} dias
    Log to console  ${Meses_do_ano.maio} dias
    Log to console  ${Meses_do_ano.junho} dias
    Log to console  ${Meses_do_ano.julho} dias
    Log to console  ${Meses_do_ano.agosto} dias
    Log to console  ${Meses_do_ano.setembro} dias
    Log to console  ${Meses_do_ano.outubro} dias
    Log to console  ${Meses_do_ano.novembro} dias
    Log to console  ${Meses_do_ano.dezembro} dias


