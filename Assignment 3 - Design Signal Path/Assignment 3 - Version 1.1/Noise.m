fileName = 'Noise';
makeNetlist(fileName);
checkCircuit(fileName);

Noisefloor=25e-18;
f_floor=30e6;
L_A=0.5;
C_a=10e-12*L_A;
C_f=2.5e-12;
C_s=C_a+C_f;
W=1.2e-3;
% L=1.25e-6;
ID=6e-3;
k=getParValue('k');
T=getParValue('T');
Req=L_A^2*Noisefloor/(4*k*T*L_A^2);
CISS_CS=1;
CISS=CISS_CS*C_s;
L=sym('L');


defPar('C_a', C_a);
defPar('C_f', C_f);
defPar('L', L);
defPar('W', W);
defPar('ID', ID);
defPar('L_A', L_A);


% W=getParValue('W');
% L=getParValue('L');
% C_a=getParValue('C_a');
% C_f=getParValue('C_f');

C0VL=getParValue('CGSO_X1');
CGB0=getParValue('CGBO_X1');
COX=getParValue('C_OX_X1');
Ctot=(2*COX*W*L/3)+(2*C0VL*W)+(2*L*CGB0);
Length_opt1=solve(Ctot-CISS==0,L);
delPar L;
L=Length_opt1;
defPar('L', L);

netlist2html(fileName);
elementData2html();
params2html();

text2html('The main noise contribution is from the input stage. To simulate noise performance we find design parameters which are sufficient for a CS-stage and then extrapolate those to a differential input stage with the same noise performance.')
text2html('Given a certain width there is a length at which $C_{ISS}=C_s$. We find this length and then increase $I_D$ to just above the point where the noise floor is sufficiently low.');

 simType('numeric');                         % Set the simulation type to 'numeric'.
 gainType('vi');
 dataType('noise');
 source('V1');
 detector('V_out');
 noiseResult = execute();
 head2html('Source referred noise');
 iNoise = getInoise(noiseResult);
 text2html('The spectrum of the source referred noise power in V^2/Hz is:');
 eqn2html(sym('S_v'), iNoise);
 text2html(['The plot below shows the source referred noise spectrum '...
    'from  1kHz to 1GHz.']);
figSin = plotInoise('Input noise spectrum', noiseResult, 1e3, 1e9, 100);
fig2html(figSin, 'CScapNoiseVspectrum.svg', 800);


text2html('Given a width $W=1.2 mm$, $L=1 um$ and $I_D=6 mA$ a CS-stage fulfills the noise requirements. This can be translated to a differential stage by using the same length but doubling the width of both transistors while also doubling the current.');
text2html('Should these values prove insufficient to produce adequate gain the width can be adjusted at no cost to the noise performance.');

delPar L;
L=sym('L');
W=0.6e-3;
ID=30e-3;
C0VL=getParValue('CGSO_X1');
CGB0=getParValue('CGBO_X1');
COX=getParValue('C_OX_X1');
Ctot=(2*COX*W*L/3)+(2*C0VL*W)+(2*L*CGB0);
Length_opt2=solve(Ctot-CISS==0,L);
delPar L;
L=Length_opt2;
defPar('L', L);

defPar('L', L);
defPar('W', W);
defPar('ID', ID);


 simType('numeric');                         % Set the simulation type to 'numeric'.
 gainType('vi');
 dataType('noise');
 source('V1');
 detector('V_out');
 noiseResult = execute();
 head2html('Source referred noise');
 iNoise = getInoise(noiseResult);
 text2html('The spectrum of the source referred noise power in V^2/Hz is:');
 eqn2html(sym('S_v'), iNoise);
 text2html(['The plot below shows the source referred noise spectrum '...
    'from  1kHz to 1GHz.']);
figSin = plotInoise('Input noise spectrum', noiseResult, 1e3, 1e9, 100);
fig2html(figSin, 'CScapNoiseVspectrum.svg', 800);

text2html('The above simulation was performed at $W=0.6 mm$, $L=2.1 um$ and $I_D=30 mA and also meets the requirements. For the next step the first step of values is used.');

stophtml();
