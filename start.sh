if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/doctoxer/Dvaoff.git /Dvaoff
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dvaoff
fi
cd /Dvaoff
pip3 install -U -r requirements.txt
echo "Starting DVa RoBot...."
python3 bot.py
