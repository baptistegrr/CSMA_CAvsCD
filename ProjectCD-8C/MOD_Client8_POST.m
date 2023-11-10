%Common pre transition
function [] = MOD_Client8_POST(trans)

global global_info


if strcmp(trans.name, 'tWaitColl8')        
    global_info.Collision(8)=0;
      
end

