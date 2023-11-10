%Media pre transition
function [fire, trans] = MOD_Medium_PRE(trans)

nMedium=ntokens('pMedium');

%tAck fires only if there is one token in the place
%If there is more pCollision will fire 
if strcmp(trans.name, 'tAck')     
    fire = eq(nMedium, 1);
else
    fire=1;
end

