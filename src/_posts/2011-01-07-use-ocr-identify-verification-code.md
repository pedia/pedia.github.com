---

# 使用 OCR 识别验证码
2011-01-07 10:18

[ocr]
---


tesseract-ocr 是一个历史悠久的 OCR 引擎，代码位于 http://code.google.com/p/tesseract-ocr/。现在由 Google 开发。几年间代码有了很多 Google 的风格，也相对成熟稳定了一些。对于简单英文字符有很高的识别率。<br />
<br />
在代码顶层目录执行 <br />
TESSDATA_PREFIX=./ api/tesseract 1.jpg 1 -l eng<br />
解释一下：<br />
TESSDATA_PREFIX 是环境变量，该目录下有 tessdata/<br />
下面应该有 configs/ eng.traineddata 等<br />
tesseract 是 OCR 识别程序<br />
1.jpg 是需要识别的图像文件<br />
1 会生成 1.txt 的识别结果<br />
-l eng 是指应用训练库 eng.traineddata 进行识别<br />
<br />
一般难度的验证码，如 <div class="separator" style="clear: both; text-align: center;"><a href="http://2.bp.blogspot.com/_CZ0niZQI8-o/TSZzHnQ_g1I/AAAAAAAAF4g/YDOVxfryATQ/s1600/6.jpg" style="clear: left; float: left; margin-right: 1em; margin-bottom: 1em;"><img border="0" height="45" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TSZzHnQ_g1I/AAAAAAAAF4g/YDOVxfryATQ/s320/6.jpg" width="120" /></a></div>都可以达到 20% 左右的的正确率。<br />
<br />
tesseract-ocr 没有关于layout analysis，如果先对图像预处理，会有更高的效果。<br />
<br />
如果针对图像训练会有意想不到的效果。但是其wiki里的文档没有说太明白<br />
过程如下：<br />
1) 先生成box文件，可能有错误<br />
api/tesseract 1.jpg 1 makebox<br />
api/tesseract 1.jpg 2 makebox<br />
<br />
2) 使用 python 的编辑器，调整 box 文件内矩形数据的正确性<br />
python tesseractTrainer.py<br />
<br />
3) 开始训练。<br />
api/tesseract 1.jpg {output} box.train<br />
api/tesseract 2.jpg {output} box.train<br />
...<br />
<br />
4) 对训练结果进行转换<br />
training/mftraining *.tr<br />
training/cntraining *.tr<br />
training/unicharset_extractor *.box<br />
<br />
cp unicharset tessdata/rr.unicharset<br />
cp pffmtable tessdata/rr.pffmtable<br />
cp inttemp tessdata/rr.inttemp<br />
cp normproto tessdata/rr.normproto<br />
<br />
5) 合并成 rr.traineddata<br />
cd tessdata<br />
../training/combine_tessdata rr.<br />
<br />
之后就可以使用-l rr来识别了