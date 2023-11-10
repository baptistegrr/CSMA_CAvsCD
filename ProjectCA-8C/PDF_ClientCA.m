%Module for the client1 in CSMA/CA
function [png] = PDF_ClientCA()

png.PN_name = 'Client1'; % module name or label
png.set_of_Ps = {'pReady', 'pSend','pNbSent'}; % set of places
png.set_of_Ts = {'tGen','tWaitSend','tWaitIdle','tSend'}; % set of transitions 
png.set_of_As = {'tGen','pReady',1,'pReady','tWaitSend',1,...
    'pReady','tWaitIdle',1,'tWaitIdle','pReady',1,...
    'tWaitSend','pSend',1,'pSend','tSend',1,'tSend','pNbSent',1}; % set of arcs

png.set_of_Ports = {'tSend'};
