%Common pre transition
function [] = MOD_Client6_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl6')        
    global_info.Collision(6)=0;
      
end

