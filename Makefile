build: optimise
	bundle exec jekyll build

optimise:
	find img -name '*.jpg' -cnewer .optimise-stamp -print0 | xargs -0r jpegoptim --strip-all --all-progressive
	find img -name '*.png' -cnewer .optimise-stamp -print0 | xargs -0r optipng -o9 -strip all
	touch .optimise-stamp

push: build
	bundle exec s3_website push

serve:
	bundle exec jekyll serve --draft
