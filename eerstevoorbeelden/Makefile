all: run

vb1.beam: vb1.erl
		erlc vb1.erl

run: vb1.beam
		erl -noshell -s vb1 start

clean:
		rm -vf *.dump
		rm -vf *.beam
		rm -vf *~
		