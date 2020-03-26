target = -t latex
filters = -F pandoc-crossref -F pandoc-citeproc

pandocflags = $(target) $(filters)

seminar: makefiles/config.yaml src/chapter*.md makefiles/references.yaml
	pandoc $(pandocflags) \
		-o seminar.pdf \
		--number-sections \
		-Mbook-class=false \
		makefiles/config.yaml \
		src/chapter*.md

makefiles/references.yaml: refs/*.bib
	pandoc-citeproc --bib2yaml $^ > $@

%.pdf: %.md
	pandoc $(target) -o $@ $<

all: seminar

.PHONY: all thesis
