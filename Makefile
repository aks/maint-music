# Makefile to install files

# define bindir to suit your needs
bindir = /usr/local/bin
bindir = ~/bin

prog = maint-music

install: $(bindir)/$(prog)

$(bindir)/$(prog): $(prog)
	install -p -m 755 $< $@
