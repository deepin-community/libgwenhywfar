all: gct-tool.1 xmlmerge.1 mklistdoc.1 typemaker.1 typemaker2.1

gct-tool.1.generated.txt: ../../tools/gcttool/gct-tool
	LANG=C ../../tools/gcttool/gct-tool --help 2>&1 \
		| sed -e 's/^Usage:.*//;s/^Global Options:.*//;s/:$$/::/g;s/^\(\S\+.*\)::$$/== \1/g;s/^  \(\S\+\)::/\1::/g;s/^ \[\(.*\)\]/\1::/g' \
		> gct-tool.1.generated.txt

gct-tool.1: gct-tool.1.txt gct-tool.1.generated.txt
	asciidoctor -d manpage -b manpage gct-tool.1.txt

typemaker2.1.generated.txt: ../../tools/typemaker2/typemaker2
	LANG=C ../../tools/typemaker2/typemaker2 --help 2>&1 \
		| sed -e 's/^Usage:.*//;s/^Global Options:.*//;s/:$$/::/g;s/^\(\S\+.*\)::$$/== \1/g;s/^  \(\S\+\)::/\1::/g;s/^ \[\(.*\)\]/\1::/g' \
		> typemaker2.1.generated.txt

typemaker2.1: typemaker2.1.txt typemaker2.1.generated.txt
	asciidoctor -d manpage -b manpage typemaker2.1.txt

%:	%.txt
	asciidoctor -d manpage -b manpage $*.txt
