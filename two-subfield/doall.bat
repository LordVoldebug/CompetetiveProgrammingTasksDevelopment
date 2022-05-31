rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "files\gen.exe 10 2 12" "tests\02" 2
call scripts\gen-input-via-stdout.bat "files\gen.exe 20 7 18" "tests\03" 3
call scripts\gen-input-via-stdout.bat "files\gen.exe 7 20 120" "tests\04" 4
call scripts\gen-input-via-stdout.bat "files\gen.exe 72 30 1290" "tests\05" 5
call scripts\gen-input-via-stdout.bat "files\gen.exe 52 67 2290" "tests\06" 6
call scripts\gen-input-via-stdout.bat "files\gen.exe 100 100 2000" "tests\07" 7
call scripts\gen-input-via-stdout.bat "files\gen.exe 100 200 9000" "tests\08" 8
call scripts\gen-input-via-stdout.bat "files\gen.exe 100 150 15000" "tests\09" 9
call scripts\gen-input-via-stdout.bat "files\gen.exe 200 550 15000" "tests\10" 10
call scripts\gen-input-via-stdout.bat "files\gen.exe 500 550 173000" "tests\11" 11
call scripts\gen-input-via-stdout.bat "files\gen.exe 1000 1000 5000" "tests\12" 12
call scripts\gen-input-via-stdout.bat "files\gen.exe 1000 1000 500000" "tests\13" 13
call scripts\gen-input-via-stdout.bat "files\gen.exe 1000 1000 900000" "tests\14" 14
call scripts\gen-input-via-stdout.bat "files\gen.exe 1000 1000 130000" "tests\15" 15
call scripts\gen-input-via-stdout.bat "files\gen.exe 2000 500 3232" "tests\16" 16
call scripts\gen-input-via-stdout.bat "files\gen.exe 250 4000 644644" "tests\17" 17
call scripts\gen-input-via-stdout.bat "files\gen.exe 5000 200 558939" "tests\18" 18
call scripts\gen-input-via-stdout.bat "files\gen.exe 10000 100 899433" "tests\19" 19
call scripts\gen-input-via-stdout.bat "files\gen.exe 2000 500 200" "tests\20" 20
call scripts\gen-input-via-stdout.bat "files\gen.exe 250 4000 20000" "tests\21" 21
call scripts\gen-input-via-stdout.bat "files\gen.exe 5000 200 200000" "tests\22" 22
call scripts\gen-input-via-stdout.bat "files\gen.exe 10000 100 344545" "tests\23" 23
call scripts\gen-input-via-stdout.bat "files\gen.exe 100000 10 200" "tests\24" 24
call scripts\gen-input-via-stdout.bat "files\gen.exe 100000 10 200000" "tests\25" 25
call scripts\gen-input-via-stdout.bat "files\gen.exe 100000 10 800000" "tests\26" 26
call scripts\gen-input-via-stdout.bat "files\gen.exe 10 100000 732000" "tests\27" 27
call scripts\gen-answer.bat tests\01 tests\01.a "tests" ""
call scripts\gen-answer.bat tests\02 tests\02.a "tests" ""
call scripts\gen-answer.bat tests\03 tests\03.a "tests" ""
call scripts\gen-answer.bat tests\04 tests\04.a "tests" ""
call scripts\gen-answer.bat tests\05 tests\05.a "tests" ""
call scripts\gen-answer.bat tests\06 tests\06.a "tests" ""
call scripts\gen-answer.bat tests\07 tests\07.a "tests" ""
call scripts\gen-answer.bat tests\08 tests\08.a "tests" ""
call scripts\gen-answer.bat tests\09 tests\09.a "tests" ""
call scripts\gen-answer.bat tests\10 tests\10.a "tests" ""
call scripts\gen-answer.bat tests\11 tests\11.a "tests" ""
call scripts\gen-answer.bat tests\12 tests\12.a "tests" ""
call scripts\gen-answer.bat tests\13 tests\13.a "tests" ""
call scripts\gen-answer.bat tests\14 tests\14.a "tests" ""
call scripts\gen-answer.bat tests\15 tests\15.a "tests" ""
call scripts\gen-answer.bat tests\16 tests\16.a "tests" ""
call scripts\gen-answer.bat tests\17 tests\17.a "tests" ""
call scripts\gen-answer.bat tests\18 tests\18.a "tests" ""
call scripts\gen-answer.bat tests\19 tests\19.a "tests" ""
call scripts\gen-answer.bat tests\20 tests\20.a "tests" ""
call scripts\gen-answer.bat tests\21 tests\21.a "tests" ""
call scripts\gen-answer.bat tests\22 tests\22.a "tests" ""
call scripts\gen-answer.bat tests\23 tests\23.a "tests" ""
call scripts\gen-answer.bat tests\24 tests\24.a "tests" ""
call scripts\gen-answer.bat tests\25 tests\25.a "tests" ""
call scripts\gen-answer.bat tests\26 tests\26.a "tests" ""
call scripts\gen-answer.bat tests\27 tests\27.a "tests" ""

