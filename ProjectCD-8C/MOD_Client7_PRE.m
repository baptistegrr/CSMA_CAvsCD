%Common pre transition
function [fire, trans] = MOD_Client7_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client7_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady7');


if strcmp(trans.name, 'tGen7')          
    fire = and(not(nReady), not(is_firing('tWaitColl7'))); 
elseif strcmp(trans.name, 'tWaitColl7')  
    fire = eq(global_info.Collision(7), 1); 
elseif strcmp(trans.name, 'tToSend7') 
    fire = and(eq(global_info.Collision(7),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend7')
    trans.new_color = '7';
    fire = 1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


