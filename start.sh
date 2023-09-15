if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dmxbasil/Mf-af-v5-kyb
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /charlie
fi
cd /charlie
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
