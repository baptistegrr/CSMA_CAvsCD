%Module for the client in CSMA/CA
function [png] = PDF_ClientCD4()

png.PN_name = 'Client4'; % module name or label
png.set_of_Ps = {'pReady4', 'pSend4','pNbSent4'}; % set of places
png.set_of_Ts = {'tGen4','tToSend4','tWaitColl4','tSend4'}; % set of transitions 
png.set_of_As = {'tGen4','pReady4',1,'pReady4','tToSend4',1,...
    'pReady4','tWaitColl4',1,'tWaitColl4','pReady4',1,...
    'tToSend4','pSend4',1,'pSend4','tSend4',1,'tSend4','pNbSent4',1}; % set of arcs

png.set_of_Ports = {'tSend4'};
