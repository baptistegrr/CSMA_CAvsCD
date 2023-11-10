%Common pre transition
function [] = MOD_Client5_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl5')        
    global_info.Collision(5)=0;
      
end

