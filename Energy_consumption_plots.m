ds = dataset('file', 'energy-consumption.csv', 'delimiter', ',');

consumo = ds(:, 5:end-1);
figure(1)
hold on
hours = 0: 0.5:23.5;
labels = {};

for i = 1:31
    plot(hours, consumo(i, :))
    labels{i} = ['Day ', num2str(i)];
end

xlabel('Hours')
ylabel('Consumo [kWh]')
legend(labels,'Location', 'bestoutside')
grid

order_polinomial = 7;

mean_consumption_january = mean(double(consumo(1:31, :)));
standard_deviation_january = std(double(consumo(1:31, :)));

parameters_january = polyfit(hours, mean_consumption_january, order_polinomial);
yfit_january = polyval(parameters_january, hours);

figure(2)
subplot(1,2,1)
errorbar(hours, mean_consumption_january, standard_deviation_january, '-sr', 'MarkerSize', 7);
hold on
plot(hours, yfit_january, 'r--')
legend('January')
xlim([0 24])
ylim([200 1200])
xticks(0:24)
grid on
box on
ylabel('Power Consumption [kWh]')
xlabel('Time [h]')


mean_consumption_december = mean(double(consumo(127:158, :)));
standard_deviation_december = std(double(consumo(127:158, :)));


parameters_december = polyfit(hours, mean_consumption_december, order_polinomial);
yfit_december = polyval(parameters_december, hours);

subplot(1, 2, 2)
errorbar(hours, mean_consumption_december, standard_deviation_december, '-d', 'MarkerSize', 7);
hold on
plot(hours, yfit_december, 'r--')
legend('December')
xlim([0 24])
ylim([200 1200])
xticks(0:24)
grid on
box on
ylabel('Power Consumption [kWh]')
xlabel('Time [h]')