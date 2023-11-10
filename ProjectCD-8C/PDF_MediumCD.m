%Module for the medium in CSMA/CA
function [png] = PDF_MediumCD()

png.PN_name = 'Medium'; % module name or label
png.set_of_Ps = {'pMedium', 'pAck', 'pCollision'}; % set of places
png.set_of_Ts = {'tAck','tCollision','tIn'}; % set of transitions 
png.set_of_As = {'tIn','pMedium',1,'pMedium','tAck',1,'pMedium','tCollision',2,'tAck','pAck',1,'tCollision','pCollision',1}; % set of arcs

png.set_of_Ports = {'tIn'};