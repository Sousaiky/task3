#!/bin/bash

# テスト対象のCプログラムをコンパイル
gcc denntaku.c -o denntaku

# テストケースを実行
echo -e "10\n+ 5\n" | ./denntaku | grep "計算結果: 15" || echo "テスト1失敗"
echo -e "+ 3\n" | ./denntaku | grep "計算結果:" || echo "テスト2失敗"
echo -e "- 2\n" | ./denntaku | grep "計算結果:" || echo "テスト3失敗"
echo -e "* 2.5\n" | ./denntaku | grep "計算結果:" || echo "テスト4失敗"
echo -e "/ 2\n" | ./denntaku | grep "計算結果:" || echo "テスト5失敗"
echo -e "/ 0\n" | ./denntaku | grep "エラー: 0で割ることはできません" || echo "テスト6失敗"
echo -e "x 2\n" | ./denntaku | grep "エラー: 無効な符号です" || echo "テスト7失敗"

# プログラムの実行結果を表示
echo "テスト完了"
