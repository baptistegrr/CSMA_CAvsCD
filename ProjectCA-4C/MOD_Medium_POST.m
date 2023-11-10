%Medium post transition
function [] = MOD_Medium_POST(trans)

global global_info

nMedium=ntokens('pMedium');

%we want to set the semafore to 0 if the media is idle
if strcmp(trans.name, 'tAck')          
    if not(nMedium)
        global_info.semafore=0;
    end
        
elseif strcmp(trans.name, 'tCollision')  
    if not(nMedium)
        global_info.semafore=0;
    end
end

