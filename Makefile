

build-static:
	nuitka --standalone -o pgcli_executable pgcli --python-flag=-m --follow-imports --include-module=pgspecial --include-module=psycopg2 --include-data-files=./pgcli/packages/pgliterals/pgliterals.json=pgcli/packages/pgliterals/pgliterals.json --include-data-files=./pgcli/pgclirc=pgcli/pgclirc

build-onefile:
	nuitka --onefile -o pgcli.exe pgcli --python-flag=-m --follow-imports --include-module=pgspecial --include-module=psycopg --include-data-files=./pgcli/packages/pgliterals/pgliterals.json=pgcli/packages/pgliterals/pgliterals.json --include-data-files=./pgcli/pgclirc=pgcli/pgclirc           


build-onefile-in-docker:
	docker run -it --rm -v $(PWD):/src -w /src rockylinux:8 bash
