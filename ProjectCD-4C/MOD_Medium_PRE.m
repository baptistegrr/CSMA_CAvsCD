%Media pre transition
function [fire, trans] = MOD_Medium_PRE(trans)

global global_info

nMedium=ntokens('pMedium');

%tAck fires only if there is one token in the place
%If there is more pCollision will fire 
if strcmp(trans.name, 'tAck')
    fire = eq(nMedium, 1);

% In CSMA/CD, we want to advertise the collision to the clients involved
% We select two tokens and we set the value of Collision to 1 at the index
% of the color of the token
elseif strcmp(trans.name, 'tCollision')  
        tokID1 = tokenAny('pMedium',1);
        color1 = get_color('pMedium', tokID1);
        tokID2 = tokenWOAllColor('pMedium',1,color1);
        color2 = get_color('pMedium', tokID2);
        global_info.Collision(str2num(color1{1}))=1;
        global_info.Collision(str2num(color2{1}))=1;
        trans.selected_tokens = [tokID1 tokID2]; % tokens to be removed
        fire=1;
else
    fire=1;
end

% if fire 
%     disp([trans.name, '  fires!']);
% else
%     disp([trans.name, '  NOT fires!']);
% end


