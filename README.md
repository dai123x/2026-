# “华为杯”第二十三届中国研究生数学建模竞赛 LaTeX 模板（Overleaf 可用）

这是一个为 **“华为杯”第二十三届中国研究生数学建模竞赛** 准备的 LaTeX 模板，支持 **Overleaf** 在线使用，采用 **XeLaTeX** 编译。  
本模板已更新为最新官方 Word 模板（承办方：西安交通大学）封面及标题样式，并已修复中文字体报错问题，内置多款常用中文字体（如 KaiTi、LiSu、SimHei、SimSun、STXinwei 等）。

---

## 目录结构

```
/
├── figures/
│   ├── logo2026.png         # 第二十三届官方 4-Logo 横幅 (西安交通大学承办)
│   ├── title2026.pdf        # 第二十三届竞赛标题矢量图 (华文新魏立体阴影)
│   ├── word_cover.pdf       # 官方 Word 导出的封面单页 PDF (可选备用)
├── gmcmthesis.cls           # 模板文档类文件
├── KaiTi.ttf                # 楷体字体
├── LiSu.ttf                 # 隶书字体
├── MathModel.pdf            # 模板编译示例 PDF
├── MathModel.tex            # 主文档入口文件
├── SimHei.ttf               # 黑体字体
├── SimSun.ttf               # 宋体字体
├── STXinwei.ttf             # 新魏字体
└── test.jpg                 # 示例图片
```

---

## 使用说明

### 编译方式

- 推荐编译方式：**XeLaTeX**。  
- Overleaf 用户请在 **Menu → Compiler** 中选择 **XeLaTeX**。  
- 本地用户请确保安装了 **XeLaTeX**（建议使用 TeX Live 2023+ 或 MiKTeX）。

### 字体说明

模板内已包含常见中文字体文件：  

- KaiTi.ttf（楷体）  
- LiSu.ttf（隶书）  
- SimHei.ttf（黑体）  
- SimSun.ttf（宋体）  
- STXinwei.ttf（新魏）  

这样可以避免 Overleaf 或部分系统环境下缺失中文字体导致的编译报错。  

如需更换字体，可以在 `MathModel.tex` 或 `gmcmtthesis.cls` 中修改 `\setCJKmainfont` 和 `\setmainfont` 设置。

---

## 示例

- 直接编译 `MathModel.tex` 即可得到示例报告 `MathModel.pdf`。  
- 可以替换 `figures/` 下的图片或 `test.jpg` 来测试插图效果。  

---

## 鸣谢

本模板参考并改写自 [zhanwen/MathModel](https://github.com/zhanwen/MathModel)，在此感谢其开源贡献。

---

## 注意事项

- 请勿删除 `.ttf` 字体文件，否则可能会在 Overleaf 或本地缺少字体时报错。  
- 如果需要额外的章节文件，可以在 `MathModel.tex` 中自行 `\input{}` 引入。  
- 建议保留 `MathModel.pdf` 作为排版示例参考。  

祝你竞赛顺利，论文排版顺畅！🎉
