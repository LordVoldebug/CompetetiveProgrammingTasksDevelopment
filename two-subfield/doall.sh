#!/usr/bin/env bash
#   *** validation ***
scripts/run-validator-tests.sh
scripts/run-checker-tests.sh

#    *** tests ***
mkdir -p tests
echo "Generating test #2"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 10 2 12" "tests/02" 2
echo "Generating test #3"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 20 7 18" "tests/03" 3
echo "Generating test #4"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 7 20 120" "tests/04" 4
echo "Generating test #5"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 72 30 1290" "tests/05" 5
echo "Generating test #6"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 52 67 2290" "tests/06" 6
echo "Generating test #7"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 100 100 2000" "tests/07" 7
echo "Generating test #8"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 100 200 9000" "tests/08" 8
echo "Generating test #9"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 100 150 15000" "tests/09" 9
echo "Generating test #10"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 200 550 15000" "tests/10" 10
echo "Generating test #11"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 500 550 173000" "tests/11" 11
echo "Generating test #12"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 1000 1000 5000" "tests/12" 12
echo "Generating test #13"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 1000 1000 500000" "tests/13" 13
echo "Generating test #14"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 1000 1000 900000" "tests/14" 14
echo "Generating test #15"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 1000 1000 130000" "tests/15" 15
echo "Generating test #16"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 2000 500 3232" "tests/16" 16
echo "Generating test #17"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 250 4000 644644" "tests/17" 17
echo "Generating test #18"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 5000 200 558939" "tests/18" 18
echo "Generating test #19"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 10000 100 899433" "tests/19" 19
echo "Generating test #20"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 2000 500 200" "tests/20" 20
echo "Generating test #21"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 250 4000 20000" "tests/21" 21
echo "Generating test #22"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 5000 200 200000" "tests/22" 22
echo "Generating test #23"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 10000 100 344545" "tests/23" 23
echo "Generating test #24"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 100000 10 200" "tests/24" 24
echo "Generating test #25"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 100000 10 200000" "tests/25" 25
echo "Generating test #26"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 100000 10 800000" "tests/26" 26
echo "Generating test #27"
scripts/gen-input-via-stdout.sh "wine files/gen.exe 10 100000 732000" "tests/27" 27
echo ""
echo "Generating answer for test #1"
scripts/gen-answer.sh tests/01 tests/01.a "tests" ""
echo ""
echo "Generating answer for test #2"
scripts/gen-answer.sh tests/02 tests/02.a "tests" ""
echo ""
echo "Generating answer for test #3"
scripts/gen-answer.sh tests/03 tests/03.a "tests" ""
echo ""
echo "Generating answer for test #4"
scripts/gen-answer.sh tests/04 tests/04.a "tests" ""
echo ""
echo "Generating answer for test #5"
scripts/gen-answer.sh tests/05 tests/05.a "tests" ""
echo ""
echo "Generating answer for test #6"
scripts/gen-answer.sh tests/06 tests/06.a "tests" ""
echo ""
echo "Generating answer for test #7"
scripts/gen-answer.sh tests/07 tests/07.a "tests" ""
echo ""
echo "Generating answer for test #8"
scripts/gen-answer.sh tests/08 tests/08.a "tests" ""
echo ""
echo "Generating answer for test #9"
scripts/gen-answer.sh tests/09 tests/09.a "tests" ""
echo ""
echo "Generating answer for test #10"
scripts/gen-answer.sh tests/10 tests/10.a "tests" ""
echo ""
echo "Generating answer for test #11"
scripts/gen-answer.sh tests/11 tests/11.a "tests" ""
echo ""
echo "Generating answer for test #12"
scripts/gen-answer.sh tests/12 tests/12.a "tests" ""
echo ""
echo "Generating answer for test #13"
scripts/gen-answer.sh tests/13 tests/13.a "tests" ""
echo ""
echo "Generating answer for test #14"
scripts/gen-answer.sh tests/14 tests/14.a "tests" ""
echo ""
echo "Generating answer for test #15"
scripts/gen-answer.sh tests/15 tests/15.a "tests" ""
echo ""
echo "Generating answer for test #16"
scripts/gen-answer.sh tests/16 tests/16.a "tests" ""
echo ""
echo "Generating answer for test #17"
scripts/gen-answer.sh tests/17 tests/17.a "tests" ""
echo ""
echo "Generating answer for test #18"
scripts/gen-answer.sh tests/18 tests/18.a "tests" ""
echo ""
echo "Generating answer for test #19"
scripts/gen-answer.sh tests/19 tests/19.a "tests" ""
echo ""
echo "Generating answer for test #20"
scripts/gen-answer.sh tests/20 tests/20.a "tests" ""
echo ""
echo "Generating answer for test #21"
scripts/gen-answer.sh tests/21 tests/21.a "tests" ""
echo ""
echo "Generating answer for test #22"
scripts/gen-answer.sh tests/22 tests/22.a "tests" ""
echo ""
echo "Generating answer for test #23"
scripts/gen-answer.sh tests/23 tests/23.a "tests" ""
echo ""
echo "Generating answer for test #24"
scripts/gen-answer.sh tests/24 tests/24.a "tests" ""
echo ""
echo "Generating answer for test #25"
scripts/gen-answer.sh tests/25 tests/25.a "tests" ""
echo ""
echo "Generating answer for test #26"
scripts/gen-answer.sh tests/26 tests/26.a "tests" ""
echo ""
echo "Generating answer for test #27"
scripts/gen-answer.sh tests/27 tests/27.a "tests" ""
echo ""

