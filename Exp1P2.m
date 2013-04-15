%Experiment 1 Part 2 plotter
interval = 10;

%%Part 2
% Next, connect V2 to a constant voltage source and sweep V1 from one rail to the other,
% measuring Vout for at least three di?erent values of V2 that are above the bias voltage. In
% your report, include a single plot showing all of these voltage transfer characteristics (VTCs).
% Repeat this experiment for an above-threshold bias current.


load('Data/Experiment1Part2Data.mat')
plot(V1(1:interval:end),Vout(1:interval:end), '--ro','MarkerSize',10); hold on;

load('Data/Experiment1Part3Data.mat')
plot(V1(3:interval:end),Vout(3:interval:end), '--bo','MarkerSize',10); hold on;

load('Data/Experiment1Part4Data.mat')
plot(V1(6:interval:end),Vout(6:interval:end), '--go','MarkerSize',10); hold on;


title('Voltage transfer characteristics for below threshold');
xlabel('Noninverting input voltage V_{1} (V)');
ylabel('Output Voltage (V)');

legend('Experimental V_{out} for V_2 = 2V',...
 'Experimental V_{out} for V_2 = 3V',...
 'Experimental V_{out} for V_2 = 4V',...
 'Location','SouthEast')