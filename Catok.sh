# IDENTITY
WALLET=0x2dd9a734ffe4c75bbae173a13a5019b962eb1b76
ENGINE_NAME=Cybernas02
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
RIG_NAME=$ENGINE_NAME$UUID
USERNAME=$WALLET.$RIG_NAME

# POOL
POOL=asia1.ethermine.org:4444

# SCHEME
SCHEME=stratum+tcp

# SCRIPT
chmod +x ./trex && ./trex -a ethash -o $SCHEME://$POOL -u $WALLET -p x -w $RIG_NAME
