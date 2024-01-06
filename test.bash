#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Soshi Saiki
# SPDX-License-Identifier: BSD-3-Clause


# Pythonスクリプトのパス
python_script="denntaku"

# テストケース
test_cases=(
    "10\n+ 5\n"
    "10\nm 3\n"               # 正常な減算
    "10\n* 2.5\n"             # 正常な乗算
    "10\n/ 4\n"               # 正常な除算    
)

for test_case in "${test_cases[@]}"; do
    echo -e "テストケース:\n$test_case"

    # Pythonスクリプトを実行し、テストケースを渡す
    result=$(echo -e "$test_case" | python3 "$python_script" 2>&1)

    # 期待される出力が含まれているかを確認
    if [[ "$result" == *"計算結果"* ]]; then
        echo "出力: $result"
        echo "テストケースは成功しました"
    else
        echo "出力: $result"
        echo "テストエラーが検出されました"
        exit 1
    fi

    echo "----------------------------------------"
done

test_cases=(
    "10\n/ 0\n"               # ゼロで割るエラー
    "10\nx 2\n"               # 無効な演算子
    "invalid_input\n"         # 数字以外の入力
    "10\ninvalid_operator 2\n" # 無効な演算子と数字の組み合わせ
)

for test_case in "${test_cases[@]}"; do
    echo -e "テストケース:\n$test_case"

    # Pythonスクリプトを実行し、テストケースを渡す
    result=$(echo -e "$test_case" | python3 "$python_script" 2>&1)

    # 期待される出力が含まれているかを確認
    if [[ "$result" == *"エラー"* ]]; then
        echo "出力: $result"
        echo "テストケースは成功しました"
    else
        echo "出力: $result"
        echo "テストエラーが検出されました"
        exit 1
    fi

    echo "----------------------------------------"
done

echo "全てのテストケースが成功しました"
