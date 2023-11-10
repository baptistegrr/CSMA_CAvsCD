%Common pre transition
function [fire, trans] = MOD_Client2_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client2_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady2');


if strcmp(trans.name, 'tGen2')          
    fire = and(not(nReady), not(is_firing('tWaitColl2'))); 
elseif strcmp(trans.name, 'tWaitColl2')  
    fire = eq(global_info.Collision(2), 1); 
elseif strcmp(trans.name, 'tToSend2') 
    fire = and(eq(global_info.Collision(2),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend2')
    trans.new_color = '2';
    fire = 1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


