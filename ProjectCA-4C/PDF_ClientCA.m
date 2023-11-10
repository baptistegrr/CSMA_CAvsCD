%Module for the client1 in CSMA/CA
function [png] = PDF_ClientCA()

png.PN_name = 'Client1';
png.set_of_Ps = {'pReady', 'pSend','pNbSent'}; 
png.set_of_Ts = {'tGen','tWaitSend','tWaitIdle','tSend'}; 
png.set_of_As = {'tGen','pReady',1,'pReady','tWaitSend',1,...
    'pReady','tWaitIdle',1,'tWaitIdle','pReady',1,...
    'tWaitSend','pSend',1,'pSend','tSend',1,'tSend','pNbSent',1}; 

png.set_of_Ports = {'tSend'};
