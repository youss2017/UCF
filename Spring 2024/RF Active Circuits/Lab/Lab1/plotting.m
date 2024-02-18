close all;
clear all;
clc;
s_resistor = sparameters('S Measurements/TRL/1.8NH.S1P');
smithplot(s_resistor,  'TitleTop', "S Measurements of 1.8 nH Inductor (TRL)");