all:
	# NOT WORK: mdbook build -d .
	mdbook build
	cp -r book/* .
