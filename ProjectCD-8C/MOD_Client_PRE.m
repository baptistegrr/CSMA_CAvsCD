%Common pre transition
function [fire, trans] = MOD_Client_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady');


if strcmp(trans.name, 'tGen')          
    fire = and(not(nReady), not(is_firing('tWaitColl'))); 
elseif strcmp(trans.name, 'tWaitColl')  
    fire = eq(global_info.Collision(1), 1); 
elseif strcmp(trans.name, 'tToSend') 
    fire = and(eq(global_info.Collision(1),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend')
    trans.new_color = '1';
    fire = 1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


