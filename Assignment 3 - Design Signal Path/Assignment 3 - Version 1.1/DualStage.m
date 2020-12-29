clear all;
initProject('Dualstage', mfilename('fullpath'));

fileName = 'DualStage';
makeNetlist(fileName);
checkCircuit(fileName);
htmlPage('Circuit data');
head2html('Schematic diagram');
img2html([fileName, '.png'], 600);
netlist2html(fileName);
elementData2html();
params2html();

Noise();
drive();
polezero();

stophtml();
