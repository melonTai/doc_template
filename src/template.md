---
documentclass: ltjsarticle
title : 'テンプレート'
right :
  - 名前
  - 番号
  - 補足
header-includes:
  - \usepackage[margin=1in]{geometry}
  - \usepackage{amsmath}
---

# 見出し
## 見出し
### 見出し
#### 見出し
##### 見出し
###### 見出し

- リスト
- リスト
    - リスト
    - リスト

スペースを 2 つつければ改行できる

1 行空行を空けると[^1]別のパラグラフになる。

![イルカ](images/dolphin.jpg){#fig:dolphin1}

![イルカ高さ調整](images/dolphin.jpg){#fig:dolphin2 height=60mm}

| i | j |
|------:|:------:|
| 1 | 3 |
| 2 | 2 |
| 3 | 6 |
| 4 | 5 |
| 5 | 1 |
| 6 | 4 |
| 7 | 2 |
| 8 | 6 |

:表の例 {#tbl:table}


|列1|列2|列3|
|:---------:|----------------------:|----------------------:|
| ポカリスエット | 2 | 40 |
| アクエリアス | 2 | 21 |
| ダカラ | 3 | 8 |

:表の例2 {#tbl:table-long}



この辺で改ページ
\clearpage

# 数式
## インライン
$E = mc^2$

テストテスト$a_n = \frac{1}{\pi} \int_{0}^{2\pi} f(x) \cos nx dx$ テストテストテストテスト$\displaystyle b_n = \frac{1}{\pi} \int_{0}^{2\pi} f(x) \sin nx dx$ テストテスト


## ブロック
$$f(x) = \frac{a_0}{2} + \sum_{n = 1}^{\infty} a_n \cos nx + b_n \sin nx$${#eq:fourier}


## ギリシャ文字
$\alpha, \beta, \gamma, \delta, \Delta, \varepsilon, \theta, \lambda, \mu, \nu, \pi, \rho, \sigma, \Sigma, \tau, \phi, \omega$

$$\frac{\partial f}{\partial y} \frac{d f}{d x}$$


# ソースコード
```{#lst:awesome-code .sass .numberLines startFrom="10" caption="コード"}
.l-column{
    flex: 0 1 $base-content-width;//横幅がbase-content-widthになり、他と比べて1縮む、拡大しない
    max-width: $base-content-width;//最大幅を決める
    margin: 0 auto;//左右に自動でマージンをとる。おそらくmax-widthより画面が大きい時の対策
    padding: 0 $space-unit;//sectionborderからのpadding
    @include mq-sp{
        padding: 0 $sp-space-unit*2;
        width: auto;
    }
}
.l-halfColumn{
    flex: 1 0 0%;//1 0 0%と最後に%をつけないとpxとされてしまうバグがある
    //0としておくことで、柔軟に拡大縮小される
    //拡大分は1で、縮小分はもともと0なので問題なし
    max-width: ($base-content-width - $column-space)/2;
    margin-right: $column-space;
    &:nth-child(even){//偶数個目の要素のmargin-rightをキャンセル
        margin-right: 0;
    }
    @include mq-sp{
        display: block;
        flex: 1 1 100%;
        max-width: none;//maxをなくしてかつflex-basisを100%にすることで画面幅いっぱいにする。
        margin-right: 0;
    }
}
});
```

# 参照
1. [@fig:dolphin1] イルカ
1. [@fig:dolphin2] イルカ高さ調整
1. [@tbl:table] 表の例1
1. [@tbl:table-long] 表の例2
1. [@eq:fourier] 数式
1. [@lst:awesome-code] コード

# 参考文献 {-}
`{-}` をつけるとこのセクションには見出しに通し番号がつかない。
