%Module for the client in CSMA/CA
function [png] = PDF_ClientCD()

png.PN_name = 'Client'; % module name or label
png.set_of_Ps = {'pReady', 'pSend','pNbSent'}; % set of places
png.set_of_Ts = {'tGen','tToSend','tWaitColl','tSend'}; % set of transitions 
png.set_of_As = {'tGen','pReady',1,'pReady','tToSend',1,...
    'pReady','tWaitColl',1,'tWaitColl','pReady',1,...
    'tToSend','pSend',1,'pSend','tSend',1,'tSend','pNbSent',1}; % set of arcs

png.set_of_Ports = {'tSend'};
