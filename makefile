today = $(shell date +%Y-%m-%d)

newpres:
	mkdir newpres
	cp inSi* inst/index.Rmd  newpres/
	cp -r assets/ newpres/
	sed -i "3i date: $(today)" newpres/index.Rmd

clean:
	rm -r newpres
