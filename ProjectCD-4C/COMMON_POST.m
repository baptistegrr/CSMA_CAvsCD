%Common post transition
function [] = COMMON_POST(trans)
 
global global_info

% if tIn fires, it means that the media is not idle anymore, we change the
% value of the semafore
if strcmp(trans.name, 'tIn') 
    global_info.semafore = 1;

end

