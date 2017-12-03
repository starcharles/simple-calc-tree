# Simple Calculation using Syntax Tree 

二分木上にノードを持つTree

ノードは2種類ある

1. 演算記号を持つノード
2. 整数値の値を持つノード

main.rb: 2 + (3-1)　を木構造に割り当ててそれを計算するだけ。

```
# syntax_tree

          root = OP_ADD
     ______|______
    |             |
 left1 = 2      right1 = OP_SUB
                 ___|___
                |       |
           right11 =3  right12 =1
           
```

再帰で計算できるのでもっと複雑な木を作っても一発計算できる(バグなければ)

## How to run 

```
$ git clone https://github.com/starcharles/simple-calc-tree.git
$ cd simple-calc-tree/
$ ruby main.rb
```
