# “华为杯”第二十三届中国研究生数学建模竞赛 LaTeX 模板（Overleaf 可用）

这是一个为 **“华为杯”第二十三届中国研究生数学建模竞赛** 准备的 LaTeX 模板，支持 **Overleaf** 在线使用，采用 **XeLaTeX** 编译。  
本模板已更新为最新官方 Word 模板（承办方：西安交通大学）封面及标题样式，并已修复中文字体报错问题。

> **字体版权说明**：出于版权原因，本仓库不再内置中易宋体/楷体/隶书、华文新魏等商业字体文件，请按下方「字体说明」自行放置字体后编译。

---

## 目录结构

```
/
├── figures/                 # 官方封面美术资源（logo、标题矢量图、封面单页 PDF 等）
├── gmcmthesis.cls           # 模板文档类文件
├── MathModel.pdf            # 模板编译示例 PDF
├── MathModel.tex            # 主文档入口文件
└── test.jpg                 # 示例图片
```

---

## 使用说明

### 编译方式

- 推荐编译方式：**XeLaTeX**。  
- Overleaf 用户请在 **Menu → Compiler** 中选择 **XeLaTeX**。  
- 本地用户请确保安装了 **XeLaTeX**（建议使用 TeX Live 2023+ 或 MiKTeX）。

### 字体说明

模板在 `gmcmthesis.cls` 中按文件名引用以下字体，编译前需要把它们放到项目根目录：

- SimSun.ttf（宋体，正文主字体）
- KaiTi.ttf（楷体，用作宋体斜体替换）
- STXinwei.ttf（华文新魏）
- LiSu.ttf（隶书）

黑体（`\heiti`）由 ctex 宏包按当前环境自动提供，无需单独放置。

字体获取方式：

- **Overleaf**：上传本模板后，把自己有权使用的对应字体 TTF 文件上传到项目根目录。
- **本地 Windows**：将自备的 TTF 复制到项目根目录；或参照 `gmcmthesis.cls` 中 `\setCJKmainfont` 一节，改为按系统字体名引用（宋体/黑体/楷体/隶书在 Windows 中自带）。
- 出于版权原因，请勿将字体文件再分发到公开仓库；本仓库的 `.gitignore` 已默认忽略 `*.ttf` 等字体文件。

如需更换字体，可以在 `MathModel.tex` 或 `gmcmthesis.cls` 中修改 `\setCJKmainfont` 和 `\setmainfont` 设置。

---

## 示例

- 放置字体后，直接编译 `MathModel.tex` 即可得到示例报告（`MathModel.pdf` 为排版效果预览）。  
- 可以替换 `figures/` 下的图片或 `test.jpg` 来测试插图效果。  

---

## 鸣谢

本模板参考并改写自 [zhanwen/MathModel](https://github.com/zhanwen/MathModel)和[li chun
/springli07](https://github.com/springli07/GMCM_LaTeX_overleaf)。在此感谢其开源贡献。

---

## 注意事项

- 官方 Word 模板与竞赛文件请从竞赛官方渠道获取，本仓库不再附带。  
- 如果需要额外的章节文件，可以在 `MathModel.tex` 中自行 `\input{}` 引入。  
- 建议保留 `MathModel.pdf` 作为排版示例参考。  

祝你竞赛顺利，论文排版顺畅！🎉
