close all;

separador = '\t';
% 1: conductor activo
% 2: conductor pasivo
% los datos de la primer columna están en segmento
% para pasar a longitud, multiplicar por:

%k1 = 0.0375;       % para f = 80MHz
k2 = 6.25e-3;       % para f = 480MHz
k1 = 0.0375; 

%% Lectura de datos
real_1_80 = dlmread('80MHz_1_real.txt', separador);
real_2_80 = dlmread('80MHz_2_real.txt', separador);
imag_1_80 = dlmread('80MHz_1_imag.txt', separador);
imag_2_80 = dlmread('80MHz_2_imag.txt', separador);
mag_1_80 = dlmread('80MHz_1_mag.txt', separador);
mag_2_80 = dlmread('80MHz_2_mag.txt', separador);
fase_1_80 = dlmread('80MHz_1_fase.txt', separador);
fase_2_80 = dlmread('80MHz_2_fase.txt', separador);

real_1_480 = dlmread('480MHz_1_real.txt', separador);
real_2_480 = dlmread('480MHz_2_real.txt', separador);
imag_1_480 = dlmread('480MHz_1_imag.txt', separador);
imag_2_480 = dlmread('480MHz_2_imag.txt', separador);
mag_1_480 = dlmread('480MHz_1_mag.txt', separador);
mag_2_480 = dlmread('480MHz_2_mag.txt', separador);
fase_1_480 = dlmread('480MHz_1_fase.txt', separador);
fase_2_480 = dlmread('480MHz_2_fase.txt', separador);


%% 80MHz | Parte real de la corriente para conductor activo y pasivo
figure;
plot(real_1_80(:,1)*k1, real_1_80(:,2));
hold on;
plot(real_2_80(:,1)*k1, real_2_80(:,2));
xlim([0 3.75]);
xlabel('Longitud [m]');
ylabel('Corriente [mA]');
legend('Conductor activo', 'Conductor pasivo', 'location', 'southwest');
grid on;

saveas(gcf, 'i_real_80_tierra', 'epsc');

%% 80MHz | Parte imaginaria de la corriente para conductor activo y pasivo
figure;
plot(imag_1_80(:,1)*k1, imag_1_80(:,2));
hold on;
plot(imag_2_80(:,1)*k1, imag_2_80(:,2));
xlim([0 3.75]);
xlabel('Longitud [m]');
ylabel('Corriente [mA]');
legend('Conductor activo', 'Conductor pasivo', 'location', 'northwest');
grid on;

saveas(gcf, 'i_imag_80_tierra', 'epsc');


%% 80MHz | Magnitud de la corriente para conductor activo y pasivo
figure;
plot(mag_1_80(:,1)*k1, mag_1_80(:,2));
hold on;
plot(mag_2_80(:,1)*k1, mag_2_80(:,2));
xlim([0 3.75]);
xlabel('Longitud [m]');
ylabel('Corriente [mA]');
legend('Conductor activo', 'Conductor pasivo', 'location', 'northeast');
grid on;

saveas(gcf, 'i_mag_80_tierra', 'epsc');


%% 80MHz | Fase de la corriente para conductor activo y pasivo
figure;
plot(fase_1_80(:,1)*k1, fase_1_80(:,2));
hold on;
plot(fase_2_80(:,1)*k1, fase_2_80(:,2));
xlim([0 3.75]);
xlabel('Longitud [m]');
ylabel('Grados [°]');
legend('Conductor activo', 'Conductor pasivo', 'location', 'northeast');
grid on;

saveas(gcf, 'i_fase_80_tierra', 'epsc');



%% 480MHz | Parte real de la corriente para conductor activo y pasivo
figure;
plot(real_1_480(:,1)*k2, real_1_480(:,2));
hold on;
plot(real_2_480(:,1)*k2, real_2_480(:,2));
xlim([0 3.75]);
xlabel('Longitud [m]');
ylabel('Corriente [mA]');
legend('Conductor activo', 'Conductor pasivo', 'location', 'northwest');
grid on;

saveas(gcf, 'i_real_480_tierra', 'epsc');

%% 480MHz | Parte imaginaria de la corriente para conductor activo y pasivo
figure;
plot(imag_1_480(:,1)*k2, imag_1_480(:,2));
hold on;
plot(imag_2_480(:,1)*k2, imag_2_480(:,2));
xlim([0 3.75]);
xlabel('Longitud [m]');
ylabel('Corriente [mA]');
legend('Conductor activo', 'Conductor pasivo', 'location', 'southeast');
grid on;

saveas(gcf, 'i_imag_480_tierra', 'epsc');


%% 80MHz | Magnitud de la corriente para conductor activo y pasivo
figure;
plot(mag_1_480(:,1)*k2, mag_1_480(:,2));
hold on;
plot(mag_2_480(:,1)*k2, mag_2_480(:,2));
xlim([0 3.75]);
xlabel('Longitud [m]');
ylabel('Corriente [mA]');
legend('Conductor activo', 'Conductor pasivo', 'location', 'northeast');
grid on;

saveas(gcf, 'i_mag_480_tierra', 'epsc');


%% 80MHz | Fase de la corriente para conductor activo y pasivo
figure;
plot(fase_1_480(:,1)*k2, fase_1_480(:,2));
hold on;
plot(fase_2_480(:,1)*k2, fase_2_480(:,2));
xlim([0 3.75]);
ylim([-200 250]);
xlabel('Longitud [m]');
ylabel('Grados [°]');
legend('Conductor activo', 'Conductor pasivo');
grid on;

saveas(gcf, 'i_fase_480_tierra', 'epsc');


