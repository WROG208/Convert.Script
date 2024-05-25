#  Convert Script
## Created By WROG208---N4ASS <br>www.lonewolfsystem.org
# A script to convert text to speech using gTTS and save the output in G.711 µ-law format for Asterisk/Allstar systems.


## Prerequisites

The script will Ensure you have the following installed on your system:
- Python 3.5.1
- pip 20.3.4
- ffmpeg 3.0
- If you are installing in GMRSlive these prerequisites are already met. With one exception gTTS.
- I've included information below on gTTS.

## Installation

### Step 1: Clone the Repository

```
git clone https://github.com/yourusername/convert-script.git

cd convert-script
```
### Step 2: Run the Install Script
```
sudo ./install.sh

The install script will copy the convert.py script to /usr/local/sbin/ and make it executable
```

### Usage
After installation, you can use the script by running: 
```
convert.py 
```
in the BASH=SHELL

The script will make sure you have in your system :
```
ffmpeg version 3.0
Python 3.5.1
pip 20.3.4

You will not have gTTS which is Google Text To Speach. The script will download and install gTTS on your system unattended.
```
### After installation 

You will be prompted
```
Enter the text you want to convert to speech: "TEXT YOU WANT TO CONVERT TO SPEACH"

Enter the desired output file name (without extension): FILE NAME NET for a net announcement, news?

Do you want the speech in [E]nglish or [S]panish? - E FOR ENGLISH S FOR SPANISH
```
The script will run by making a >WAV file first and converting that WAV file to .ul that asterisk can use.

****GSM files could be made, but ffmpeg has to be updated and there are many hoops to jump to install it on the image.

The audio files will be saved to the folder /var/lib/asterisk/sounds  sound files can be found easily by the OS.

### Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

### License
This project is licensed under the MIT License. See the LICENSE file for details.

### Author
N4ASS - admin@lonewolfsystem.org
