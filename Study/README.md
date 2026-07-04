# 强化学习理论学习笔记

本目录整理了个人的强化学习理论学习笔记，以 LaTeX 源码和编译生成的 PDF 文档呈现。

## 内容来源

本笔记基于 **西湖大学赵世钰老师《强化学习》课程讲义**（[GitHub: MathFoundationRL](https://github.com/MathFoundationRL/Deep-Math-Reinforcement-Learning)）进行整理和改编。在保留原课件核心内容的基础上，进行了以下工作：

- 对公式推导进行了更详细的展开和补充证明
- 增加了部分章节的量化分析和补充说明
- 统一了全书 LaTeX 格式规范和样式
- 修正了部分印刷和表述细节

## 章节列表

| 章节 | 内容 | PDF |
|------|------|-----|
| 第1-2讲 | 强化学习基本概念与贝尔曼方程 | [`cha1_2.pdf`](chapters/cha1_2/cha1_2.pdf) |
| 第3讲 | 最优状态价值与贝尔曼最优方程 | [`cha3.pdf`](chapters/cha3/cha3.pdf) |
| 第4讲 | 值迭代与策略迭代 | [`cha4.pdf`](chapters/cha4/cha4.pdf) |
| 第5讲 | 蒙特卡洛方法 | [`cha5.pdf`](chapters/cha5/cha5.pdf) |
| 第6讲 | 随机近似 | [`cha6.pdf`](chapters/cha6/cha6.pdf) |
| 第7讲 | 时序差分方法 | [`cha7.pdf`](chapters/cha7/cha7.pdf) |
| 第8讲 | 价值函数方法 | [`cha8.pdf`](chapters/cha8/cha8.pdf) |
| 第9讲 | 策略梯度方法 | [`cha9.pdf`](chapters/cha9/cha9.pdf) |

## 文件结构

```
Study/
├── README.md                    ← 本文件
├── chapters/
│   ├── cha1_2/                  ← 第1-2讲
│   │   ├── cha1_2.tex
│   │   └── cha1_2.pdf
│   ├── cha3/                    ← 第3讲
│   ├── cha4/                    ← 第4讲
│   ├── cha5/                    ← 第5讲
│   ├── cha6/                    ← 第6讲
│   ├── cha7/                    ← 第7讲
│   ├── cha8/                    ← 第8讲
│   └── cha9/                    ← 第9讲
```

每个章节子文件夹包含对应的 `.tex` 源文件和编译生成的 `.pdf` 文档。

## 编译方式

- 编译器：**XeLaTeX**（支持中文）
- 推荐使用 `latexmk -xelatex` 一键编译
- VS Code 推荐配置见 `.vscode/settings.json`

## 参考

- Zhao, S. *Mathematical Foundations of Reinforcement Learning*. [GitHub Repository](https://github.com/MathFoundationRL/Deep-Math-Reinforcement-Learning)
