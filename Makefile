
ALL : HowDawkinsGotPwned.epub HowDawkinsGotPwned.mobi HowDawkinsGotPwned.pdf HowDawkinsGotPwned.md

HowDawkinsGotPwned.epub : 
	rm -f HowDawkinsGotPwned.epub
	zip -X0 HowDawkinsGotPwned.epub mimetype
	zip -Xur9D HowDawkinsGotPwned.epub META-INF/* OEBPS/*

HowDawkinsGotPwned.mobi : HowDawkinsGotPwned.epub
	rm -f HowDawkinsGotPwned.mobi
	ebook-convert HowDawkinsGotPwned.epub HowDawkinsGotPwned.mobi

HowDawkinsGotPwned.pdf : HowDawkinsGotPwned.epub
	rm -f HowDawkinsGotPwned.pdf
	ebook-convert HowDawkinsGotPwned.epub HowDawkinsGotPwned.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

HowDawkinsGotPwned.md: HowDawkinsGotPwned.epub
	rm -f HowDawkinsGotPwned.md
	ebook-convert HowDawkinsGotPwned.epub HowDawkinsGotPwned.txt --txt-output-formatting=markdown --keep-links --keep-image-references
	cp -f HowDawkinsGotPwned.txt HowDawkinsGotPwned.md
	rm -f HowDawkinsGotPwned.txt
