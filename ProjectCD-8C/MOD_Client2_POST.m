%Common pre transition
function [] = MOD_Client2_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl2')        
    global_info.Collision(2)=0;
      
end

