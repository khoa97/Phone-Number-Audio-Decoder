# Phone-Number-Audio-Decoder
This program reads in an audio file that has phone keys being pressed and outputs the phone number using the Fourier transform and DTMF keypad frequencies  

## Intro

This program applies the knowledge of frequency analysis to decode a ten-digit phone number. Each tone made by dialing a telephone button can be deciphered as a combination of two frequencies. The Fourier transform converts a signal from time to frequency domain. We can use Fourier transform on specific windows of time of the given audio files to decode the phone numbers. 

![picture1](https://user-images.githubusercontent.com/36385404/36336717-4947ccfc-1358-11e8-9518-6fd11f3b56a5.png)

Here we can see 10 instances of a phone number being dialed. If we take the Fourer transfrom at each instance in a certain time interval, we can determine what number was dialed. Here is an example of what the Fourier transform looks like for the first number dialed in the audio file. 

![picture2](https://user-images.githubusercontent.com/36385404/36336808-4305ab9c-1359-11e8-915c-117d9500d6c5.png)

Looking at a dtmf frequency table, we can see that two values correspond to a number 9 being dialed 

