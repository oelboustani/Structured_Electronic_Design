

=======================
Intermodulation product
=======================




To find the strength of the intermodulation we drive the stage with two sinusoidal signals of identical amplitude, no phase delay and frequencies of :math:`110 kHz`  and :math:`100 kHz`  respectively. The intermodulation products in the output, which can be found through Fourier-analysis must not exceed :math:`-50dBm`  of the original signals. Since the circuit employs no negative feedback the product can be referred to both output or input: 


.. figure:: /img/intermodulation.png
    :width: 1024




Assuming the 2nd-order and 3rd-order products are dominant and adding all these together the power of the intermodulation is :math:`-23.2 dB`  that of the signals. This does not meet the requirements 


Since the intermodulation could only be further improved by vastly increasing the loop gain in a circuit without feedback increasing the gain would be the only alternative. To this end :math:`gm`  would need to be increased, which is however not possible since the noise-requirements would no longer be met. 


The amplifier can not be built using a singular CS-stage without feedback. 
