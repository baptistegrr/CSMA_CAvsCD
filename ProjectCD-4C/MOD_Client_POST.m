%Client CSMA/CD post transition
function [] = MOD_Client_POST(trans)

global global_info

% Once tWaitColl has fired, we can reset the value of the array to 0 so the
% transition tToSend can fire
if strcmp(trans.name, 'tWaitColl')        
    global_info.Collision(1)=0;
      
end

