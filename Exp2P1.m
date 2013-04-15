load('Data\Experiment2Part1.mat')


%233 254
coeffs = polyfit(Vdm(233:254),Vout(233:254),1);
plot(Vdm,Vout,'o'); hold on;
plot(Vdm,coeffs(1) * Vdm + coeffs(2),'-','LineWidth',2);
xlim([-2.5 2.5]);
ylim([-0.1 5.1]);
title('V_{out} as a Function of V_{dm}');
xlabel('V_{dm} (Volts)');
ylabel('V_{out} (Volts)');
legend('Data',strcat('Differential-Mode Voltage Gain = ',num2str(coeffs(1))),'Location','SouthEast');
adm = coeffs(1);