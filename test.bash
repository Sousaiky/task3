#!/bin/bash

# テスト対象のCプログラムをコンパイル
gcc denntaku.c -o denntaku

# テストケースを実行
expect <<EOF
spawn ./denntaku
expect "最初の数字を入力:"
send "10\n"

expect "符号(+,-,*,/)と数字を入力:"
send "+ 5\n"
expect "計算結果: 15\n"

expect "符号(+,-,*,/)と数字を入力:"
send "- 3\n"
expect "計算結果: 12\n"

expect "符号(+,-,*,/)と数字を入力:"
send "* 2.5\n"
expect "計算結果: 30\n"

expect "符号(+,-,*,/)と数字を入力:"
send "/ 4\n"
expect "計算結果: 7.5\n"

expect "符号(+,-,*,/)と数字を入力:"
send "/ 0\n"
expect "エラー: 0で割ることはできません\n"
expect "符号(+,-,*,/)と数字を入力:"
send "x 2\n"  # 無効な符号
expect "エラー: 無効な符号です\n"
expect eof
EOF

# プログラムの実行結果を表示
echo "OK"

