library(devtools)
install_github("ndphillips/yarrr")
library("yarrr")

pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 1,
           main = "Default Theme")

#one element highlighted
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 2,
           #bean.f.o = .9,
           #avg.line.o = .6,
           #inf.f.o = .4,
           #inf.b.o = .4,
           #point.o = .1,
           main = "One Element Highlighted")

# customized for color order
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 1,
           bean.f.col = c("#F08892FF","#D86C4FFF", "#E5BA3AFF", "#F2990CFF", "#75B41EFF", "#358359FF",  "#006A40FF", "#007E7FFF",  "#8AB8CFFF", "#8BA1BCFF","#5A5895FF", "#95828DFF"),
           bean.b.col = c("#F08892FF","#D86C4FFF", "#E5BA3AFF", "#F2990CFF", "#75B41EFF", "#358359FF", "#006A40FF", "#007E7FFF",  "#8AB8CFFF", "#8BA1BCFF","#5A5895FF", "#95828DFF"),
           bean.f.o = .9,
           avg.line.col = c("#F08892FF","#D86C4FFF", "#E5BA3AFF", "#F2990CFF", "#75B41EFF", "#358359FF", "#006A40FF", "#007E7FFF",  "#8AB8CFFF", "#8BA1BCFF","#5A5895FF", "#95828DFF"),
           avg.line.o = .7,
           #inf.f.col = c("#F08892FF","#D86C4FFF", "#E5BA3AFF", "#F2990CFF", "#75B41EFF", "#358359FF", "#006A40FF", "#007E7FFF",  "#8AB8CFFF", "#8BA1BCFF","#5A5895FF", "#95828DFF"),
           inf.f.o = .4,
           #inf.b.col = c("#F08892FF","#D86C4FFF", "#E5BA3AFF", "#F2990CFF", "#75B41EFF", "#358359FF", "#006A40FF", "#007E7FFF",  "#8AB8CFFF", "#8BA1BCFF","#5A5895FF", "#95828DFF"),
           inf.b.o = .4,
           main = "Color Assignment")

# grouped colors
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 1,
           bean.f.col = c("#8AB8CFFF", "#8AB8CFFF", "#8AB8CFFF", "#8AB8CFFF", "#358359FF", "#358359FF", "#358359FF", "#358359FF", "#E5BA3AFF", "#E5BA3AFF", "#E5BA3AFF", "#E5BA3AFF"),
           bean.b.col = c("#8AB8CFFF", "#8AB8CFFF", "#8AB8CFFF", "#8AB8CFFF", "#358359FF", "#358359FF", "#358359FF", "#358359FF", "#E5BA3AFF", "#E5BA3AFF", "#E5BA3AFF", "#E5BA3AFF"),
           bean.f.o = .9,
           #avg.line.col = c("#8AB8CFFF", "#8AB8CFFF", "#8AB8CFFF", "#8AB8CFFF", "#358359FF", "#358359FF", "#358359FF", "#358359FF", "#E5BA3AFF", "#E5BA3AFF", "#E5BA3AFF", "#E5BA3AFF"),
           avg.line.o = .7,
           #inf.f.col = c("#F08892FF","#D86C4FFF", "#E5BA3AFF", "#F2990CFF", "#75B41EFF", "#358359FF", "#006A40FF", "#007E7FFF",  "#8AB8CFFF", "#8BA1BCFF","#5A5895FF", "#95828DFF"),
           inf.f.o = .4,
           #inf.b.col = c("#F08892FF","#D86C4FFF", "#E5BA3AFF", "#F2990CFF", "#75B41EFF", "#358359FF", "#006A40FF", "#007E7FFF",  "#8AB8CFFF", "#8BA1BCFF","#5A5895FF", "#95828DFF"),
           inf.b.o = .4,
           main = "Color Assignment for Goups")
legend("topleft", 
       legend = c("Treatment 1", "Treatment 2", "Treatment 3"),
       col = c("#8AB8CFFF", "#358359FF", "#E5BA3AFF"), 
       pch = c(16, 16))

pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 2,
           main = "theme = 2")

pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 0,
           main = "theme = 0\nStart from scratch")

piratepal(palette = "info2")