

build-static:
	nuitka3 --standalone -o pgcli_executable pgcli --python-flag=-m --follow-imports --include-module=pgspecial --include-module=psycopg2 --include-data-files=./pgcli/packages/pgliterals/pgliterals.json=pgcli/packages/pgliterals/pgliterals.json --include-data-files=./pgcli/pgclirc=pgcli/pgclirc

build-onefile:
	nuitka3 --onefile -o pgcli_executable pgcli --python-flag=-m --follow-imports --include-module=pgspecial --include-module=psycopg2 --include-data-files=./pgcli/packages/pgliterals/pgliterals.json=pgcli/packages/pgliterals/pgliterals.json --include-data-files=./pgcli/pgclirc=pgcli/pgclirc           
