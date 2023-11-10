%Module for the client2 in CSMA/CA
function [png] = PDF_ClientCA2()

png.PN_name = 'Client2'; % module name or label
png.set_of_Ps = {'pReady2', 'pSend2','pNbSent2'}; % set of places
png.set_of_Ts = {'tGen2','tWaitSend2','tWaitIdle2','tSend2'}; % set of transitions 
png.set_of_As = {'tGen2','pReady2',1,'pReady2','tWaitSend2',1,...
    'pReady2','tWaitIdle2',1,'tWaitIdle2','pReady2',1,...
    'tWaitSend2','pSend2',1,'pSend2','tSend2',1,'tSend2','pNbSent2',1}; % set of arcs

png.set_of_Ports = {'tSend2'};
