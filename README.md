# Convert Script

Created By WROG208---N4ASS  
[www.lonewolfsystem.org](http://www.lonewolfsystem.org)

A script to convert text to speech using gTTS and save the output in G.711 µ-law format for Asterisk/Allstar systems.

## Prerequisites

The script will ensure you have the following installed on your system:

- Python 3.5.1
- pip 20.3.4
- ffmpeg 3.0

If you are installing in GMRSlive, some prerequisites are unmet, pip and gTTS.  
will be downloaded and installed in your system the first time you run the script.

## Installation
Using Putty sign in to the Pi you want to install this script in.<br>
When the Admin Menu comes up choose option 9 Start the Bash shell interface

![admin window](https://github.com/WROG208/Convert.Script/assets/147953407/4acc4ebc-9ebb-4a70-98ba-3a89edb0fa5a)

You should be seeing this now.

![bash](https://github.com/WROG208/Convert.Script/assets/147953407/46344486-e8db-4f5a-b515-5ca5934c36f2)

Type cd and enter. That will take you to the Root folder of the Pi


### Step 1: Download the Repository. Run each command one by one. After entering each command hit enter.

```sh
git clone https://github.com/WROG208/Convert.Script.git

cd Convert.Script

chmod +x install.sh

sudo ./install.sh
```

### Step 2: Run this command to test the script was installed correctly.
```
convert.py --help

```

You will be prompted
```
Enter the text you want to convert to speech: "TEXT YOU WANT TO CONVERT TO SPEACH"

Enter the desired output file name (without extension): FILE NAME NET for a net announcement, news?

Do you want the speech in [E]nglish or [S]panish? - E FOR ENGLISH S FOR SPANISH
```
The script will run by making a WAV file first and converting that WAV file to .ul that asterisk can use.

### Usage
After installation, you can use the script by running this command in the BASH-SHELL: 
```
convert.py 
```

### Audio files location.

The audio files will be saved to the folder /var/lib/asterisk/sounds  sound files can be found easily by the OS.

[NOTE]***GSM files would be better, but ffmpeg version 3.0 doesn't have the ability to create GSM files unless it is updated and there are many hoops to jump to install it.

### Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

### License
This project is licensed under the MIT License. See the LICENSE file for details.

### Author
N4ASS - admin@lonewolfsystem.org
