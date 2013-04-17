%Experiment 1 Part 1 plotter
interval = 5;

%%Part 1
% Fit a straight line to your Vout versus
% Vcm curve and determine the common-mode voltage gain of your ampli?er from the slope
% of the best-?t line. In your report, include a plot showing Vout versus Vcm along with your
% best-?t line. Ideally, Vout should be about as far below V
% dd as V
% b is above ground and the
% common-mode gain should be negative with a magnitude on the order of a few percent. How
% does your common-mode gain compare to that?

load('Data/Experiment1Part1Data.mat')


p = polyfit(Vcm,Vout,1);
Vout_fit = p(1).*Vcm + p(2);
plot(Vcm(1:interval:end),Vout(1:interval:end), 'ro','MarkerSize',10, 'LineWidth', 1.5); hold on;
plot(Vcm,Vout_fit, 'Linewidth',2); hold on;

title('Common-mode gain with bias voltage at threshold');
xlabel('Common-mode Voltage V_{cm} (V)');
ylabel('Output Voltage (V)');


h = legend('Experimental V_{out}',...
 strcat('Common mode gain, linear fit for V_{out}=', num2str(p(1)), ' + ' , num2str(p(2))))

% 'I_1 - I_2 for V_2 = 2 V',...
% 'I_1 + I_2 for V_2 = 2 V',...
% 'I_1 for V_2 = 3 V',...
% 'I_2 for V_2 = 3 V',...
% 'I_1 - I_2 for V_2 = 3 V',...
% 'I_1 + I_2 for V_2 = 3 V',...
% 'I_1 for V_2 = 4 V',...
% 'I_2 for V_2 = 4 V',...
% 'I_1 - I_2 for V_2 = 4 V',...
% 'I_1 + I_2 for V_2 = 4 V','Location','SouthEast')