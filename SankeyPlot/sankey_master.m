% or you can read the optional one
data = SankeyPlot.readJSON(); % OR
data = SankeyPlot.readCSV(); % OR
load('sankey.mat'); % Already in the proper format


% The sankey plot works simply, all you need to do is 
skp = SankeyPlot(data);
skp.preprocessData();
skp.calculateConnectionPoints;
skp.createLinks();
skp.createNodes();
skp.createLabels();



% Things you can do after: nothing for now, IGNORE
%{
skp.setNodeWidth(0.5); % change the width of the nodes
skp.setLinkColor([0.4, 0.4, 0.4]); % Set all links to one color, a little buggy
skp.setNodeColor([0.5, 0.5, 0.5]); % Set all nodes to one color, or you can supply a N x 3 matrix, where N is the # of nodes for different colors
% currently a little buggy, the link color will update automaticalyl to the node color
%}