%Common pre transition
function [fire, trans] = MOD_Client3_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client3_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady3');


if strcmp(trans.name, 'tGen3')          
    fire = and(not(nReady), not(is_firing('tWaitColl3'))); 
elseif strcmp(trans.name, 'tWaitColl3')  
    fire = eq(global_info.Collision(3), 1); 
elseif strcmp(trans.name, 'tToSend3') 
    fire = and(eq(global_info.Collision(3),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend3')
    trans.new_color = '3';
    fire = 1;
else
    fire=1;
end
% 
% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


