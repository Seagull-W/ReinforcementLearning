#!/usr/bin/env perl

# latexmk 配置文件
# 适用于中文 XeLaTeX 编译

# 使用 XeLaTeX
$pdf_mode = 4;                 # 4 = xelatex
$postscript_mode = 0;          # 不生成 PS
$dvi_mode = 0;                 # 不生成 DVI

# 编译选项
$xelatex = 'xelatex %O -synctex=1 -interaction=nonstopmode -file-line-error %S';

# 编译次数
$bibtex_use = 1;               # 使用 bibtex 时自动运行
$max_repeat = 5;               # 最大重复编译次数

# 输出目录
$out_dir = 'build';

# 自动清理中间文件
$clean_ext = 'aux bbl blg idx ind lof lot out toc acn acr alg glg glo gls fls fdb_latexmk snm nav vrb synctex.gz thm log xdv run.xml bcf';
