matlab_suplabel
===============

Port of the [mathworks suplabel][suplabel].

Originally released in 03 Jun 2005 by Ben Barrowes

Usage
--

It is imported as a package into your script or projects. Packages require the parent folder to be added to the search path.

Places text as a title, xlabel, or ylabel on a group of subplots. Returns a handle to the label and a handle to the axis.

    addpath('your_path_here/matlab_figure_helper/package/');
    import figure_helper.*

    [ax,h]=figure_helper.suplabel(text,whichLabel,supAxes)

returns handles to both the axis and the label.


    ax=figure_helper.suplabel(text,whichLabel,supAxes)

returns a handle to the axis only. suplabel(text) with one input argument assumes whichLabel='x'

whichLabel is any of 'x', 'y', or 't', specifying whether the text is to be the xlable, ylabel, or title respectively.
  
supAxes is an optional argument specifying the Position of the "super" axes surrounding the subplots. supAxes defaults to [.075 .075 .85 .85] specify supAxes if labels get chopped or overlay subplots

EXAMPLE: 

    subplot(2,2,1);ylabel('ylabel1');title('title1') 
    subplot(2,2,2);ylabel('ylabel2');title('title2') 
    subplot(2,2,3);ylabel('ylabel3');xlabel('xlabel3') 
    subplot(2,2,4);ylabel('ylabel4');xlabel('xlabel4') 
    [ax,h1]=figure_helper.suplabel('super X label'); 
    [ax,h2]=figure_helper.suplabel('super Y label','y'); 
    [ax,h3]=figure_helper.suplabel('super Title' ,'t'); 
    set(h3,'FontSize',30) 
  
SEE ALSO: [text][], [title][], [xlabel][], [ylabel][], [zlabel][], [subplot][], 
            suptitle (Matlab Central)



[suplabel]: http://www.mathworks.co.uk/matlabcentral/fileexchange/7772-suplabel/
[text]: http://www.mathworks.co.uk/help/matlab/ref/text.html
[title]: http://www.mathworks.co.uk/help/matlab/ref/title.html
[xlabel]: http://www.mathworks.co.uk/help/matlab/ref/xlabel.html
[ylabel]: http://www.mathworks.co.uk/help/matlab/ref/ylabel.html
[zlabel]: http://www.mathworks.co.uk/help/matlab/ref/zlabel.html
[subplot]: http://www.mathworks.co.uk/help/matlab/ref/subplot.html
