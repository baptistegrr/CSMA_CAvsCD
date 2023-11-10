% the Main Simulation File (MSF) to run simulation CSMA/CA
clear all; clc; close all; 
global global_info

%global variables
global_info.semafore = 0; %is the medium busy ?
global_info.STOP_AT = 500;%runtime

%create petri net structure
pns = pnstruct({'PDF_Common','PDF_MediumCA',...
    'PDF_ClientCA','PDF_ClientCA2','PDF_ClientCA3','PDF_ClientCA4'});

%defining firing time
dyn.ft = {'tGen','unifrnd(5,20)','tWaitIdle','unifrnd(10,50)',...
            'tWaitSend',5,...
            'tGen2','unifrnd(5,20)','tWaitIdle2','unifrnd(10,50)',...
            'tWaitSend2',5,...
            'tGen3','unifrnd(5,20)','tWaitIdle3','unifrnd(10,50)',...
            'tWaitSend3',5,...
            'tGen4','unifrnd(5,20)','tWaitIdle4','unifrnd(10,50)',...
            'tWaitSend4',5,...
            'tAck',10,'allothers', 1};

%defining priorities, here we want to always push token from the transition
%to the media
dyn.ip={'tIn',2, 'tCollision',1};
pni = initialdynamics(pns, dyn);

%performs simulation runs
Sim_Results = gpensim(pni); 

% plot the simulation results 
figure;plotp(Sim_Results, {'pCollision','pAck','pTotalSent'});
figure;plotp(Sim_Results, {'pNbSent','pNbSent2','pNbSent3','pNbSent4'}); 