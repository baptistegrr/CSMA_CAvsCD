%Common pre transition
function [fire, trans] = MOD_Client1_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);


nReady = ntokens('pReady');


if strcmp(trans.name, 'tGen')          
    fire = and(not(nReady), not(is_firing('tWaitIdle'))); 
elseif strcmp(trans.name, 'tWaitSend')  
    fire = eq(global_info.semafore, 0); 
elseif strcmp(trans.name, 'tWaitIdle') 
    fire = eq(global_info.semafore, 1);   
else
    fire=1;
end
% 
% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


