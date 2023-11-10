%Common pre transition
function [] = MOD_Client4_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl4')        
    global_info.Collision(4)=0;
      
end

