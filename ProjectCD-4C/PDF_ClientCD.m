%Module for the client in CSMA/CD
function [png] = PDF_ClientCD()

png.PN_name = 'Client';
png.set_of_Ps = {'pReady', 'pSend','pNbSent'}; 
png.set_of_Ts = {'tGen','tToSend','tWaitColl','tSend'};
png.set_of_As = {'tGen','pReady',1,'pReady','tToSend',1,...
    'pReady','tWaitColl',1,'tWaitColl','pReady',1,...
    'tToSend','pSend',1,'pSend','tSend',1,'tSend','pNbSent',1}; 

png.set_of_Ports = {'tSend'};
