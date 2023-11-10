%Module for the client7 in CSMA/CA
function [png] = PDF_ClientCA7()

png.PN_name = 'Client7'; % module name or label
png.set_of_Ps = {'pReady7', 'pSend7','pNbSent7'}; % set of places
png.set_of_Ts = {'tGen7','tWaitSend7','tWaitIdle7','tSend7'}; % set of transitions 
png.set_of_As = {'tGen7','pReady7',1,'pReady7','tWaitSend7',1,...
    'pReady7','tWaitIdle7',1,'tWaitIdle7','pReady7',1,...
    'tWaitSend7','pSend7',1,'pSend7','tSend7',1,'tSend7','pNbSent7',1}; % set of arcs

png.set_of_Ports = {'tSend7'};
