dnf install -y 'dnf-command(config-manager)'
dnf install -y 'dnf-command(config-manager)'
dnf config-manager --set-enabled powertools

dnf install -y epel-release

dnf install -y gcc make python3-devel python3-pip
dnf install -y python3.8 python38-devel python38-pip python38-Cython
dnf install -y patchelf
dnf install -y postgresql-devel
python3.8 -m venv venv
source venv/bin/activate
pip install --upgrade pip

pip install pgspecial zstandard configobj "cli_helpers[styles]" Nuitka  "psycopg[c]" prompt_toolkit pygments 
