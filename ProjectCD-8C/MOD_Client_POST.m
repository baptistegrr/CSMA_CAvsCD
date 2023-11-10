%Common pre transition
function [] = MOD_Client_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl')        
    global_info.Collision(1)=0;
      
end

