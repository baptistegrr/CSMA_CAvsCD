%Common pre transition
function [fire, trans] = MOD_Client4_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client4_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady4');


if strcmp(trans.name, 'tGen4')          
    fire = and(not(nReady), not(is_firing('tWaitColl4'))); 
elseif strcmp(trans.name, 'tWaitColl4')  
    fire = eq(global_info.Collision(4), 1); 
elseif strcmp(trans.name, 'tToSend4') 
    fire = and(eq(global_info.Collision(4),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend4')
    trans.new_color = '4';
    fire = 1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


