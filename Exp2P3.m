load('Data\Experiment2Part3.mat');

%121 - 168
clf;
interval = 3;
coeffs = polyfit(Vdm(121:168),-Iout(121:168),1);
plot(Vdm(1:interval:end),-Iout(1:interval:end),'o','MarkerSize',10, 'LineWidth',1.5); hold on;
plot(Vdm, Vdm * coeffs(1) + coeffs(2), '-', 'LineWidth', 2);
xlim([-2.5 2.5]);
ylim([-3e-4 5e-4]);
xlabel('V_{dm} (Volts)');
ylabel('I_{out} (Amps)');
title('I_{out} as a Function of V_{dm} for V_{out} = 1 V');
legend('Data',strcat('Incremental Transconductance Gain G_m = ', num2str(coeffs(1)), '\Omega^{-1}'),'Location','SouthEast');
gm = coeffs(1);