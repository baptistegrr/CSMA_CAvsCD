%Medium pre transition
function [fire, trans] = MOD_Medium_PRE(trans)

global global_info

nMedium=ntokens('pMedium');

if strcmp(trans.name, 'tAck')     
    fire = eq(nMedium, 1);
else
    fire=1;
end
% 
% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


