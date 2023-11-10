%Common post transition
function [] = COMMON_POST(trans)
 
global global_info
 
if strcmp(trans.name, 'tIn') 
    global_info.semafore = 1;
end

