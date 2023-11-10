%Module for the client in CSMA/CA
function [png] = PDF_ClientCD6()

png.PN_name = 'Client6'; % module name or label
png.set_of_Ps = {'pReady6', 'pSend6','pNbSent6'}; % set of places
png.set_of_Ts = {'tGen6','tToSend6','tWaitColl6','tSend6'}; % set of transitions 
png.set_of_As = {'tGen6','pReady6',1,'pReady6','tToSend6',1,...
    'pReady6','tWaitColl6',1,'tWaitColl6','pReady6',1,...
    'tToSend6','pSend6',1,'pSend6','tSend6',1,'tSend6','pNbSent6',1}; % set of arcs

png.set_of_Ports = {'tSend6'};
