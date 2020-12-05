

==============
Noise analysis
==============




First we observe the noise performance of the circuit. To this end we choose the length of the antenna as long as possible which aids in enlargening the source capacitance and lowers the requirement for the voltage to voltage gain of the amplifier. 


This fixes: :math:`l=0.5 m` . 


We can deduce from the noise spectrum that there is an optimum for the noise when :math:`C_{iss}=C_s`  


This leads to an optimum for the area of the transistor that is solely dependant on this parameter and technology parameters. 


This leads to: :math:`W*L=7.8*10^{-10} m^2` . 


Now we can use the noise floor to find the a minimum value for :math:`gm` . This depends weakly on the operating region, natural constants, temperature and the length of the antenna. Given the later requirement of drive capability it seems prudent assume saturation here. The temperature is fixed at 300K at this point. Should the design prove otherwise feasible we will come back to simulating the extremes of the operating temperature. 


The minimuum for :math:`gm`  comes out to :math:`7 mS`  


The relationship between the bandwidth (:math:`gm/pi*2*C_{iss}` ) further determines an upper limit for :math:`gm`  at the given :math:`C_{iss}`  to maintain a 1/f-corner frequency below 100 kHz. 


This can be found to be roughly :math:`25 mS` . Given this and setting :math:`L`  to the lowest possible value for the technology, :math:`180 nm`  we find a full definition for :math:`W` , :math:`L` , and :math:`I_{DS}` . 


It turns out that the current in this case is far too low to support saturation. As such we scale up :math:`I_{DS}`  while maintaing area and :math:`gm` . 


Through this iterative process we find a set of values that makes the requirements: :math:`W=860um` , :math:`L=900nm` , :math:`I_{DS}=12mA`  


.. figure:: /img/noise.png
    :width: 1024


