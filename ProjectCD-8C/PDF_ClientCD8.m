%Module for the client in CSMA/CA
function [png] = PDF_ClientCD8()

png.PN_name = 'Client8'; % module name or label
png.set_of_Ps = {'pReady8', 'pSend8','pNbSent8'}; % set of places
png.set_of_Ts = {'tGen8','tToSend8','tWaitColl8','tSend8'}; % set of transitions 
png.set_of_As = {'tGen8','pReady8',1,'pReady8','tToSend8',1,...
    'pReady8','tWaitColl8',1,'tWaitColl8','pReady8',1,...
    'tToSend8','pSend8',1,'pSend8','tSend8',1,'tSend8','pNbSent8',1}; % set of arcs

png.set_of_Ports = {'tSend8'};
