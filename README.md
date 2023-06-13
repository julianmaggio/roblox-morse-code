# Morse Code Conversion Scripts

This repository contains two scripts that allow you to convert text to Morse code and visualize it using different methods. Additionally, a third script is provided that prints out the Morse code without any visualization.

## Script 1: Beep Sound Conversion

This script uses a beep sound to represent the Morse code. Each dot is represented by a short beep, and each dash is represented by a longer beep. The script plays the corresponding beeps for the Morse code and pauses between beeps to create a clear distinction.

### Usage

1. Replace the value of `BeepSound` with the name of your sound object.
2. Adjust the values of `DotDuration`, `DashDuration`, `BeepPitch`, and `ConversionInterval` to your desired settings.
3. Replace the value of `textToConvert` inside the `startConversion` function with your desired text input.
4. Run the script.

## Script 2: Light Flicker Conversion

This script uses a light source to represent the Morse code. Each dot is represented by a flicker of the light, and each dash is represented by a longer flicker. The script adjusts the brightness of the light source to create the flickering effect.

### Usage

1. Replace the value of `Light` with the name of your light object.
2. Adjust the values of `FlickerDuration`, `FlickerIntensity`, and `ConversionInterval` to your desired settings.
3. Replace the value of `textToConvert` inside the `startConversion` function with your desired text input.
4. Run the script.

## Script 3: Morse Code Printing

This script prints out the Morse code without any visualization. It takes the input text and converts it to Morse code using a table that maps each character to its corresponding Morse code representation.

### Usage

1. Replace the value of `textToConvert` inside the `startConversion` function with your desired text input.
2. Run the script.

Feel free to modify these scripts to suit your specific needs and integrate them into your projects. Enjoy Morse code conversion and exploration!