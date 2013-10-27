clear;

%% Clear import list to test correct library
clear import;

%% Add package to path (+function folder must be on path)
addpath('../package/');

%% Import functions 
import figure_helper.*

clear all
close all

clf;
x = [100,2000,25000,40000];
y = [1,2,3,4];
plot(x,y);
figure_helper.eng_xaxis


