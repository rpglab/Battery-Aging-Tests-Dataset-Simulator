%Battery Degradation simulation & Data Arquization
BatteryData = [];
DataDischarge =[];
DataCharge = [];
%for battery discahrge from 100% SOC
for Temp = [17 20 23 25 30 32]
    for DOD = [10 20 30 40 50 60 70 80 90 100]
        for DC = [5 10 15 20 30 40 60 80]
           %2500cycles
           SimTime = 40/DC*3600*DOD/100*2500;
           sim('BatteryTesting100','timeout',SimTime);
           %Scope data is the group file of all the collected data.
           % X is the capacity data  
           X =ans.ScopeData.signals(6).values';
           m =size(X,2);
           DCcycletime = round(40/DC*3600*m*DOD/100/SimTime);
           Ccycletime = round(40/DC*3600*m*DOD/100/SimTime);
           
           for i = (DCcycletime+Ccycletime):(DCcycletime+Ccycletime):m
                DataDischarge = [DataDischarge X(i-Ccycletime)];
                DataCharge = [DataCharge X(i-Ccycletime)-X(i)];
           end
           
           DataDischarge = [Temp DC 80 -DOD DataDischarge];
           DataCharge = [Temp DC 80-DOD DOD DataCharge];
           writematrix(DataDischarge,'BatteryDataDischarge.csv','WriteMode','append');
           writematrix(DataCharge,'BatteryDataCharge.csv','WriteMode','append');
           X = [];
           DataDischarge =[];
           DataCharge = [];
        end
    end
end

         
