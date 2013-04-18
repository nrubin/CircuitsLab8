load('Data\Experiment3Part2');
interval = 3;
plot(Vin(1:interval:end),OffsetVoltage(1:interval:end),'o', 'MarkerSize',10, 'LineWidth',1.5);
xlabel('V_{in} (Volts)');
ylabel('Offset Voltage V_{out} - V_{in} (Volts)');
title('Offset Voltage as a Function of V_{in} for a Unity-Gain Voltage Follower');
ylim([-0.2 0.3]);
grid on;