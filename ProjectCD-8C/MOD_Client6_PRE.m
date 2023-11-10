%Common pre transition
function [fire, trans] = MOD_Client6_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client6_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady6');


if strcmp(trans.name, 'tGen6')          
    fire = and(not(nReady), not(is_firing('tWaitColl6'))); 
elseif strcmp(trans.name, 'tWaitColl6')  
    fire = eq(global_info.Collision(6), 1); 
elseif strcmp(trans.name, 'tToSend6') 
    fire = and(eq(global_info.Collision(6),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend6')
    trans.new_color = '6';
    fire = 1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


