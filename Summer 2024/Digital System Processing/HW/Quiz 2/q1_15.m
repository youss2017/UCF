clear all
close all
clc
syms n Fo Fs

x(n, Fo, Fs) = sin(n*2*pi*Fo/Fs);
n=0:1:99;
Fs=5e3;
Fo=4.5e3;

plot(n, x(n, Fo, Fs));