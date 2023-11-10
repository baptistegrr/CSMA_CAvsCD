%Common pre transition
function [fire, trans] = MOD_Client4_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client4_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);


nReady = ntokens('pReady4');


if strcmp(trans.name, 'tGen4')          
    fire = and(not(nReady), not(is_firing('tWaitIdle4'))); 
elseif strcmp(trans.name, 'tWaitSend4')  
    fire = eq(global_info.semafore, 0); 
elseif strcmp(trans.name, 'tWaitIdle4') 
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


