load('Data\Experiment3Part2');
plot(Vin,OffsetVoltage,'o');
xlabel('V_{in} (Volts)');
ylabel('Offset Voltage V_{out} - V_{in} (Volts)');
title('Offset Voltage as a Function of V_{in} for a Unity-Gain Voltage Follower');
ylim([-0.2 0.3]);