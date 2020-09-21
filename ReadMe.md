# 概要
pandoc、pandoc-crossrefを使用して、Markdownとlatexを組み合わせて文書を書くテンプレート。

pdf,docxに変換可能

# ファイル構造
```
ReadMe.md
template.docx
template.pdf
src
┣ mdtodocx.bat
┣ mdtopdf.bat
┣ report_template.tex
┣ template.md
┣ config
    ┗ crossref_config.yaml
┗ images
    ┗ 使用する画像ファイル
```

# 使い方
```
cd src
mdtodocx.bat template [オプション]
mdtopdf.bat template [オプション]
```
オプションに`--toc`をつけると自動で目次生成

Markdonw,latexの書き方はtemplate.mdを参照
