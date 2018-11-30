%clear all;

IP = '169.254.104.220';
%PC IP = '
port = 14000;
numberOfSamples = 2000000;
%t = tcpclient(IP,port); 

% %read(dataIn)
dataReadIn = [];
% 
t = tcpip('0.0.0.0', port, 'NetworkRole', 'server');    
t.InputBufferSize = 10000;
t.ByteOrder = 'littleEndian';
fopen(t);
while (length(dataReadIn)<numberOfSamples)
    %t.BytesAvailable
    if (t.BytesAvailable > 0)       
        dataReadIn = [dataReadIn,fread(t, t.BytesAvailable/2,'int16')'];
    end
end
%dataReadIn = dataReadIn/4;
x =  1:1:length(dataReadIn);
plot(x,dataReadIn);
