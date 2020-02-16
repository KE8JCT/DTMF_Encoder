phonenum = [3 3 4 3 3 2 4 3 3 3];
dtmfdial(phonenum);

L = 64;
fs = 8000;
fb = 770;
n = 1;


filter = (2/L)*cos((2*pi*fb*n)/fs);
stem(filter);

%{
tonelistx = [697, 697, 697, 770, 770, 770, 852, 852, 852, 941, 941, 941];
tonelisty = [1209, 1336, 1477, 1209, 1336, 1477, 1209, 1336, 1477, 1336, 1209, 1477];
    
fs = 8000;
tt = 0:(1/fs):.5;
for kk = 1:length(phonenum)
freqx = (phonenum(kk));
freqy = (phonenum(kk));
tonex = sin(2*pi*tonelistx(freqx)*tt);
toney = sin(2*pi*tonelisty(freqy)*tt);

tone = tonex + toney;
sound(tone, fs);

pause(.6);

end
%} 
