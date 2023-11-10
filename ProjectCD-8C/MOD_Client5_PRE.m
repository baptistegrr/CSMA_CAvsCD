%Common pre transition
function [fire, trans] = MOD_Client5_PRE(trans)

global global_info

% disp([' *** inside "MOD_Client5_PRE", enabled trans is: ', trans.name]);
% disp(['global_info.semafore = ', int2str(global_info.semafore)]);
% disp(['global_info.collision = ', int2str(global_info.Collision)]);


nReady = ntokens('pReady5');


if strcmp(trans.name, 'tGen5')          
    fire = and(not(nReady), not(is_firing('tWaitColl5'))); 
elseif strcmp(trans.name, 'tWaitColl5')  
    fire = eq(global_info.Collision(5), 1); 
elseif strcmp(trans.name, 'tToSend5') 
    fire = and(eq(global_info.Collision(5),0), eq(global_info.semafore, 0));   
elseif strcmp(trans.name, 'tSend5')
    trans.new_color = '5';
    fire = 1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


