apk add gcc make python3 py3-pip patchelf postgresql-dev pyton3-dev musl-dev linux-headers

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip
pip install pgspecial zstandard configobj "cli_helpers[styles]" Nuitka  "psycopg[c]" prompt_toolkit pygments 

nuitka --show-progress --onefile -o pgcli-$(uname -o | cut -d / -f 2)-musl-$(uname -m).exe pgcli --python-flag=-m --follow-imports --include-module=pgspecial --include-module=psycopg --include-data-files=./pgcli/packages/pgliterals/pgliterals.json=pgcli/packages/pgliterals/pgliterals.json --include-data-files=./pgcli/pgclirc=pgcli/pgclirc


