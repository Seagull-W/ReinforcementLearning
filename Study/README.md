# 强化学习理论学习笔记

本文件夹是基于 **西湖大学《强化学习》课程课件** 整理修改而来的学习笔记，以 LaTeX 源码和编译 PDF 为主要文档形式。

> 原始课件来源：西湖大学强化学习课程（赵世钰老师）
> 原课件链接：https://github.com/MathFoundationRL/Deep-Math-ReinforcementLearning

## 内容说明

本笔记在原始课件基础上进行了以下工作：

- **翻译与整理**：将英文课件内容翻译为中文，重新组织章节结构
- **格式规范**：统一使用 LaTeX 编写，采用一致的文档样式（见章节文件的导言区）
- **补充内容**：在关键知识点处加入了额外的数学推导和量化分析
- **彩色模块**：使用 `definitionbox`（定义）、`theorembox`（定理）、`proofbox`（证明）、`remarkbox`（备注/补充）四种彩色盒子呈现概念性内容

## 章节列表

| 章节 | PDF | 内容 |
|------|-----|------|
| 第1-2讲 | [cha1_2.pdf](chapters/cha1_2/cha1_2.pdf) | 强化学习基本概念、贝尔曼方程 |
| 第3讲 | [cha3.pdf](chapters/cha3/cha3.pdf) | 最优状态价值与贝尔曼最优方程 |
| 第4讲 | [cha4.pdf](chapters/cha4/cha4.pdf) | 值迭代与策略迭代 |
| 第5讲 | [cha5.pdf](chapters/cha5/cha5.pdf) | 蒙特卡洛方法 |
| 第6讲 | [cha6.pdf](chapters/cha6/cha6.pdf) | 随机近似 |
| 第7讲 | [cha7.pdf](chapters/cha7/cha7.pdf) | 时序差分方法 |
| 第8讲 | [cha8.pdf](chapters/cha8/cha8.pdf) | 价值函数方法 |
| 第9讲 | [cha9.pdf](chapters/cha9/cha9.pdf) | 策略梯度方法 |

## 文件组织

```
Study/
├── README.md                  ← 本说明文件
├── .gitignore                 ← 忽略 LaTeX 辅助文件
├── .latexmkrc                 ← latexmk 编译配置
├── .vscode/settings.json      ← VS Code LaTeX Workshop 配置
├── chapters/
│   ├── cha1_2/                ← 第1-2讲
│   │   ├── cha1_2.tex
│   │   └── cha1_2.pdf
│   ├── cha3/                  ← 第3讲
│   ├── cha4/                  ← 第4讲
│   ├── cha5/                  ← 第5讲
│   ├── cha6/                  ← 第6讲
│   ├── cha7/                  ← 第7讲
│   ├── cha8/                  ← 第8讲
│   └── cha9/                  ← 第9讲
```

每个子文件夹内包含 `.tex` 源文件和编译生成的 `.pdf` 文件。

## 编译方式

- 编译器：**XeLaTeX**（支持中文）
- 推荐命令：`latexmk -xelatex` 一键编译
- 在对应章节子文件夹中执行编译

```bash
cd chapters/cha4
latexmk -xelatex cha4.tex
```

## 参考

- 原课程仓库：https://github.com/MathFoundationRL/Deep-Math-ReinforcementLearning
- 赵世钰老师个人主页：https://shiyuzhao.westlake.edu.cn/
