%Common pre transition
function [fire, trans] = MOD_Client8_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client8_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);


nReady = ntokens('pReady8');


if strcmp(trans.name, 'tGen8')          
    fire = and(not(nReady), not(is_firing('tWaitIdle8'))); 
elseif strcmp(trans.name, 'tWaitSend8')  
    fire = eq(global_info.semafore, 0); 
elseif strcmp(trans.name, 'tWaitIdle8') 
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


