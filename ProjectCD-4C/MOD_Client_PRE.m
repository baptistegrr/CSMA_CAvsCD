%Client CSMA/CD pre transition
function [fire, trans] = MOD_Client_PRE(trans)

global global_info

nReady = ntokens('pReady');

%tGen can fire only if there is no message ready to be sent or waiting to
%be sent
%tToSend can be fired only if the media is idle, semafor = 0, and is there
%was no collision
%tWaitColl fires if there was a collision
%tSend adds a color, it is the number of the client, usefull to set the
%values of Collision to 1 in the tCollision transition
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


