%Module for the client in CSMA/CA
function [png] = PDF_ClientCD5()

png.PN_name = 'Client5'; % module name or label
png.set_of_Ps = {'pReady5', 'pSend5','pNbSent5'}; % set of places
png.set_of_Ts = {'tGen5','tToSend5','tWaitColl5','tSend5'}; % set of transitions 
png.set_of_As = {'tGen5','pReady5',1,'pReady5','tToSend5',1,...
    'pReady5','tWaitColl5',1,'tWaitColl5','pReady5',1,...
    'tToSend5','pSend5',1,'pSend5','tSend5',1,'tSend5','pNbSent5',1}; % set of arcs

png.set_of_Ports = {'tSend5'};
