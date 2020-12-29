

================
Drive Capability
================




----------------
Drive capability
----------------




The putput transistor is realised as a complementary parallel CS-stage. The output needs to drive the load as seen below, consisting of the cable, the brute-force load termination and the feedback-capacitor: 


.. figure:: /img/Drive.png
    :width: 600




The drive capability can be tested using a transient analysis. The load needs to be driven at :math:`V_{rms}=225 mV`  which assuming a sine-wave comes out to a :math:`V_{p}=320 mV` . The transistor is going to have the weakest drive capabilities at the upper bandwidth limitation. An analysis using spice reveals the behaviour below: 


.. figure:: /img/transient.png
    :width: 600




For this simulation the Length of the transistors was set to the minimum in the technology (:math:`180 nm` ) while the width was set at :math:`40um`  and subsequently the number of fingers adjusted to achieve :math:`V_{out}=~0 V @ V_{in}=0 V`  (:math:`M_n=3, M_p=11` ). 


Observing the transient behaviour we find the sine wave only clipping above the desired peak voltage. The load can be driven using this transistor stage. 
