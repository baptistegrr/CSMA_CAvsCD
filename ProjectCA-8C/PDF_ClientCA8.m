%Module for the client8 in CSMA/CA
function [png] = PDF_ClientCA8()

png.PN_name = 'Client8'; % module name or label
png.set_of_Ps = {'pReady8', 'pSend8','pNbSent8'}; % set of places
png.set_of_Ts = {'tGen8','tWaitSend8','tWaitIdle8','tSend8'}; % set of transitions 
png.set_of_As = {'tGen8','pReady8',1,'pReady','tWaitSend8',1,...
    'pReady8','tWaitIdle8',1,'tWaitIdle8','pReady8',1,...
    'tWaitSend8','pSend8',1,'pSend8','tSend8',1,'tSend8','pNbSent8',1}; % set of arcs

png.set_of_Ports = {'tSend8'};
