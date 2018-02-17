all: renderIndex

R_OPTS=--no-save --no-restore --no-init-file --no-site-file # vanilla, but with --environ

renderIndex: index.Rmd
	R ${R_OPTS} -e "rmarkdown::render('index.Rmd')"

clean:
	rm index.md index.html
site:
	rm -rf _site && R ${R_OPTS} -e "rmarkdown::render_site()"
