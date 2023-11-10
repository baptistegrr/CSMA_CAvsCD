%Common pre transition
function [] = MOD_Client7_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl7')        
    global_info.Collision(7)=0;
      
end

