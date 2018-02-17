all: renderIntro site

R_OPTS=--no-save --no-restore --no-init-file --no-site-file # vanilla, but with --environ

renderIntro: index.Rmd
	R ${R_OPTS} -e "rmarkdown::render('index.Rmd', output_dir='./docs', output_file='r-intro.html')"
site:
	rm -rf _site && R ${R_OPTS} -e "rmarkdown::render_site()"
