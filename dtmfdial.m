function tones = dtmfdial(phonenum)
%{ 
DTMFDIAL creates a vector of tones which will dial a DTMF / Touch Tone
telephone system. 

usage: tones = dtmfdial(nums)
    nums = vector of numbers ranging from 1 to 12
    tones = vector containing the corresponding tones
%}
%nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]; %11 = *, 12 = #
tonelistx = [697, 697, 697, 770, 770, 770, 852, 852, 852, 941, 941, 941];
tonelisty = [1209, 1336, 1477, 1209, 1336, 1477, 1209, 1336, 1477, 1336, 1209, 1477];

    if (nargin < 1)
        error('DTMFDIAL requires one input');
    end
    
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
if kk==1
   pause(.5); %Don't know why it works but it does 
end
end
end

