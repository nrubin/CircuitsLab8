load('Data\Experiment3Part1');
%25 - 279
interval = 5;
coeffs = polyfit(Vin(25:279),Vout(25:279),1);
plot(Vin(1:interval:end),Vout(1:interval:end),'o', 'MarkerSize',10, 'LineWidth',1.5); hold on;
plot(Vin,Vin*coeffs(1) + coeffs(2),'-','LineWidth',2);
xlabel('V_{in} (Volts)');
ylabel('V_{out} (Volts)');
title('Voltage Transfer Characteristic of a Unity-Gain Voltage Follower');
legend('Data',strcat('Extracted Gain = ',num2str(coeffs(1))),'Location','NorthWest')