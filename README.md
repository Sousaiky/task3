## task3  

#### ロボットシステム学2023  

## 概要  
このリポジトリのプログラムは、数字を入力すると四則演算をするコマンドです。  

## ダウンロード方法 
以下のコマンドを入力し、実行してください   
```
$ git clone git@github.com:Sousaiky/task3.git
$ cd task3
```  

## コマンドと実行例  
* denntaku  
![test](https://github.com/Sousaiky/task3/actions/workflows/test.yml/badge.svg)  
標準入力から読み込んだ値を四則演算し続けます。  
実行例は以下の通りです。  
```
~/task3$ ./denntaku
最初の数字を入力: 4
符号(+,m,*,/)と半角スペース後に数字を入力: + 3
計算結果: 7.0
符号(+,m,*,/)と半角スペース後に数字を入力: * 5
計算結果: 35.0
符号(+,m,*,/)と半角スペース後に数字を入力: m 3
計算結果: 32.0
符号(+,m,*,/)と半角スペース後に数字を入力: / 4
計算結果: 8.0
符号(+,m,*,/)と半角スペース後に数字を入力: / 0
エラー: 0で割ることはできません
符号(+,m,*,/)と半角スペース後に数字を入力: + x
エラー: 正しい形式で入力してください
符号(+,m,*,/)と半角スペース後に数字を入力: + 10
計算結果: 18.0
```  

## 必要なソフトウェア  
* python  
   * テスト済み：3.7~3.10  
* Ubuntu 20.04  

## テスト環境  
* [test](https://github.com/Sousaiky/task3/blob/main/test.bash)  

## 著作権・ライセンス  
* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。  
* [LICENSE](https://github.com/Sousaiky/task3/blob/main/LICENSE)  


© 2024 Soshi Saiki 
