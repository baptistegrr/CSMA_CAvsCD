%Client CSMA/CA pre transition
function [fire, trans] = MOD_Client1_PRE(trans)

global global_info

nReady = ntokens('pReady');

%tGen can fire only if there is no message ready to be sent or waiting to
%be sent
%tWaitSend can be fired only if the media is idle, semafor = 0
%otherwise, tWait idle fires
if strcmp(trans.name, 'tGen')          
    fire = and(not(nReady), not(is_firing('tWaitIdle'))); 
elseif strcmp(trans.name, 'tWaitSend')  
    fire = eq(global_info.semafore, 0); 
elseif strcmp(trans.name, 'tWaitIdle') 
    fire = eq(global_info.semafore, 1);   
else
    fire=1;
end


