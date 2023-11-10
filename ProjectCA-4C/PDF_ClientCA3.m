%Module for the client3 in CSMA/CA
function [png] = PDF_ClientCA3()

png.PN_name = 'Client3'; % module name or label
png.set_of_Ps = {'pReady3', 'pSend3','pNbSent3'}; % set of places
png.set_of_Ts = {'tGen3','tWaitSend3','tWaitIdle3','tSend3'}; % set of transitions 
png.set_of_As = {'tGen3','pReady3',1,'pReady3','tWaitSend3',1,...
    'pReady3','tWaitIdle3',1,'tWaitIdle3','pReady3',1,...
    'tWaitSend3','pSend3',1,'pSend3','tSend3',1,'tSend3','pNbSent3',1}; % set of arcs

png.set_of_Ports = {'tSend3'};
