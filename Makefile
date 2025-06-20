.PHONY: clean

paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

clean:
	@git ls-files --others --exclude-standard -z | xargs -0 rm -rf --
