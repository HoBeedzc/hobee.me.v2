build:
	hugo --gc --minify

run:
	hugo server --disableFastRender

clean:
	rm -rf public