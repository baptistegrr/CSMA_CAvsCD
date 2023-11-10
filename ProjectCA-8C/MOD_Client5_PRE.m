%Common pre transition
function [fire, trans] = MOD_Client5_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client5_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);


nReady = ntokens('pReady5');


if strcmp(trans.name, 'tGen5')          
    fire = and(not(nReady), not(is_firing('tWaitIdle5'))); 
elseif strcmp(trans.name, 'tWaitSend5')  
    fire = eq(global_info.semafore, 0); 
elseif strcmp(trans.name, 'tWaitIdle5') 
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


