%% const params
n_tube = 4;
m_tube_f = 9; %kg
m_tube_e = 3; %kg
m_frame = 30; %kg
m_tube_avg = (m_tube_f + m_tube_e) / 2; %kg
m = (m_tube_avg + m_frame);
length_frame = 2; %meter
width_frame = 2; %meter
radius_frame = 2; %meter
Izz = 0.5 * m * (radius_frame^2); %kg.m2
Ixx = (1/12) * m * (length_frame^2 + width_frame^2); %kg.m2
Iyy = Ixx; %kg.m2
I = [[Ixx, 0, 0];[0, Iyy, 0];[0, 0, Izz]]; %kg.m2
lever_arm = 1; %meter
g_sea = 9.80665; %m/s2
re = 6371009; %km

%% nozzle params
A = 5.03e-6; %m2
gam = 1.4; %specific heat ratio
R = 287.05; %J/kgK
Me = 2.2; %Mach
P0 = 101325; %Pa
Ae = pi * (3.62e-6^2) / 4; %m2

%% atmoshere params
lapse_rate = 6.5; %celcuis/km
lapse_rate_kelvin = -0.0065; %Kelvin/m
sea_level_temp_c = 15; %celcius
sea_level_temp_k = sea_level_temp_c + 274.15; %kelvin
R_const = 8.31432; %N*m/mol*K
molar_mass_air = 0.0289644; %kg/mol

%% initial params
init_vel_body = [0 0 0];
init_pos = [0 0 0];
init_eulr = [0 0 0];
init_pqr = [0 0 0];


