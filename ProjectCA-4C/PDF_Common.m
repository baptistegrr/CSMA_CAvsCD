%Commom link module
function [png] = PDF_Common()

png.PN_name = 'link'; 
png.set_of_Ps = {'pTransi','pTotalSent'}; 
png.set_of_Ts = {}; 

%linking all Client modules to the pTransi and pTotalSent
png.set_of_As = {'tSend','pTransi',1,'pTransi','tIn',1,...
        'tSend','pTotalSent',1,...
        'tSend2','pTransi',1,'tSend2','pTotalSent',1,...
        'tSend3','pTransi',1,'tSend3','pTotalSent',1,...
        'tSend4','pTransi',1,'tSend4','pTotalSent',1,...
    }; 


