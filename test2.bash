#!/bin/bash

# Pythonスクリプトのパス
python_script="denntaku"

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
