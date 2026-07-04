# 强化学习理论学习笔记

study 文件夹记录强化学习理论学习，以 tex 和 pdf 为主要文档。

---

## LaTeX 笔记编写规范

所有章节 tex 文件须遵循以下规范，确保笔记风格一致。

### 1. 文档类与基础宏包

```latex
\documentclass[UTF8]{article}

% ========== 基础宏包 ==========
\usepackage{ctex}                % 中文支持
\usepackage{amsmath,amssymb}     % 数学公式
\usepackage{geometry}            % 页面边距
\usepackage{titlesec}            % 自定义标题格式
\usepackage{enumitem}            % 列表格式控制
\usepackage{microtype}           % 微排版优化
\usepackage{xcolor}              % 颜色支持
\usepackage{tcolorbox}           % 彩色盒子（核心美化包）
\tcbuselibrary{most}             % 加载大多数 tcolorbox 库
```

### 2. 页面设置

```latex
\geometry{a4paper, margin=2.5cm}
\linespread{1.2}                 % 1.2倍行距
\setlength{\parskip}{0.5ex}      % 段落间距
```

### 3. 标题格式

```latex
\titleformat{\section}{\Large\bfseries\centering}{\thesection}{1em}{}
\titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{0.8em}{}
\titleformat{\subsubsection}{\normalsize\itshape}{\thesubsubsection}{0.8em}{}
```

- `\section`：大号加粗居中（用于章节标题）
- `\subsection`：正常大小加粗
- `\subsubsection`：正常大小斜体

### 4. 列表环境（紧凑排版）

```latex
\setlist[itemize]{leftmargin=*, nosep, topsep=0.3ex, parsep=0ex, partopsep=0ex}
\setlist[enumerate]{leftmargin=*, nosep, topsep=0.3ex, parsep=0ex, partopsep=0ex}
```

### 5. 彩色模块（tcolorbox）

所有概念性内容使用如下四种彩色盒子呈现：

| 环境名 | 用途 | 颜色 | 可跨页 |
|--------|------|------|--------|
| `definitionbox` | 定义 | 蓝色 | 否 |
| `theorembox` | 核心定理/公式 | 橙色 | 否 |
| `proofbox` | 证明 | 绿色 | **是** |
| `remarkbox` | 备注/说明 | 紫色 | **是** |

完整样式代码参见 [cha1_2.tex](chapters/cha1_2/cha1_2.tex) 的导言区定义，后续章节可直接复制使用。

> 使用示例：`\begin{definitionbox} ... \end{definitionbox}`
>
> `remarkbox` 支持可选参数指定标题：`\begin{remarkbox}[自定义标题] ... \end{remarkbox}`
> 不传参数时默认显示"备注"。

### 6. 文档结构模板

```latex
\begin{document}

\maketitle
\thispagestyle{empty}

% ============================================================
\section{第X讲：标题}
% ============================================================

正文内容...

\newpage  % 章节间分页

\end{document}
```

- `\maketitle` + `\thispagestyle{empty}`：输出标题并去除首页页码
- 用 `\section{}` 分割各讲，标题用中文，格式 `第X讲：标题`
- 每讲之间用 `\newpage` 分页

### 7. 数学符号约定

| 符号 | 含义 | LaTeX 写法 |
|------|------|------------|
| $\mathcal{S}$ | 状态空间 | `\mathcal{S}` |
| $\mathcal{A}$ | 动作空间 | `\mathcal{A}` |
| $\mathcal{A}(s)$ | 状态 s 下的动作空间 | `\mathcal{A}(s)` |
| $s, s'$ | 状态 | `s, s'` |
| $a$ | 动作 | `a` |
| $\pi$ | 策略 | `\pi` |
| $\pi(a \mid s)$ | 条件策略概率 | `\pi(a \mid s)` |
| $p(s' \mid s,a)$ | 状态转移概率 | `p(s' \mid s,a)` |
| $r(s,a)$ | 期望奖励 | `r(s,a)` |
| $\gamma$ | 折扣因子 | `\gamma` |
| $G_t$ | 折扣回报 | `G_t` |
| $v_\pi(s)$ | 状态价值函数 | `v_\pi(s)` |
| $q_\pi(s,a)$ | 动作价值函数 | `q_\pi(s,a)` |
| $\mathbb{P}$ | 概率 | `\mathbb{P}` |
| $\mathbb{E}$ | 期望 | `\mathbb{E}` |
| $\boldsymbol{P}$ | 矩阵 | `\boldsymbol{P}` |
| $\boldsymbol{v}$ | 向量 | `\boldsymbol{v}` |

### 8. 公式环境约定

- **行内公式**：使用 `$...$`
- **独立公式（短）**：使用 `\[ ... \]`，不给编号
- **独立公式（需编号/引用）**：使用 `\begin{equation} ... \label{eq:xxx} \end{equation}`
- **多行对齐公式**：使用 `align*`（无编号）或 `align`（有编号）
- **公式引用**：使用 `\eqref{eq:xxx}`
- **加粗中文关键词**：`\textbf{关键词}`

### 9. 章节文件组织

```
Study/
├── README.md            ← 本规范文档
├── .gitignore           ← 忽略 LaTeX 辅助文件
├── chapters/
│   ├── cha1_2/
│   │   ├── cha1_2.tex   ← 第1-2讲源文件
│   │   └── cha1_2.pdf   ← 编译输出
│   ├── cha3_4/
│   │   └── ...
│   └── ...
```

- 每个子文件夹命名 `chaX_Y`，其中 X、Y 为章节起止编号
- 每个子文件夹内包含 `chaX_Y.tex` 和编译出的 `chaX_Y.pdf`
- 新章节直接复制已有 tex 文件的导言区即可

### 10. 编译方式

- 编译器：**XeLaTeX**（支持中文）
- 推荐：**latexmk -xelatex** 一键编译
- VS Code 配置见 `.vscode/settings.json`
