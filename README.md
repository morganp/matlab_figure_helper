matlab_suplabel
===============

Port of the [mathworks suplabel][suplabel].

Originally released in 03 Jun 2005 by Ben Barrowes

Usage
--

PLaces text as a title, xlabel, or ylabel on a group of subplots. Returns a handle to the label and a handle to the axis.


    [ax,h]=suplabel(text,whichLabel,supAxes)

returns handles to both the axis and the label.


    ax=suplabel(text,whichLabel,supAxes)

returns a handle to the axis only. suplabel(text) with one input argument assumes whichLabel='x'

whichLabel is any of 'x', 'y', or 't', specifying whether the text is to be the xlable, ylabel, or title respectively.
  
supAxes is an optional argument specifying the Position of the "super" axes surrounding the subplots. supAxes defaults to [.075 .075 .85 .85] specify supAxes if labels get chopped or overlay subplots

EXAMPLE: 

    subplot(2,2,1);ylabel('ylabel1');title('title1') 
    subplot(2,2,2);ylabel('ylabel2');title('title2') 
    subplot(2,2,3);ylabel('ylabel3');xlabel('xlabel3') 
    subplot(2,2,4);ylabel('ylabel4');xlabel('xlabel4') 
    [ax,h1]=suplabel('super X label'); 
    [ax,h2]=suplabel('super Y label','y'); 
    [ax,h3]=suplabel('super Title' ,'t'); 
    set(h3,'FontSize',30) 
  
SEE ALSO: text, title, xlabel, ylabel, zlabel, subplot, 
            suptitle (Matlab Central)



[suplabel]: http://www.mathworks.co.uk/matlabcentral/fileexchange/7772-suplabel/