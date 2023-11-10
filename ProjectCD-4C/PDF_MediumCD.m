%Module for the medium in CSMA/CD
function [png] = PDF_MediumCD()

png.PN_name = 'Medium'; 
png.set_of_Ps = {'pMedium', 'pAck', 'pCollision'};
png.set_of_Ts = {'tAck','tCollision','tIn'}; 
png.set_of_As = {'tIn','pMedium',1,'pMedium','tAck',1,...
    'pMedium','tCollision',2,'tAck','pAck',1,...
    'tCollision','pCollision',1}; % set of arcs

png.set_of_Ports = {'tIn'};