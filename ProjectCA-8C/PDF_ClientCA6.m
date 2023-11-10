%Module for the client6 in CSMA/CA
function [png] = PDF_ClientCA6()

png.PN_name = 'Client6'; % module name or label
png.set_of_Ps = {'pReady6', 'pSend6','pNbSent6'}; % set of places
png.set_of_Ts = {'tGen6','tWaitSend6','tWaitIdle6','tSend6'}; % set of transitions 
png.set_of_As = {'tGen6','pReady6',1,'pReady6','tWaitSend6',1,...
    'pReady6','tWaitIdle6',1,'tWaitIdle6','pReady6',1,...
    'tWaitSend6','pSend6',1,'pSend6','tSend6',1,'tSend6','pNbSent6',1}; % set of arcs

png.set_of_Ports = {'tSend6'};
