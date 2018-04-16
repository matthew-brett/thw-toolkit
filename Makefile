SLIDES=thw_toolkit

default: $(SLIDES).pdf

reveal: $(SLIDES).html

%.pdf : %.md
	pandoc -t beamer -s $< -o $@

%.html : %.md
	# May need git submodule add https://github.com/hakimel/reveal.js to make
	# this one work.
	pandoc -t revealjs -s -o $@ $< -V revealjs-url=./reveal.js

clean:
	rm *.pdf *.html
