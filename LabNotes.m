%Lab 8 Tester

%Experiment 1
% Connect both inputs together, so that there is no 
% differential-mode input voltage and sweep the 
% common-mode input voltage from one rail to the 
% other while measuring the output voltage.

%Experiment1part1: Vcm, below threshold
%Experiment1part8: Vcm above threshold

% Next, connect V2 to a constant voltage source and
% sweep V1 from one rail to the other,
% measuring Vout for at least three different values 
% of V2 that are above the bias voltage
%Experiment1part2: V2 =2
%Experiment1part3: V2 =3
%Experiment1part4: V2 =4

%Experiment1part5: V2 =2 (above threshold)
%Experiment1part6: V2 =3 (above threshold)
%Experiment1part7: V2 =4 (above threshold)
% load('Experiment1Part5Data.mat');
% figure(); plot(V1-2,Vout,'o'); xlabel('Vdm'); ylabel('Vout'); hold on;
% load('Experiment1Part6Data.mat');
% plot(V1-3,Vout,'ro'); xlabel('Vdm'); ylabel('Vout');
% load('Experiment1Part7Data.mat');
% plot(V1-4,Vout,'go'); xlabel('Vdm'); ylabel('Vout');
% Repeat this experiment for an above-threshold bias current

%Experiment 2
% For a single value of V2, sweep V1 around V2 in ?ne increments while measuring Vout. You
% should try to get several points in the high-gain region.
%Experiment2Part1:Vdm vs. vout : [linspace(-2.5,-.3,100), linspace(-.3,+.3,300), linspace(.3,2.5,100)];

% Next, set the di?erential-mode input voltage to zero and measure the current ?owing into
% the output of the ampli?er as you sweep Vout from one rail to the other.
%Experiment2Part2: Iout vs. Vdout, Vcm = 2.5 V

% Finally, fix the output voltage somewhere in the middle of the range of output voltages
% for which the circuit’s gain is large and measure the current ?owing out of the ampli?er as
% you sweep V1 around V2
%Experiment2Part3: Vout = 1, V2 = 2.5 V

%Experiment 3
%Experiment3Part1: Vin vs Vout
%Experiment3Part2: Vin vs. Offset Voltage (Vout measured relative to Vin, aka Vout - Vin)
