%Common pre transition
function [fire, trans] = MOD_Client8_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client8_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady8');


if strcmp(trans.name, 'tGen8')          
    fire = and(not(nReady), not(is_firing('tWaitColl8'))); 
elseif strcmp(trans.name, 'tWaitColl8')  
    fire = eq(global_info.Collision(8), 1); 
elseif strcmp(trans.name, 'tToSend8') 
    fire = and(eq(global_info.Collision(8),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend8')
    trans.new_color = '8';
    fire = 1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


