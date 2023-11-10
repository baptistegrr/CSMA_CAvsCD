%Comom link module
function [png] = PDF_Common()

png.PN_name = 'link'; % module name or label
png.set_of_Ps = {'pTransi', 'pTotalSent'}; % set of places
png.set_of_Ts = {}; % set of transitions 

%linking all Client modules to the pTransi and pTotalSent
png.set_of_As = {'tSend','pTransi',1,...
    'tSend2','pTransi',1,'tSend2','pTotalSent',1,...
    'tSend3','pTransi',1,'tSend3','pTotalSent',1,...
    'tSend4','pTransi',1,'tSend4','pTotalSent',1,...
    'pTransi','tIn',1};

