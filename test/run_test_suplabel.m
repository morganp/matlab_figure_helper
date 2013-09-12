clear;

%% Clear import list to test correct library
clear import;

%% Add package to path (+function folder must be on path)
addpath('../..//package/');

%% Import functions 
import suplabel_pkg.*

clear all
close all
figure;clf

subplot(2,2,1); ylabel('ylabel1'); title('Title1')
subplot(2,2,2); ylabel('ylabel2'); title('Title2')
subplot(2,2,3); ylabel('ylabel3'); xlabel('xlabel3')
subplot(2,2,4); ylabel('ylabel4'); xlabel('xlabel4')

[ax1,h1]=suplabel_pkg.suplabel('Super X label');
[ax2,h2]=suplabel_pkg.suplabel('Super Y label','y');
[ax3,h2]=suplabel_pkg.suplabel('Super Y label (right)','yy');
[ax4,h3]=suplabel_pkg.suplabel('Super Title'  ,'t');
set(h3,'FontSize',20)

orient portrait
print('-dps','suplabel_test')
unix('convert suplabel_test.ps suplabel_test.jpg');
