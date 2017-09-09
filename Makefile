TEX= $(wildcard *.tex)
PDF= $(TEX:%.tex=%.pdf)
TEMP= $(TEX:%.tex=%.aux) $(TEX:%.tex=%.log) $(TEX:%.tex=%.nav) $(TEX:%.tex=%.out) $(TEX:%.tex=%.snm) $(TEX:%.tex=%.toc)

all: $(PDF)
	rm -f $(TEMP)

clean:
	rm -f $(TEMP) $(PDF)

%.pdf: %.tex
	pdflatex $^

.PHONY: all clean
