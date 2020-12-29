fileName = 'Drive';
%makeNetlist(fileName);
%checkCircuit(fileName);
%htmlPage(fileName);

htmlPage('Drive Capability');
head2html('Drive capability');
text2html('The putput transistor is realised as a complementary parallel CS-stage. The output needs to drive the load as seen below, consisting of the cable, the brute-force load termination and the feedback-capacitor:');
img2html([fileName, '.png'], 600);
text2html('The drive capability can be tested using a transient analysis. The load needs to be driven at $V_{rms}=225 mV$ which assuming a sine-wave comes out to a $V_{p}=320 mV$. The transistor is going to have the weakest drive capabilities at the upper bandwidth limitation. An analysis using spice reveals the behaviour below:');
img2html('transient.png', 600);
text2html('For this simulation the Length of the transistors was set to the minimum in the technology ($180 nm$) while the width was set at $40um$ and subsequently the number of fingers adjusted to achieve $V_{out}=~0 V @ V_{in}=0 V$ ($M_n=3, M_p=11$).');
text2html('Observing the transient behaviour we find the sine wave only clipping above the desired peak voltage. The load can be driven using this transistor stage.');

stophtml();