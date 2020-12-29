fileName = 'DualStage';
makeNetlist(fileName);
checkCircuit(fileName);

L_A=0.5;
C_a=10e-12*L_A;
C_f=2.5e-12;
% C_dg=0;

defPar('C_a', C_a);
defPar('C_f', C_f);
defPar('L_A', L_A);
% defPar('c_dg_X3', 0);

htmlPage('Small signal design');
head2html('Schematic diagram');
text2html('We can now combine the input stage optimized for noise with the output stage that can drive the load. Utilizing this we can find bandwidth and gain of the circuit. For this we have to recognize that the size of the feedback capacitance is set by the need to have an overall voltage gain of 1, the fact that the antenna is going to attenuate the signal by a factor of 2 and the size of the antenna-transistor at $5 pF$ (assuming a maximum length antenna $l=0.5 m$).');
img2html([fileName, '.png'], 600);
netlist2html(fileName);
elementData2html();
params2html();

text2html('To find the gain and bandwidth of the circuit we evaluate the poles in gain and loopgain as well as the Bode-plot of gain, loopgain, servogain and asymptotic gain.');

simType('numeric');
source('V1');
detector('V_out');

gainType('gain');
dataType('pz');

gainPolesZeros = execute();       % Calculate the DC gain, the poles and the zeros
listPZ(gainPolesZeros);           % Display the results in the MATLAB Command Window
pz2html(gainPolesZeros);          % Display the results on the html page.

lgRef('Gm_M1_X3');
gainType('loopgain');
dataType('pz');

gainPolesZeros = execute();       % Calculate the DC gain, the poles and the zeros
listPZ(gainPolesZeros);           % Display the results in the MATLAB Command Window
pz2html(gainPolesZeros);          % Display the results on the html page.


gainType('gain');
dataType('Laplace');
gain=execute();


gainType('loopgain');
dataType('Laplace');
loopgain=execute();

gainType('asymptotic');
dataType('Laplace');
asymptoticgain=execute();

gainType('servo');
dataType('Laplace');
servogain=execute();

% gainType('direct');
% dataType('Laplace');
% directgain=execute();

result=[gain, loopgain, asymptoticgain, servogain];
figdBmag=plotdBmag('gain', result, 1e3, 1e9, 100);
fig2html(figdBmag,'gain.svg', 800);


% Generate the plot: x-axis: -1900...100Hz, y-axis: -1000...1000Hz.
% figPZ = plotPZ('Pole-zero plot', gainPolesZeros, [-1900, 100], [-1000, 1000]);
% head2html('Plot');                % Put a heading on the page
% fig2html(figPZ, 'figPZ.svg', 600);% Place the figure on the html page

text2html('At the upper bandwidth limit, $30 MHz$, the loopgain with lgRef=Gm_M1_X3 is ~$37 dB$. Given this and the feedback-factor beta=0.5 we find:')
text2html('$$A_v=l_A*A/(1+A*beta)=0.5*56/(1+56*0.5)=1.93$$');
text2html('This satisfies the requirement of a voltage gain of 2 less a deviation $-0.3 dB$ over the bandwidth of the antenna.');
head2html('Conclusion');
text2html('The design as presented satisfies the noise requirements, drive capability, bandwidth and gain.');

result = execute();
stophtml();
