
=========
Dualstage
=========


Contents:

.. toctree::
    :maxdepth: 2

    logs
    scripts

    DualStage_Circuit_data


-------
Netlist
-------

.. literalinclude:: ../Noise.cir
    :linenos:




------------------------------
Expanded netlist  element data
------------------------------

.. csv-table::
    :delim: ;
    :header: RefDes, Nodes, Refs, Model, Param, Symbolic, Numeric
    :widths: 5 10 10 5 5 35 30
    
    I1_X1;  0 1_X1; ; I; value; :math:`0`; :math:`0.0`
     ; ; ; ;dc; :math:`0`; :math:`0.0`
     ; ; ; ;dcvar; :math:`0`; :math:`0.0`
     ; ; ; ;noise; :math:`\frac{4\,T\,k\,\left(\frac{f_{\mathrm{{\ell}{X1}}}}{F}+1\right)}{R_{\mathrm{N{X1}}}}`; :math:`\frac{8.289\cdot 10^{-17}}{F}+1.644\cdot 10^{-21}`
    H1_X1;  N003 out 1_X1 10_X1; ; H; value; :math:`\frac{1}{g_{\mathrm{m{X1}}}}`; :math:`18.86`
    F1_X1;  N003 0 10_X1 0; ; F; value; :math:`\frac{s}{2\,f_{\mathrm{T{X1}}}\,\pi }`; :math:`1.581\cdot 10^{-10}\,s`
    I2_X1;  N003 0; ; I; value; :math:`0`; :math:`0.0`
     ; ; ; ;dc; :math:`0`; :math:`0.0`
     ; ; ; ;dcvar; :math:`0`; :math:`0.0`
     ; ; ; ;noise; :math:`0`; :math:`0.0`
    Ca;  N003 N002; ; C; value; :math:`C_{a}`; :math:`5.0\cdot 10^{-12}`
    V1;  N001 0; ; V; value; :math:`0`; :math:`0.0`
     ; ; ; ;dc; :math:`0`; :math:`0.0`
     ; ; ; ;dcvar; :math:`0`; :math:`0.0`
     ; ; ; ;noise; :math:`0`; :math:`0.0`
    Cf;  N003 0; ; C; value; :math:`C_{f}`; :math:`2.5\cdot 10^{-12}`
    E1;  N002 0 N001 0; ; E; value; :math:`L_{A}`; :math:`0.5`




----------------------------
List with circuit parameters
----------------------------

