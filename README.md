# Phone-Number-Audio-Decoder
This program reads in an audio file that has phone keys being pressed and outputs the phone number using the Fourier transform and DTMF keypad frequencies  

## Intro

This program applies the knowledge of frequency analysis to decode a ten-digit phone number. Each tone made by dialing a telephone button can be deciphered as a combination of two frequencies. The Fourier transform converts a signal from time to frequency domain. We can use Fourier transform on specific windows of time of the given audio files to decode the phone numbers. 
