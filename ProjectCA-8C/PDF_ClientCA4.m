%Module for the client4 in CSMA/CA
function [png] = PDF_ClientCA4()

png.PN_name = 'Client4'; % module name or label
png.set_of_Ps = {'pReady4', 'pSend4','pNbSent4'}; % set of places
png.set_of_Ts = {'tGen4','tWaitSend4','tWaitIdle4','tSend4'}; % set of transitions 
png.set_of_As = {'tGen4','pReady4',1,'pReady4','tWaitSend4',1,...
    'pReady4','tWaitIdle4',1,'tWaitIdle4','pReady4',1,...
    'tWaitSend4','pSend4',1,'pSend4','tSend4',1,'tSend4','pNbSent4',1}; % set of arcs

png.set_of_Ports = {'tSend4'};
