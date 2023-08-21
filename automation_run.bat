echo off
echo "Pulling in all the Source Code"
git clone https://github.com/sureshnanjan/python_robot_training.git
cd python_robot_training
python -m venv venv
.\venv\Scripts\activate.bat
pip install -r requirements.txt
pabot tests