%Module for the client in CSMA/CA
function [png] = PDF_ClientCD2()

png.PN_name = 'Client2'; % module name or label
png.set_of_Ps = {'pReady2', 'pSend2','pNbSent2'}; % set of places
png.set_of_Ts = {'tGen2','tToSend2','tWaitColl2','tSend2'}; % set of transitions 
png.set_of_As = {'tGen2','pReady2',1,'pReady2','tToSend2',1,...
    'pReady2','tWaitColl2',1,'tWaitColl2','pReady2',1,...
    'tToSend2','pSend2',1,'pSend2','tSend2',1,'tSend2','pNbSent2',1}; % set of arcs

png.set_of_Ports = {'tSend2'};
