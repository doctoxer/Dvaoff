if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/doctoxer/DVaUpgraded.git /DVaUpgraded
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DVaUpgraded
fi
cd /DVaUpgraded
pip3 install -U -r requirements.txt
echo "Starting DVa RoBot...."
python3 bot.py