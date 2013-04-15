%Experiment 1 Part 3 plotter
interval = 10;

%%Part 3
%above-threshold bias current. 


load('Data/Experiment1Part5Data.mat')
plot(V1(1:interval:end),Vout(1:interval:end), '--ro','MarkerSize',10); hold on;

load('Data/Experiment1Part6Data.mat')
plot(V1(3:interval:end),Vout(3:interval:end), '--bo','MarkerSize',10); hold on;

load('Data/Experiment1Part7Data.mat')
plot(V1(6:interval:end),Vout(6:interval:end), '--go','MarkerSize',10); hold on;


title('Voltage transfer characteristics for above threshold bias voltage');
xlabel('Noninverting input voltage V_{1} (V)');
ylabel('Output Voltage (V)');

legend('Experimental V_{out} for V_2 = 2V',...
 'Experimental V_{out} for V_2 = 3V',...
 'Experimental V_{out} for V_2 = 4V',...
 'Location','SouthEast')