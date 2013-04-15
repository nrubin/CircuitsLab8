load('Data\Experiment2Part2.mat')

% 91 269
coeffs = polyfit(Vout(120:230), Iout(120:230),1);
plot(Vout,Iout,'o'); hold on;
plot(Vout,Vout * coeffs(1) + coeffs(2),'-','LineWidth',2);
xlim([0 5]);
ylim([-14e-4 2e-4]);
xlabel('V_{out} (Volts)');
ylabel('I_{out} (Amps)');
title('I_{out} as a Function of V_{out} with V_{dm} = 0');
legend('Data',strcat('Incremental Output Resistance R_{out} = ', num2str(1/coeffs(1)), ' \Omega'),'Location','SouthEast');
rout = 1/coeffs(1);