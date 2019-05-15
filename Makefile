TARGET=main.tex

pdf:
	latexmk $(TARGET) -silent -pdf

clean:
	latexmk -c $(TARGET)

