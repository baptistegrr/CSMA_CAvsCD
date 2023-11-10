%Common pre transition
function [] = MOD_Client3_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl3')        
    global_info.Collision(3)=0;
      
end

