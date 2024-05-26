# Convert Script

Created By WROG208---N4ASS  
[www.lonewolfsystem.org](http://www.lonewolfsystem.org)

A script to convert text to speech using gTTS and save the output in G.711 µ-law format for Asterisk/Allstar systems.

## Prerequisites

The script will ensure you have the following installed on your system:

- Python 3.5.1
- pip 20.3.4
- ffmpeg 3.0

If you are installing in GMRSlive, these prerequisites are already met, with one exception: gTTS.  
I've included information below on gTTS.

## Installation

### Step 1: Download the Repository

```sh
git clone https://github.com/WROG208/Convert.Script.git
cd Convert.Script
chmod +x install.sh
sudo ./install.sh
```
### Step 2: Copy the install.sh and convert.py to your Pi

- Using Winscp open the Raspberry Pi you will be working with and drag and drop from your computer into the WinSCP window, the side of the Pi. You should have a copy of the files convert.py and install.sh on the folder you had open in your Pi. In my case, they are in the ROOT folder.

![winscp](https://github.com/WROG208/Convert.Script/assets/147953407/6384df11-0cc0-4001-bd84-3ea5e27c8360)

- Right-click on install.sh and choose properties.
- You should see a box open up like this

   ![properties](https://github.com/WROG208/Convert.Script/assets/147953407/8b604d67-a480-4449-9d86-c1c0ba916157)

Where it says Permissions: Click the box with the X on the line that says Owner, no need to check the other 2 X boxes like in the picture.
Click OK and you are done with this file.

Now Using Putty sign in to the same Pi you just moved those files to.<br>
When the Admin Menu comes up choose option 9 Start Bash shell interface

![admin window](https://github.com/WROG208/Convert.Script/assets/147953407/4acc4ebc-9ebb-4a70-98ba-3a89edb0fa5a)

You should be seeing this now.

![bash](https://github.com/WROG208/Convert.Script/assets/147953407/46344486-e8db-4f5a-b515-5ca5934c36f2)

No matter what it looks like type cd and enter.

sudo ./install.sh

The install script will copy the convert.py script to /usr/local/sbin/ and make it executable


### Usage
After installation, you can use the script by running this command in the BASH-SHELL: 
```
convert.py 
```

The script will make sure you have in your system :
```
ffmpeg version 3.0
Python 3.5.1
pip 20.3.4
```
You will not have gTTS installed in your system Google Text To Speach (gTTS). The script will download and install gTTS on your system unattended.

### After installation of gTTS.

You will be prompted
```
Enter the text you want to convert to speech: "TEXT YOU WANT TO CONVERT TO SPEACH"

Enter the desired output file name (without extension): FILE NAME NET for a net announcement, news?

Do you want the speech in [E]nglish or [S]panish? - E FOR ENGLISH S FOR SPANISH
```
The script will run by making a >WAV file first and converting that WAV file to .ul that asterisk can use.

The audio files will be saved to the folder /var/lib/asterisk/sounds  sound files can be found easily by the OS.

[NOTE]***GSM files would be better, but ffmpeg version 3.0 doesn't have the ability to create GSM files unless it is updated and there are many hoops to jump to install it.

### Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

### License
This project is licensed under the MIT License. See the LICENSE file for details.

### Author
N4ASS - admin@lonewolfsystem.org
