clc
clear all
close all

x = [1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0];
x = [x, round(rand([10000, 1])).'];

y = 0:(1/1001.5):10;

z = [y.', x.'];