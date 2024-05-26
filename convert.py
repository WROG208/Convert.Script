#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import os
import subprocess
from tempfile import NamedTemporaryFile

def install_gtts():
    try:
        subprocess.check_call([sys.executable, "-m", "pip", "install", "gtts", "--trusted-host", "pypi.org", "--trusted-host", "files.pythonhosted.org"])
    except subprocess.CalledProcessError:
        print("Failed to install gtts. Please install it manually using the following steps:")
        print("1. Download the gtts package: wget https://files.pythonhosted.org/packages/8e/78/3498b0e5b98ed9e3d477d46c72a8c82b63a0846c1eeb63495b1e0a59a9f8/gTTS-2.2.3.tar.gz")
        print("2. Extract the package: tar xzf gTTS-2.2.3.tar.gz")
        print("3. Navigate to the extracted directory: cd gTTS-2.2.3")
        print("4. Install the package: sudo python3 setup.py install")
        sys.exit(1)

def check_and_install_gtts():
    try:
        import gtts
    except ImportError:
        print("gtts is not installed. Installing now...")
        install_gtts()
        try:
            import gtts
        except ImportError:
            print("Failed to install gtts. Please install it manually using the steps mentioned above.")
            sys.exit(1)

def convert_text_to_speech():
    text_to_convert = input("Enter the text you want to convert to speech: ").strip()
    output_filename_base = input("Enter the desired output file name (without extension): ").strip()
    lang_choice = input("Do you want the speech in [E]nglish or [S]panish? - ").strip().lower()

    if not text_to_convert or not output_filename_base or lang_choice not in ['e', 's']:
        print("Invalid input. Please try again.")
        return

    lang = 'en' if lang_choice == 'e' else 'es'
    

    output_folder_ul = "/var/lib/asterisk/sounds"


    os.makedirs(output_folder_ul, exist_ok=True)


    output_filename_ul = os.path.join(output_folder_ul, "{}.ul".format(output_filename_base))


    with NamedTemporaryFile(suffix=".wav", delete=False) as temp_wav:
        temp_wav_filename = temp_wav.name

    try:

        from gtts import gTTS
        tts = gTTS(text=text_to_convert, lang=lang)
        tts.save(temp_wav_filename)


        command = ['ffmpeg', '-i', temp_wav_filename, '-ar', '8000', '-ac', '1', '-f', 'mulaw', output_filename_ul]
        subprocess.run(command, check=True)


        os.remove(temp_wav_filename)
        print("The speech has been saved as {} and the temporary WAV file has been deleted.".format(output_filename_ul))
    except subprocess.CalledProcessError as e:
        print("An error occurred during the conversion process: {}".format(e))
        if os.path.exists(temp_wav_filename):
            os.remove(temp_wav_filename)

check_and_install_gtts()
convert_text_to_speech()
