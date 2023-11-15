build:
	docker build -t resume .
run:
	docker run --rm -i -v .:/data resume pdflatex resume.tex
clean:
	rm resume.aux && rm resume.log && rm resume.out
