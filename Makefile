build: optimise bundle
	COMPRESS=1 bundle exec jekyll build

bundle:
	bundle check || bundle install

optimise:
	find img -name '*.jpg' -cnewer .optimise-stamp -print0 | xargs -0r jpegoptim --strip-all --all-progressive
	find img -name '*.jpg' -cnewer .optimise-stamp -print0 | xargs -0 -P8 -I@ jpegrescan @ @
	find img -name '*.png' -cnewer .optimise-stamp -print0 | xargs -0r optipng -o9 -strip all
	touch .optimise-stamp

serve: bundle
	bundle exec jekyll serve --drafts

demo: bundle
	bundle exec jekyll serve --drafts --host 0.0.0.0
