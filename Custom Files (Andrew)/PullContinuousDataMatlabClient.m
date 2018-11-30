%clear all;

IP = '169.254.104.220';
%PC IP = '
port = 14000;
numberOfSamples = 20000000;
t = tcpclient(IP,port); 

dataReadIn = [];
while(length(dataReadIn)<numberOfSamples)
    %t.BytesAvailable
    dataReadIn = [dataReadIn,read(t,t.BytesAvailable,'int16')];
end

x =  1:1:length(dataReadIn);
