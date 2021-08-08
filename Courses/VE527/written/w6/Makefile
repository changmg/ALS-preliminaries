#definitions
NAME := w6

#compiling parameters
TEX := pdflatex

#commands
.PHONY : all clean view rebuild ref
all :
	$(TEX) $(NAME)

clean :
	rm -f *.aux
	rm -f *.pdf
	rm -f *.log
	rm -f *.bbl
	rm -f *.blg
	rm -f *.out

view :
	xdg-open ${NAME}.pdf

rebuild : clean ref

ref :
	$(TEX) $(NAME)
	$(TEX) $(NAME)