.. csv-table::
    :header: name, symbolic, value
    :delim: ;
    :widths: 10 50 40

    :math:`G_{\mathrm{X1}}` ; :math:`1.5` ; :math:`1.5`
    :math:`\mathrm{IC}_{\mathrm{X1}}` ; :math:`\frac{\mathrm{ID}\,L}{W\,I_{\mathrm{0{X1}}}}` ; :math:`7.845`
    :math:`N_{\mathrm{s{X1}}}` ; :math:`1.35` ; :math:`1.35`
    :math:`R_{\mathrm{N{X1}}}` ; :math:`\frac{\mathrm{IC}_{\mathrm{X1}}+1.0}{N_{\mathrm{s{X1}}}\,g_{\mathrm{m{X1}}}\,\left(G_{\mathrm{X1}}\,\mathrm{IC}_{\mathrm{X1}}+0.5\right)}` ; :math:`10.08`
    :math:`g_{\mathrm{m{X1}}}` ; :math:`\frac{1.414\,\mathrm{ID}}{U_{T}\,N_{\mathrm{s{X1}}}\,\sqrt{\frac{2.0\,\mathrm{IC}_{\mathrm{{CRIT}{X1}}}+\mathrm{IC}_{\mathrm{{CRIT}{X1}}}\,\sqrt{\frac{\mathrm{IC}_{\mathrm{X1}}\,\left(\mathrm{IC}_{\mathrm{X1}}+\mathrm{IC}_{\mathrm{{CRIT}{X1}}}\right)}{\mathrm{IC}_{\mathrm{{CRIT}{X1}}}}}+2.0\,\mathrm{IC}_{\mathrm{X1}}\,\mathrm{IC}_{\mathrm{{CRIT}{X1}}}+2.0\,{\mathrm{IC}_{\mathrm{X1}}}^2}{\mathrm{IC}_{\mathrm{{CRIT}{X1}}}}}}` ; :math:`0.05301`
    :math:`E_{\mathrm{{CRIT}{X1}}}` ; :math:`5.6\cdot 10^{+6}` ; :math:`5.6\cdot 10^{+6}`
    :math:`\mathrm{IC}_{\mathrm{{CRIT}{X1}}}` ; :math:`\frac{0.0625\,L^2\,{E_{\mathrm{{CRIT}{X1}}}}^2}{{U_{T}}^2\,{N_{\mathrm{s{X1}}}}^2\,{\left(L\,\mathrm{\Theta}_{\mathrm{X1}}\,E_{\mathrm{{CRIT}{X1}}}+1.0\right)}^2}` ; :math:`245.2`
    :math:`L` ; :math:`1.006\cdot 10^{-6}` ; :math:`1.006\cdot 10^{-6}`
    :math:`\mathrm{\Theta}_{\mathrm{X1}}` ; :math:`0.28` ; :math:`0.28`
    :math:`U_{T}` ; :math:`\frac{T\,k}{q}` ; :math:`0.02585`
    :math:`\mathrm{ID}` ; :math:`0.006` ; :math:`0.006`
    :math:`\mathrm{CGSO}_{\mathrm{X1}}` ; :math:`3.0\cdot 10^{-10}` ; :math:`3.0\cdot 10^{-10}`
    :math:`C_{\mathrm{{OX}{X1}}}` ; :math:`\frac{\mathrm{\epsilon}_{0}\,\mathrm{\epsilon}_{\mathrm{SiO2}}}{\mathrm{TOX}_{\mathrm{X1}}}` ; :math:`0.008422`
    :math:`W` ; :math:`0.0012` ; :math:`0.0012`
    :math:`c_{\mathrm{{gs}{X1}}}` ; :math:`0.3333\,W\,\left(3.0\,\mathrm{CGSO}_{\mathrm{X1}}+2.0\,L\,C_{\mathrm{{OX}{X1}}}\right)` ; :math:`7.14\cdot 10^{-12}`
    :math:`c_{\mathrm{{dg}{X1}}}` ; :math:`W\,\mathrm{CGSO}_{\mathrm{X1}}` ; :math:`3.6\cdot 10^{-13}`
    :math:`\mathrm{CGBO}_{\mathrm{X1}}` ; :math:`1.0\cdot 10^{-12}` ; :math:`1.0\cdot 10^{-12}`
    :math:`c_{\mathrm{{gb}{X1}}}` ; :math:`2.0\,L\,\mathrm{CGBO}_{\mathrm{X1}}+\frac{0.3333\,L\,W\,C_{\mathrm{{OX}{X1}}}\,\left(N_{\mathrm{s{X1}}}-1.0\right)}{N_{\mathrm{s{X1}}}}` ; :math:`8.789\cdot 10^{-13}`
    :math:`\mathrm{CJB0}_{\mathrm{X1}}` ; :math:`0.001` ; :math:`0.001`
    :math:`\mathrm{LDS}_{\mathrm{X1}}` ; :math:`1.8\cdot 10^{-7}` ; :math:`1.8\cdot 10^{-7}`
    :math:`c_{\mathrm{{db}{X1}}}` ; :math:`W\,\mathrm{CJB0}_{\mathrm{X1}}\,\mathrm{LDS}_{\mathrm{X1}}` ; :math:`2.16\cdot 10^{-13}`
    :math:`c_{\mathrm{{iss}{X1}}}` ; :math:`c_{\mathrm{{gb}{X1}}}+c_{\mathrm{{dg}{X1}}}+c_{\mathrm{{gs}{X1}}}` ; :math:`8.379\cdot 10^{-12}`
    :math:`f_{\mathrm{T{X1}}}` ; :math:`\frac{0.1592\,g_{\mathrm{m{X1}}}}{c_{\mathrm{{iss}{X1}}}}` ; :math:`1.007\cdot 10^{+9}`
    :math:`\pi ` ; :math:`3.142` ; :math:`3.142`
    :math:`I_{\mathrm{0{X1}}}` ; :math:`2.0\,{U_{T}}^2\,C_{\mathrm{{OX}{X1}}}\,N_{\mathrm{s{X1}}}\,u_{\mathrm{0{X1}}}` ; :math:`6.413\cdot 10^{-7}`
    :math:`u_{\mathrm{0{X1}}}` ; :math:`0.0422` ; :math:`0.0422`
    :math:`\mathrm{TOX}_{\mathrm{X1}}` ; :math:`4.1\cdot 10^{-9}` ; :math:`4.1\cdot 10^{-9}`
    :math:`\mathrm{\epsilon}_{0}` ; :math:`\frac{1}{c^2\,\mathrm{\mu}_{0}}` ; :math:`8.854\cdot 10^{-12}`
    :math:`\mathrm{\epsilon}_{\mathrm{SiO2}}` ; :math:`3.9` ; :math:`3.9`
    :math:`\mathrm{KF}_{\mathrm{X1}}` ; :math:`3.0\cdot 10^{-25}` ; :math:`3.0\cdot 10^{-25}`
    :math:`T` ; :math:`300.0` ; :math:`300.0`
    :math:`f_{\mathrm{{\ell}{X1}}}` ; :math:`\frac{0.25\,\mathrm{KF}_{\mathrm{X1}}\,R_{\mathrm{N{X1}}}\,{g_{\mathrm{m{X1}}}}^2}{L\,T\,W\,k\,C_{\mathrm{{OX}{X1}}}}` ; :math:`50410.0`
    :math:`k` ; :math:`1.381\cdot 10^{-23}` ; :math:`1.381\cdot 10^{-23}`
    :math:`C_{a}` ; :math:`5.0\cdot 10^{-12}` ; :math:`5.0\cdot 10^{-12}`
    :math:`C_{f}` ; :math:`2.5\cdot 10^{-12}` ; :math:`2.5\cdot 10^{-12}`
    :math:`L_{A}` ; :math:`0.5` ; :math:`0.5`




