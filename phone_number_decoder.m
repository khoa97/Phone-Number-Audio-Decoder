% Program created by Khoa Nguyen and James Lin

clear; 
[x,fs] = audioread('phone1.wav');
t = (1:length(x))/fs; % Time Vector
phone_number = [];   % New vector to store phone digits
xlabel('time');

intervals =  0.1:1.1:11.5; % Slices the graph to take individual fourier transform
                          % 11.5 is the length of the audio clip in seconds
for i = 1:10
    start_sample =int64(intervals(i)*fs); %Calculate the start sample
    end_sample =  int64(intervals(i+1)*fs); %Calculate the end sample
    
    a = x(start_sample:end_sample); % new smaller x vector
    
    [X,f] = myFFT(a,fs);
    [xval,yval] = findpeaks(abs(X),f,'SortStr','descend'); %% find all peaks in decending orde
   
    freq1 = round(yval(2)); % yval(2) and yval(4) are the two highest frequencies.
    freq2 = round(yval(4)); % yval(1) and yval(3) are the negative frequencies so we ignore
                                                           
% Matching the frequencies to phone number
      if (freq1== 1209 && freq2 ==697)
        phone_number(i) = 1;end
      if(freq1== 1336 && freq2 ==697)
        phone_number(i) = 2;end
      if (freq1== 1477 && freq2 ==697)
        phone_number(i) = 3;end
      if (freq1== 1209 && freq2 ==770)
        phone_number(i) = 4;end
      if (freq1== 1336 && freq2 ==770)
        phone_number(i) = 5;end
      if (freq1== 1477 && freq2 ==770)
        phone_number(i) = 6;end
      if (freq1== 1209 && freq2 ==852)
        phone_number(i) = 7;end
      if (freq1== 1336 && freq2 ==852)
        phone_number(i) = 8;end
      if (freq1== 1477 && freq2 ==852)
        phone_number(i) = 9;end
      if (freq1== 1336 && freq2 ==941)
        phone_number(i) = 0;end
     
    if (freq2== 1209 && freq1 ==697)
        phone_number(i) = 1;end
      if(freq2== 1336 && freq1 ==697)
        phone_number(i) = 2;end
      if (freq2== 1477 && freq1 ==697)
        phone_number(i) = 3;end
      if (freq2== 1209 && freq1 ==770)
        phone_number(i) = 4;end
      if (freq2== 1336 && freq1 ==770)
        phone_number(i) = 5;end
      if (freq2== 1477 && freq1 ==770)
        phone_number(i) = 6;end
      if (freq2== 1209 && freq1 ==852)
        phone_number(i) = 7;end
      if (freq2== 1336 && freq1 ==852)
        phone_number(i) = 8;end
      if (freq2== 1477 && freq1 ==852)
        phone_number(i) = 9;end
      if (freq2== 1336 && freq1 ==941)
        phone_number(i) = 0;end

end 
    
        
    disp(phone_number);
    
      