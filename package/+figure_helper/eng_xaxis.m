
%% eng_xaxis updates the xaxis labels in a figure to remove exponents and replace with engineering notation.
%% Stop autoscaling x exponent

function x_axis = eng_xaxis();
  temp_label=get(gca,'xtick');
  set(gca,'xticklabel',[]);
  x_axis = figure_helper.eng_scale_num(temp_label.');
  set(gca,'xticklabel', x_axis);

  

end
