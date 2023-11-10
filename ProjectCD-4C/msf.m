% the Main Simulation File (MSF) to run simulation CSMA/CD
clear all; clc; close all; 
global global_info

%global variables
global_info.semafore = 0; %is the medium busy ?
global_info.STOP_AT = 500; %runtime
global_info.Collision = [0 0 0 0]; %was there a collision on a client ?

% create petri net structure
pns = pnstruct({'PDF_Common','PDF_ClientCD','PDF_ClientCD2',...
    'PDF_ClientCD3','PDF_ClientCD4','PDF_MediumCD'}); 

%defining the firing time
dyn.ft = {'tGen','unifrnd(5,20)','tWaitColl','unifrnd(10,20)',...
            'tGen2','unifrnd(5,20)','tWaitColl2','unifrnd(10,20)',...
            'tGen3','unifrnd(5,20)','tWaitColl3','unifrnd(10,20)',...
            'tGen4','unifrnd(5,20)','tWaitColl4','unifrnd(10,20)',...
            'tAck',10,'allothers', 1};

%defining priorities, here we want to always push token from the transition
%to the media
dyn.ip={'tIn',2, 'tCollision',1};
pni = initialdynamics(pns, dyn);

% perform simulation runs
Sim_Results = gpensim(pni); 

% plot the results
figure;plotp(Sim_Results, {'pCollision','pAck','pTotalSent'}); 
figure;plotp(Sim_Results,{'pNbSent','pNbSent2','pNbSent3','pNbSent4'})