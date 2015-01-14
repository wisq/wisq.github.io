build:
	bundle exec jekyll build

push: build
	bundle exec s3_website push

serve:
	bundle exec jekyll serve --draft
