function [outputArg1,outputArg2] = dtmfdecode(inputArg1,inputArg2)
%decoding dtmf using filters
filter = (2/L)*cos((2*pi*fb*n)/fs);
outputArg1 = inputArg1;
outputArg2 = inputArg2;
end

