clear all;
initProject('Task_print', mfilename);

htmlPage('Task description');
head2html('General Task');
text2html('Perform a design study on different architectures for the implementation of the active antenna: $V_{DS}$, $I_{DS}$, $W$ and $L$.');
head2html('1. Requirements');
text2html('The antenna must drive a load of $50 Ω$ with $1 mW$ while staying within the supply voltage of 1.8 V.');
text2html('The noise floor must be below: $25*10^-25 V/(m^2*Hz)$');
text2html('The 1/f-noise corner freqeuency must be below $100 kHz$.');
text2html('The 1dB-compression point must be beyond $1 mW$.');
text2html('The intermodeulation product within the signal band must be below $-50 dBm$.');
head2html('2. The simple CS-stage -- Approach');
text2html('Find whether drive capability and noise performance can be met with a single CS-stage.');
text2html('Probe whether the distortion parameters are met with the design chosen')

htmlPage('Circuit');
text2html('I built the circuit in LTSpice and performed the simulations there to get a coherent picture over all requirements (distortion is inherently non-linear which cannot be simulated in SLiCAP.');
head2html('Circuit diagramm');
img2html('Circuit.png', 1024);
text2html('The circuit contains both source capacitance and load resistance as well as a proper biasing circuitry.')

htmlPage('Noise analysis');
text2html('First we observe the noise performance of the circuit. To this end we choose the length of the antenna as long as possible which aids in enlargening the source capacitance and lowers the requirement for the voltage to voltage gain of the amplifier.')
text2html('This fixes: $l=0.5 m$.');
text2html('We can deduce from the noise spectrum that there is an optimum for the noise when $C_{iss}=C_s$');
text2html('This leads to an optimum for the area of the transistor that is solely dependant on this parameter and technology parameters.')
text2html('This leads to: $W*L=7.8*10^{-10} m^2$.')
text2html('Now we can use the noise floor to find the a minimum value for $gm$. This depends weakly on the operating region, natural constants, temperature and the length of the antenna. Given the later requirement of drive capability it seems prudent assume saturation here. The temperature is fixed at 300K at this point. Should the design prove otherwise feasible we will come back to simulating the extremes of the operating temperature.')
text2html('The minimuum for $gm$ comes out to $7 mS$')
text2html('The relationship between the bandwidth ($gm/pi*2*C_{iss}$) further determines an upper limit for $gm$ at the given $C_{iss}$ to maintain a 1/f-corner frequency below 100 kHz.')
text2html('This can be found to be roughly $25 mS$. Given this and setting $L$ to the lowest possible value for the technology, $180 nm$ we find a full definition for $W$, $L$, and $I_{DS}$.')
text2html('It turns out that the current in this case is far too low to support saturation. As such we scale up $I_{DS}$ while maintaing area and $gm$.')
text2html('Through this iterative process we find a set of values that makes the requirements: $W=860um$, $L=900nm$, $I_{DS}=12mA$')
img2html('noise.png', 1024)

htmlPage('Drive capability');
text2html('The load $50 Ω$ is to be driven with $1 mW$. This leads to a requirement in $V_{rms}=225 mV$ and $I_{rms}=4.7 mA$ respectively. Additionally we know that the input voltage, derived from the E-field at the antenna is $V_{in,rms}=225 mV$ leading to a voltage-to-voltage amplification of at least 1.')
text2html('We assume all signals to be sinusoidal.');
text2html('The current set of prameters leads to an amplification over the bandwidth of:');
img2html('amplification.png', 1024);
text2html('To test drive capability we measure the power delivered to the load when performing an AC analysis:');
img2html('drive_capability.png', 1024);
text2html('The stage can drive the load as required')

htmlPage('Intermodulation product');
text2html('To find the strength of the intermodulation we drive the stage with two sinusoidal signals of identical amplitude, no phase delay and frequencies of $110 kHz$ and $100 kHz$ respectively. The intermodulation products in the output, which can be found through Fourier-analysis must not exceed $-50dBm$ of the original signals. Since the circuit employs no negative feedback the product can be referred to both output or input:')
img2html('intermodulation.png', 1024)
text2html('Assuming the 2nd-order and 3rd-order products are dominant and adding all these together the power of the intermodulation is $-23.2 dB$ that of the signals. This does not meet the requirements')
text2html('Since the intermodulation could only be further improved by vastly increasing the loop gain in a circuit without feedback increasing the gain would be the only alternative. To this end $gm$ would need to be increased, which is however not possible since the noise-requirements would no longer be met.')
text2html('The amplifier can not be built using a singular CS-stage without feedback.')

stophtml();