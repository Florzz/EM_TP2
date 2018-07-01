close all;
separador = '\t';
z_real = dlmread('Z_real.txt', separador);
z_imag = dlmread('Z_imag.txt', separador);

figure;
plot(z_real(:,1), z_real(:,2));
hold on;
plot(z_imag(:,1), z_imag(:,2));
xlim([80 480]);
ylim([-1e5 3e4]);
grid on;
legend('Parte real', 'Parte imaginaria');
xlabel('Frecuencia [MHz]');
ylabel('Impedancia [\Omega]');
saveas(gcf, 'z', 'epsc');
