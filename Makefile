all: site renderIntro

R_OPTS=--no-save --no-restore --no-init-file --no-site-file # vanilla, but with --environ

renderIndex: index.Rmd
	R ${R_OPTS} -e "rmarkdown::render('index.Rmd')"

site:
	R ${R_OPTS} -e "rmarkdown::render_site()"
