build: optimise bundle
	bundle exec jekyll build

bundle:
	bundle check || bundle install

optimise:
	find img -name '*.jpg' -cnewer .optimise-stamp -print0 | xargs -0r jpegoptim --strip-all --all-progressive
	find img -name '*.jpg' -cnewer .optimise-stamp -print0 | xargs -0 -P8 -I@ jpegrescan @ @
	find img -name '*.png' -cnewer .optimise-stamp -print0 | xargs -0r optipng -o9 -strip all
	touch .optimise-stamp

push: build bundle
	bundle exec s3_website push

force_push: build bundle
	bundle exec s3_website push --force

serve: bundle
	bundle exec jekyll serve --draft