The main noise contribution is from the input stage. To simulate noise performance we find design parameters which are sufficient for a CS-stage and then extrapolate those to a differential input stage with the same noise performance. 


Given a certain width there is a length at which :math:`C_{ISS}=C_s` . We find this length and then increase :math:`I_D`  to just above the point where the noise floor is sufficiently low. 


---------------------
Source referred noise
---------------------




The spectrum of the source referred noise power in V^2/Hz is: 


.. math::

    S_{v}=\frac{1.19\cdot 10^{-12}}{F}+2.361\cdot 10^{-17}


The plot below shows the source referred noise spectrum from  1kHz to 1GHz. 


.. figure:: /img/CScapNoiseVspectrum.svg
    :width: 800




Given a width :math:`W=1.2 mm` , :math:`L=1 um`  and :math:`I_D=6 mA`  a CS-stage fulfills the noise requirements. This can be translated to a differential stage by using the same length but doubling the width of both transistors while also doubling the current. 


Should these values prove insufficient to produce adequate gain the width can be adjusted at no cost to the noise performance. 


---------------------
Source referred noise
---------------------




The spectrum of the source referred noise power in V^2/Hz is: 


.. math::

    S_{v}=\frac{1.137\cdot 10^{-12}}{F}+2.467\cdot 10^{-17}


The plot below shows the source referred noise spectrum from  1kHz to 1GHz. 


.. figure:: /img/CScapNoiseVspectrum.svg
    :width: 800




The above simulation was performed at :math:`W=0.6 mm` , :math:`L=2.1 um`  and :math:`I_D=30 mA and also meets the requirements. For the next step the first step of values is used. 
    Drive_Capability
    DualStage_Small_signal_design
