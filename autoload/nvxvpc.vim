"
" Vim plugin 'pretty comments'                                       ,-,
" Author:  nvxden                                              _.-=;~ /_
" Github:  https://github.com/nvxden/vim-pretty-comments    _-~   '     ;.
" Created: 2021/10/30                                   _.-~     '   .-~-~`-._
" License: MIT                                    _.--~~:.             --.____88
"                               ____.........--~~~. .' .  .        _..-------~~
"                      _..--~~~~               .' .'             ,'
"                  _.-~                        .       .     ` ,'
"                .'                                    :.    ./
"              .:     ,/          `                   ::.   ,'
"            .:'     ,(            ;.                ::. ,-'
"           .'     ./'.`.     . . /:::._______.... _/:.o/
"          /     ./'. . .)  . _.,'               `88;?88|
"        ,'  . .,/'._,-~ /_.o8P'                  88P ?8b
"     _,'' . .,/',-~    d888P'                    88'  88|
"  _.'~  . .,:oP'        ?88b              _..--- 88.--'8b.--..__
" :     ...' 88o __,------.88o ...__..._.=~- .    `~~   `~~      ~-.__....._.
" `.;;;:='    ~~            ~~~                ~-    -       -   -
"



" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ DELIMITERS MAP ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

let s:delimiters = {
	\	'aap':          { 'left': '#'                                         },
	\	'abc':          { 'left': '%'                                         },
	\	'acedb':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'actionscript': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'ada':          { 'left': '--', 'leftAlt': '--  '                     },
	\	'ahdl':         { 'left': '--'                                        },
	\	'ahk':          { 'left': ';', 'leftAlt': '/*', 'rightAlt': '*/'      },
	\	'amiga':        { 'left': ';'                                         },
	\	'aml':          { 'left': '/*'                                        },
	\	'ampl':         { 'left': '#'                                         },
	\	'ansible':      { 'left': '#'                                         },
	\	'apache':       { 'left': '#'                                         },
	\	'apachestyle':  { 'left': '#'                                         },
	\	'apdl':         { 'left': '!'                                         },
	\	'applescript':  { 'left': '--', 'leftAlt': '(*', 'rightAlt': '*)'     },
	\	'armasm':       { 'left': ';'                                         },
	\	'asciidoc':     { 'left': '//'                                        },
	\	'asm':          { 'left': ';', 'leftAlt': '#'                         },
	\	'asm68k':       { 'left': ';'                                         },
	\	'asn':          { 'left': '--'                                        },
	\	'asp':          { 'left': '%', 'leftAlt': '%*', 'rightAlt': '*%'      },
	\	'aspvbs':       { 'left': '''', 'leftAlt': '\<!--', 'rightAlt': '-->' },
	\	'asterisk':     { 'left': ';'                                         },
	\	'asy':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'atlas':        { 'left': 'C', 'right': '$'                           },
	\	'augeas':       { 'left': '(*', 'right': '*)'                         },
	\	'autohotkey':   { 'left': ';', 'leftAlt': '/*', 'rightAlt': '*/'      },
	\	'autoit':       { 'left': ';'                                         },
	\	'ave':          { 'left': "'"                                         },
	\	'awk':          { 'left': '#'                                         },
	\	'basic':        { 'left': "'", 'leftAlt': 'REM '                      },
	\	'bbx':          { 'left': '%'                                         },
	\	'bc':           { 'left': '#'                                         },
	\	'bib':          { 'left': '//'                                        },
	\	'bindzone':     { 'left': ';'                                         },
	\	'bind-named':   { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'blade':        { 'left': '{{--', 'right': '--}}'                     },
	\	'bst':          { 'left': '%'                                         },
	\	'btm':          { 'left': '::'                                        },
	\	'c':            { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'cabal':        { 'left': '--'                                        },
	\	'calibre':      { 'left': '//'                                        },
	\	'caos':         { 'left': '*'                                         },
	\	'catalog':      { 'left': '--', 'right': '--'                         },
	\	'cf':           { 'left': '\<!---', 'right': '--->'                   },
	\	'cfg':          { 'left': '#'                                         },
	\	'cg':           { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'ch':           { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'cl':           { 'left': '#'                                         },
	\	'clean':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'clipper':      { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'clojure':      { 'left': ';'                                         },
	\	'cmake':        { 'left': '#'                                         },
	\	'cocci':        { 'left': '//'                                        },
	\	'coffee':       { 'left': '#', 'leftAlt': '###', 'rightAlt': '###'    },
	\	'conkyrc':      { 'left': '#'                                         },
	\	'context':      { 'left': '%', 'leftAlt': '--'                        },
	\	'coq':          { 'left': '(*', 'right': '*)'                         },
	\	'cpp':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'crontab':      { 'left': '#'                                         },
	\	'cs':           { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'csp':          { 'left': '--'                                        },
	\	'cterm':        { 'left': '*'                                         },
	\	'cucumber':     { 'left': '#'                                         },
	\	'cuda':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'cvs':          { 'left': 'CVS:'                                      },
	\	'cypher':       { 'left': '//'                                        },
	\	'cython':       { 'left': '# ', 'leftAlt': '#'                        },
	\	'd':            { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'dakota':       { 'left': '#'                                         },
	\	'dcl':          { 'left': '$!'                                        },
	\	'debcontrol':   { 'left': '#'                                         },
	\	'debsources':   { 'left': '#'                                         },
	\	'def':          { 'left': ';'                                         },
	\	'desktop':      { 'left': '#'                                         },
	\	'dhcpd':        { 'left': '#'                                         },
	\	'diff':         { 'left': '#'                                         },
	\	'django':       { 'left': '{% comment %}', 'right': '{% endcomment %}', 'leftAlt': '{#', 'rightAlt': '#}' },
	\	'dns':          { 'left': ';'                                         },
	\	'docbk':        { 'left': '\<!--', 'right': '-->'                     },
	\	'dockerfile':   { 'left': '#'                                         },
	\	'dosbatch':     { 'left': 'REM ', 'leftAlt': '::'                     },
	\	'dosini':       { 'left': ';'                                         },
	\	'dot':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'dracula':      { 'left': ';'                                         },
	\	'dsl':          { 'left': ';'                                         },
	\	'dtml':         { 'left': '\<dtml-comment>', 'right': '</dtml-comment>' },
	\	'dylan':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'ebuild':       { 'left': '#'                                         },
	\	'ecd':          { 'left': '#'                                         },
	\	'eclass':       { 'left': '#'                                         },
	\	'eiffel':       { 'left': '--'                                        },
	\	'elf':          { 'left': "'"                                         },
	\	'elixir':       { 'left': '#'                                         },
	\	'elm':          { 'left': '--', 'leftAlt': '{--', 'rightAlt': '--}'   },
	\	'elmfilt':      { 'left': '#'                                         },
	\	'ember-script': { 'left': '#'                                         },
	\	'emblem':       { 'left': '/'                                         },
	\	'erlang':       { 'left': '%', 'leftAlt': '%%'                        },
	\	'eruby':        { 'left': '\<%#', 'right': '%>', 'leftAlt': '\<!--', 'rightAlt': '-->' },
	\	'esmtprc':      { 'left': '#'                                         },
	\	'exim':         { 'left': '#'                                         },
	\	'expect':       { 'left': '#'                                         },
	\	'exports':      { 'left': '#'                                         },
	\	'factor':       { 'left': '! ', 'leftAlt': '!# '                      },
	\	'fancy':        { 'left': '#'                                         },
	\	'faust':        { 'left': '//'                                        },
	\	'fgl':          { 'left': '#'                                         },
	\	'fluent':       { 'left': '#', 'leftAlt': '##'                        },
	\	'focexec':      { 'left': '-*'                                        },
	\	'form':         { 'left': '*'                                         },
	\	'fortran':      { 'left': '!'                                         },
	\	'foxpro':       { 'left': '*'                                         },
	\	'fsharp':       { 'left': '(*', 'right': '*)', 'leftAlt': '//'        },
	\	'fstab':        { 'left': '#'                                         },
	\	'fvwm':         { 'left': '#'                                         },
	\	'fx':           { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'gams':         { 'left': '*'                                         },
	\	'gdb':          { 'left': '#'                                         },
	\	'gdmo':         { 'left': '--'                                        },
	\	'gdscript3':    { 'left': '# ', 'leftAlt': '#'                        },
	\	'geek':         { 'left': 'GEEK_COMMENT:'                             },
	\	'genshi':       { 'left': '\<!--', 'right': '-->', 'leftAlt': '{#', 'rightAlt': '#}' },
	\	'gentoo-conf-d': { 'left': '#'                                        },
	\	'gentoo-env-d': { 'left': '#'                                         },
	\	'gentoo-init-d': { 'left': '#'                                        },
	\	'gentoo-make-conf': { 'left': '#'                                     },
	\	'gentoo-package-keywords': { 'left': '#'                              },
	\	'gentoo-package-mask': { 'left': '#'                                  },
	\	'gentoo-package-use': { 'left': '#'                                   },
	\	'gitcommit':    { 'left': '#'                                         },
	\	'gitconfig':    { 'left': ';'                                         },
	\	'gitignore':    { 'left': '#'                                         },
	\	'gitrebase':    { 'left': '#'                                         },
	\	'glsl':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'gnuplot':      { 'left': '#'                                         },
	\	'go':           { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'groff':        { 'left': '\#'                                        },
	\	'groovy':       { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'gsp':          { 'left': '\<%--', 'right': '--%>', 'leftAlt': '\<!--', 'rightAlt': '-->' },
	\	'gtkrc':        { 'left': '#'                                         },
	\	'h':            { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'haml':         { 'left': '-#', 'leftAlt': '/'                        },
	\	'handlebars':   { 'left': '{{!-- ', 'right': ' --}}'                  },
	\	'haskell':      { 'left': '--', 'nested': 0, 'leftAlt': '{-', 'rightAlt': '-}', 'nestedAlt': 1 },
	\	'haxe':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'hb':           { 'left': '#'                                         },
	\	'hbs':          { 'left': '{{!-- ', 'right': ' --}}'                  },
	\	'hercules':     { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'hive':         { 'left': '-- '                                       },
	\	'hocon':        { 'left': '//', 'leftAlt': '#'                        },
	\	'hog':          { 'left': '#'                                         },
	\	'hostsaccess':  { 'left': '#'                                         },
	\	'htmlcheetah':  { 'left': '##'                                        },
	\	'htmldjango':   { 'left': '{% comment %}', 'right': '{% endcomment %}', 'leftAlt': '{#', 'rightAlt': '#}' },
	\	'htmlos':       { 'left': '#', 'right': '/#'                          },
	\	'hxml':         { 'left': '#'                                         },
	\	'hyphy':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'ia64':         { 'left': '#'                                         },
	\	'icon':         { 'left': '#'                                         },
	\	'idl':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'idlang':       { 'left': ';'                                         },
	\	'idris':        { 'left': '{-', 'right': '-}', 'leftAlt': '--'        },
	\	'incar':        { 'left': '!'                                         },
	\	'inform':       { 'left': '!'                                         },
	\	'inittab':      { 'left': '#'                                         },
	\	'ishd':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'iss':          { 'left': ';'                                         },
	\	'ist':          { 'left': '%'                                         },
	\	'jade':         { 'left': '//', 'leftAlt': '//-'                      },
	\	'java':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'javacc':       { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'javascript':   { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'javascriptreact': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
	\	'javascript.jquery': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'},
	\	'jess':         { 'left': ';'                                         },
	\	'jgraph':       { 'left': '(*', 'right': '*)'                         },
	\	'jinja':        { 'left': '{#', 'right': '#}', 'leftAlt': '\<!--', 'rightAlt': '-->' },
	\	'jproperties':  { 'left': '#'                                         },
	\	'jsonc':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'jsonnet':      { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'jsp':          { 'left': '\<%--', 'right': '--%>'                    },
	\	'julia':        { 'left': '# ', 'leftAlt': '#=', 'rightAlt': '=#'     },
	\	'kivy':         { 'left': '#'                                         },
	\	'kix':          { 'left': ';'                                         },
	\	'kscript':      { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'lace':         { 'left': '--'                                        },
	\	'laravel':      { 'left': '{{--', 'right': '--}}'                     },
	\	'ldif':         { 'left': '#'                                         },
	\	'ledger':       { 'left': '#', 'leftAlt': ';'                         },
	\	'less':         { 'left': '/*', 'right': '*/'                         },
	\	'lhaskell':     { 'left': '>{-', 'right': '-}', 'leftAlt': '\>-- '    },
	\	'lilo':         { 'left': '#'                                         },
	\	'lilypond':     { 'left': '%'                                         },
	\	'liquid':       { 'left': '{% comment %}', 'right': '{% endcomment %}' },
	\	'lisp':         { 'left': ';', 'nested': 1, 'leftAlt': '#|', 'rightAlt': '|#', 'nestedAlt': 1 },
	\	'llvm':         { 'left': ';'                                         },
	\	'lotos':        { 'left': '(*', 'right': '*)'                         },
	\	'lout':         { 'left': '#'                                         },
	\	'lpc':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'lprolog':      { 'left': '%'                                         },
	\	'lscript':      { 'left': "'"                                         },
	\	'lss':          { 'left': '#'                                         },
	\	'lua':          { 'left': '--', 'leftAlt': '--[[', 'rightAlt': ']]'   },
	\	'lynx':         { 'left': '#'                                         },
	\	'lytex':        { 'left': '%'                                         },
	\	'm4':           { 'left': 'dnl '                                      },
	\	'mail':         { 'left': '> '                                        },
	\	'mako':         { 'left': '##'                                        },
	\	'man':          { 'left': '."'                                        },
	\	'mandoc':       { 'left': '.\\"'                                      },
	\	'map':          { 'left': '%'                                         },
	\	'maple':        { 'left': '#'                                         },
	\	'markdown':     { 'left': '\<!--', 'right': '-->'                     },
	\	'masm':         { 'left': ';'                                         },
	\	'mason':        { 'left': '\<% #', 'right': '%>'                      },
	\	'master':       { 'left': '$'                                         },
	\	'matlab':       { 'left': '%', 'leftAlt': '%{', 'rightAlt': '%}'      },
	\	'mel':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'meson':        { 'left': '#'                                         },
	\	'mib':          { 'left': '--'                                        },
	\	'minizinc':     { 'left': '% ', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'mips':         { 'left': '#'                                         },
	\	'mirah':        { 'left': '#'                                         },
	\	'mkd':          { 'left': '\<!---', 'right': '-->'                    },
	\	'mma':          { 'left': '(*', 'right': '*)'                         },
	\	'model':        { 'left': '$', 'right': '$'                           },
	\	'modula2':      { 'left': '(*', 'right': '*)'                         },
	\	'modula3':      { 'left': '(*', 'right': '*)'                         },
	\	'molpro':       { 'left': '!'                                         },
	\	'monk':         { 'left': ';'                                         },
	\	'mush':         { 'left': '#'                                         },
	\	'mustache':     { 'left': '{{!', 'right': '}}'                        },
	\	'nagios':       { 'left': ';'                                         },
	\	'named':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'nasm':         { 'left': ';'                                         },
	\	'nastran':      { 'left': '$'                                         },
	\	'natural':      { 'left': '/*'                                        },
	\	'ncf':          { 'left': ';'                                         },
	\	'newlisp':      { 'left': ';'                                         },
	\	'nginx':        { 'left': '#'                                         },
	\	'nimrod':       { 'left': '#'                                         },
	\	'nix':          { 'left': '#'                                         },
	\	'nroff':        { 'left': '\"'                                        },
	\	'nsis':         { 'left': '#'                                         },
	\	'ntp':          { 'left': '#'                                         },
	\	'objc':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'objcpp':       { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'objj':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'ocaml':        { 'left': '(*', 'right': '*)', 'nested': 1            },
	\	'occam':        { 'left': '--'                                        },
	\	'octave':       { 'left': '%', 'leftAlt': '#'                         },
	\	'omlet':        { 'left': '(*', 'right': '*)'                         },
	\	'omnimark':     { 'left': ';'                                         },
	\	'ooc':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'openroad':     { 'left': '//'                                        },
	\	'opl':          { 'left': 'REM'                                       },
	\	'ora':          { 'left': '#'                                         },
	\	'ox':           { 'left': '//'                                        },
	\	'paludis-use-conf': { 'left': '#'                                     },
	\	'pandoc':       { 'left': '\<!--', 'right': '-->'                     },
	\	'pascal':       { 'left': '{', 'right': '}', 'leftAlt': '(*', 'rightAlt': '*)' },
	\	'patran':       { 'left': '$', 'leftAlt': '/*', 'rightAlt': '*/'      },
	\	'pcap':         { 'left': '#'                                         },
	\	'pccts':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'pdf':          { 'left': '%'                                         },
	\	'perl':         { 'left': '#'                                         },
	\	'pfmain':       { 'left': '//'                                        },
	\	'php':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'pic':          { 'left': ';'                                         },
	\	'pike':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'pilrc':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'pine':         { 'left': '#'                                         },
	\	'plm':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'plsql':        { 'left': '-- ', 'leftAlt': '/*', 'rightAlt': '*/'    },
	\	'po':           { 'left': '#'                                         },
	\	'poscar':       { 'left': '!'                                         },
	\	'postscr':      { 'left': '%'                                         },
	\	'pov':          { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'povini':       { 'left': ';'                                         },
	\	'ppd':          { 'left': '%'                                         },
	\	'ppwiz':        { 'left': ';;'                                        },
	\	'praat':        { 'left': '#'                                         },
	\	'privoxy':      { 'left': '#'                                         },
	\	'processing':   { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'prolog':       { 'left': '%', 'leftAlt': '/*', 'rightAlt': '*/'      },
	\	'proto':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'ps1':          { 'left': '#'                                         },
	\	'psf':          { 'left': '#'                                         },
	\	'ptcap':        { 'left': '#'                                         },
	\	'pug':          { 'left': '//-', 'leftAlt': '//'                      },
	\	'puppet':       { 'left': '#'                                         },
	\	'pyrex':        { 'left': '# ', 'leftAlt': '#'                        },
	\	'python':       { 'left': '# ', 'leftAlt': '#'                        },
	\	'r':            { 'left': '#', 'leftAlt': '#'''                       },
	\	'racket':       { 'left': ';', 'nested': 1, 'leftAlt': '#|', 'rightAlt': '|#', 'nestedAlt': 1 },
	\	'radiance':     { 'left': '#'                                         },
	\	'ratpoison':    { 'left': '#'                                         },
	\	'rc':           { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'rebol':        { 'left': ';'                                         },
	\	'registry':     { 'left': ';'                                         },
	\	'rego':         { 'left': '#'                                         },
	\	'remind':       { 'left': '#'                                         },
	\	'renpy':        { 'left': '# '                                        },
	\	'resolv':       { 'left': '#'                                         },
	\	'rgb':          { 'left': '!'                                         },
	\	'rib':          { 'left': '#'                                         },
	\	'rmd':          { 'left': '\<!--', 'right': '-->', 'leftAlt': '#'     },
	\	'robot':        { 'left': '#'                                         },
	\	'robots':       { 'left': '#'                                         },
	\	'rspec':        { 'left': '#'                                         },
	\	'ruby':         { 'left': '#'                                         },
	\	'rust':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'sa':           { 'left': '--'                                        },
	\	'samba':        { 'left': ';', 'leftAlt': '#'                         },
	\	'sass':         { 'left': '//', 'leftAlt': '/*'                       },
	\	'sather':       { 'left': '--'                                        },
	\	'scala':        { 'left': '//', 'nested': 1, 'leftAlt': '/*', 'rightAlt': '*/', 'nestedAlt': 1 },
	\	'scheme':       { 'left': ';', 'nested': 1, 'leftAlt': '#|', 'rightAlt': '|#', 'nestedAlt': 1 },
	\	'scilab':       { 'left': '//'                                        },
	\	'scilla':       { 'left': '(*', 'right': '*)', 'nested': 1            },
	\	'scons':        { 'left': '#'                                         },
	\	'scsh':         { 'left': ';'                                         },
	\	'scss':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'sdc':          { 'left': '#'                                         },
	\	'sed':          { 'left': '#'                                         },
	\	'sentinel':     { 'left': '#', 'leftAlt': '/*', 'rightAlt': '*/'      },
	\	'sgmldecl':     { 'left': '--', 'right': '--'                         },
	\	'sgmllnx':      { 'left': '\<!--', 'right': '-->'                     },
	\	'sh':           { 'left': '#'                                         },
	\	'shader_test':  { 'left': '#'                                         },
	\	'sicad':        { 'left': '*'                                         },
	\	'sile':         { 'left': '%'                                         },
	\	'simula':       { 'left': '%', 'leftAlt': '--'                        },
	\	'sinda':        { 'left': '$'                                         },
	\	'skill':        { 'left': ';'                                         },
	\	'slang':        { 'left': '%'                                         },
	\	'slice':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'slim':         { 'left': '/', 'leftAlt': '/!'                        },
	\	'slrnrc':       { 'left': '%'                                         },
	\	'sls':          { 'left': '#'                                         },
	\	'sm':           { 'left': '#'                                         },
	\	'smarty':       { 'left': '{*', 'right': '*}'                         },
	\	'smil':         { 'left': '\<!', 'right': '>'                         },
	\	'smith':        { 'left': ';'                                         },
	\	'sml':          { 'left': '(*', 'right': '*)', 'nested': 1            },
	\	'snakemake':    { 'left': '#'                                         },
	\	'snippets':     { 'left': '#'                                         },
	\	'snnsnet':      { 'left': '#'                                         },
	\	'snnspat':      { 'left': '#'                                         },
	\	'snnsres':      { 'left': '#'                                         },
	\	'snobol4':      { 'left': '*'                                         },
	\	'spec':         { 'left': '#'                                         },
	\	'specman':      { 'left': '//'                                        },
	\	'spectre':      { 'left': '//', 'leftAlt': '*'                        },
	\	'spice':        { 'left': '$'                                         },
	\	'spin':         { 'left': '''', 'leftAlt': '{', 'rightAlt': '}'       },
	\	'sql':          { 'left': '-- ', 'leftAlt': '/*', 'rightAlt': '*/'    },
	\	'sqlforms':     { 'left': '-- '                                       },
	\	'sqlj':         { 'left': '-- '                                       },
	\	'sqr':          { 'left': '!'                                         },
	\	'squid':        { 'left': '#'                                         },
	\	'ss':           { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#'      },
	\	'sshconfig':    { 'left': '#'                                         },
	\	'sshdconfig':   { 'left': '#'                                         },
	\	'st':           { 'left': '"'                                         },
	\	'stan':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'stp':          { 'left': '/*', 'right': '*/', 'leftAlt': '//'        },
	\	'supercollider': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'    },
	\	'swift':        { 'left': '/*', 'right': '*/', 'leftAlt': '//'        },
	\	'systemverilog': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'    },
	\	'tads':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'tags':         { 'left': ';'                                         },
	\	'tak':          { 'left': '$'                                         },
	\	'tasm':         { 'left': ';'                                         },
	\	'tcl':          { 'left': '#'                                         },
	\	'teak':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'terraform':    { 'left': '#', 'leftAlt': '/*', 'rightAlt': '*/'      },
	\	'tex':          { 'left': '%'                                         },
	\	'texinfo':      { 'left': '@c '                                       },
	\	'texmf':        { 'left': '%'                                         },
	\	'tf':           { 'left': '#'                                         },
	\	'tidy':         { 'left': '#'                                         },
	\	'tli':          { 'left': '#'                                         },
	\	'tmux':         { 'left': '#'                                         },
	\	'toml':         { 'left': '#'                                         },
	\	'trasys':       { 'left': '$'                                         },
	\	'troff':        { 'left': '.\\"'                                      },
	\	'tsalt':        { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'tsscl':        { 'left': '#'                                         },
	\	'tssgm':        { 'left': "comment = '", 'right': "'"                 },
	\	'ttl':          { 'left': '#'                                         },
	\	'tup':          { 'left': '#'                                         },
	\	'twig':         { 'left': '{#', 'right': '#}'                         },
	\	'txt2tags':     { 'left': '%'                                         },
	\	'typescript':   { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'typescriptreact': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
	\	'uc':           { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'uc4':          { 'left': '!'                                         },
	\	'uil':          { 'left': '!'                                         },
	\	'upstart':      { 'left': '#'                                         },
	\	'vala':         { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'vasp':         { 'left': '!'                                         },
	\	'vb':           { 'left': "'"                                         },
	\	'velocity':     { 'left': '##', 'right': '', 'leftAlt': '#*', 'rightAlt': '*#' },
	\	'vera':         { 'left': '/*', 'right': '*/', 'leftAlt': '//'        },
	\	'verilog':      { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'     },
	\	'verilog_systemverilog': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' },
	\	'vgrindefs':    { 'left': '#'                                         },
	\	'vhdl':         { 'left': '--'                                        },
	\	'vim':          { 'left': '"'                                         },
	\	'vimperator':   { 'left': '"'                                         },
	\	'virata':       { 'left': '%'                                         },
	\	'vrml':         { 'left': '#'                                         },
	\	'vsejcl':       { 'left': '/*'                                        },
	\	'webmacro':     { 'left': '##'                                        },
	\	'wget':         { 'left': '#'                                         },
	\	'wikipedia':    { 'left': '\<!--', 'right': '-->'                     },
	\	'winbatch':     { 'left': ';'                                         },
	\	'wml':          { 'left': '#'                                         },
	\	'wvdial':       { 'left': ';'                                         },
	\	'xdefaults':    { 'left': '!'                                         },
	\	'xkb':          { 'left': '//'                                        },
	\	'xmath':        { 'left': '#'                                         },
	\	'xpm2':         { 'left': '!'                                         },
	\	'xquery':       { 'left': '(:', 'right': ':)'                         },
	\	'yaml':         { 'left': '#'                                         },
	\	'z8a':          { 'left': ';'                                         },
\}





" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ DEFAULT SETTINGS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"
" prefixes to global variables that is used to configure plugin
"
" Use:
"   let g:<s:setting_word>_<s:default_word>_<option_name> = <your_value>
"   let g:<s:setting_word>_<s:default_word>_<s:dictnry_word> = {
"   \ '<option_name>' : <value>,
"   \ ...
"   \ '<option_name>' : <value>,
"   \}
"
" Or (for certain type of file):
" 	let g:<s:setting_word>_<&filetype>_<option_name> = <your_value>
"   let g:<s:setting_word>_<&filetype>_<s:dictnry_word> = {
"   \ '<option_name>' : <value>,
"   \ ...
"   \ '<option_name>' : <value>,
"   \}
"
" Note: separate options overrides options into dictinories
"
" For example:
"   let g:nvxvpc_default_filler = '*'
"   let g:nvxvpc_default_bound  = 2
"   let g:nvxvpc_default_settings = {
"   \ 'margin' : 2,
"   \ 'filler' : '-',
"   }
"
" (As result filler will be '*')
"
" Or:
" 	let g:nvxvpc_cpp_filler = '*'
" 	let g:nvxvpc_rust_settings = {
" 	\ 'altfiller' : '^',
" 	\ 'levelstep' : 2,
" 	\ 'bound'     : 3,
" 	}
"

let s:setting_word = 'nvxvpc'
let s:default_word = 'default'
let s:dictnry_word = 'settings'

fun! s:ApplyExternalSettings(dict, ftname)
	let l:dict = a:dict

	let l:custsets = 'g:' . join([s:setting_word, a:ftname, s:dictnry_word], '_')
	if exists(l:custsets)
		let l:custsets = eval(l:custsets)
		call extend(l:dict, l:custsets)
	endif

	for l:key in keys(l:dict)
		let l:setting = 'g:' . join([s:setting_word, a:ftname, l:key], '_')
		if exists(l:setting)
			let l:dict[l:key] = eval(l:setting)
		endif
	endfor
endfun



" Options
"
" type      - values: def, alt (for cpp: // or /* %s */)
" closedef  - if 1 def comment closed: # --- %s --- #
" align     - values: left, right, center
" fillright - if 0 comment look like this: # --- %s
" width     - totally width of comment
" filler    - if filler = '~' then: # ~~~ %s ~~~
" altfiller - filler for type 'alt'
" margin    - space after comment opening sign
" padding   - number of filler signs after margin spaces
" bound     - space before text
" levelstep - indent per level

let s:settings = {
	\	'type':      'def',
	\	'closedef':  0,
	\	'align':     'center',
	\	'fillright': 1,
	\	'width':     &tw > 0 ? &tw : 78,
	\	'filler':    '~',
	\	'altfiller': 'NONE',
	\	'margin':    1,
	\	'padding':   2,
	\	'bound':     1,
	\	'levelstep': 4,
\}

" This dictionary will be filled when user call the
" comment inserting in file that had't been called yet
let s:ft_settings = { '' : s:settings }

call <SID>ApplyExternalSettings(s:settings, 'default')





" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PUBLIC FUNCTIONS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

fun! nvxvpc#InsertComment(...)
	if a:0 ==# 1
		let l:sets  = deepcopy(<SID>GetSettings())
		call extend(l:sets, a:1)
	elseif a:0 ==# 0
		let l:sets = <SID>GetSettings()
	else
		throw 'Invalid number of argument'
	endif

	let l:line = line('.')
	let l:text = trim(getline('.'))
	let l:com  = <SID>GenerateComment(l:sets, l:text)
	call append(l:line, l:com)
	normal! dd
endfun


fun! nvxvpc#SetOption(key, value)
	let s:settings[a:key] = a:value
endfun





" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~ ACCESSORY FUNCTIONS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Get settings depends on file type and user settings
fun! s:GetSettings()
	if has_key(s:ft_settings, &ft)
		return s:ft_settings[&ft]
	endif

	let l:sets = deepcopy(s:settings)
	call <SID>ApplyExternalSettings(l:sets, &ft)
	let s:ft_settings[&ft] = l:sets
	return l:sets
endfun



" Generate delimiters depends on option 'commentstring'
fun! s:GenerateDelimiters(commentstring)
		return [
		\		substitute(a:commentstring, '\([^ \t]*\)\s*%s.*', '\1', ''),
		\		substitute(a:commentstring, '.*%s\s*\(.*\)',      '\1', 'g'),
		\ ]
endfun


" Get delimiters depends on file type and user settings
fun! s:GetDelimiters_(isalt, closedef)
	let l:delims = get(s:delimiters, &ft, {})

	if a:isalt
		if has_key(l:delims, 'leftAlt')
			let l:beg = l:delims['leftAlt']
			let l:end = get(l:delims, 'rightAlt', l:beg)
			return [ l:beg, l:end ]
		endif
		return <SID>GetDelimiters(0, a:closedef)
	endif

	if has_key(l:delims, 'left')
		let l:beg = l:delims['left']
		let l:end = get(l:delims, 'right', a:closedef ? l:beg : '')
		return [ l:beg, l:end ]
	endif

	if has_key(l:delims, 'leftAlt')
		let l:beg = l:delims.leftAlt
		let l:end = get(l:delims, 'rightAlt', a:closedef ? l:beg : '')
		return [ l:beg, l:end ]
	endif

	let l:ds  = <SID>GenerateDelimiters(&commentstring)
	let l:beg = l:ds[0]
	let l:end = len(l:ds[1]) ? l:ds[1] : a:closedef ? l:beg : ''
	return [ l:beg, l:end ]
endfun


" Get delimiters and trim
fun! s:GetDelimiters(isalt, closedef)
	let l:delims = <SID>GetDelimiters_(a:isalt, a:closedef)
	return [ trim(l:delims[0]), trim(l:delims[1]) ]
endfun



" Generate comment depends on file type, user settings
" and text that must be placd into comment
fun! s:GenerateComment(sets, text)
	" set beg, end
	let l:ds = <sid>GetDelimiters(a:sets.type ==# 'alt', a:sets.closedef)
	let l:beg = l:ds[0] . repeat(' ', a:sets.margin)
	let l:end = !len(l:ds[1]) ? '' : repeat(' ', a:sets.margin) . l:ds[1]
	let l:flr = a:sets.type !=# 'alt' || a:sets.altfiller ==# 'NONE' ?
	\           a:sets.filler : a:sets.altfiller

	" set center
	if a:sets.align ==# 'left'
		let l:cnt  = repeat(l:flr, a:sets.padding)
		let l:cnt .= repeat(' ', a:sets.bound)
		let l:cnt .= a:text
		let l:cnt .= repeat(' ', a:sets.bound)
		let l:len  = a:sets.width    - strchars(l:beg) -
		\            strchars(l:end) - strchars(l:cnt)
		let l:cnt .= repeat(l:flr, l:len)

	elseif a:sets.align ==# 'right'
		let l:cnt = repeat(l:flr, a:sets.padding)
		let l:cnt = repeat(' ', a:sets.bound) . l:cnt
		let l:cnt = a:text . l:cnt
		let l:cnt = repeat(' ', a:sets.bound) . l:cnt
		let l:len = a:sets.width    - strchars(l:beg) -
		\           strchars(l:end) - strchars(l:cnt)
		let l:cnt = repeat(l:flr, l:len) . l:cnt

	elseif a:sets.align ==# 'center'
		let l:cnt  = repeat(' ', a:sets.bound)
		let l:cnt .= a:text
		let l:cnt .= repeat(' ', a:sets.bound)
		let l:len  = a:sets.width    - strchars(l:beg) -
		\            strchars(l:end) - strchars(l:cnt)
		let l:cnt  = repeat(l:flr, l:len/2) . l:cnt .
		\            repeat(l:flr, l:len - l:len/2)

	else
		throw 'Unknown alignement: ' . a:sets.align
	endif


	return l:beg . l:cnt . l:end
endfun





" END
