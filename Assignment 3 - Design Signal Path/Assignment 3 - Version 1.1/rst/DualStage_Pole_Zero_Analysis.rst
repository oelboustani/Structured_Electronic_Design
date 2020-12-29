

==================
Pole Zero Analysis
==================




-----------------
Schematic diagram
-----------------




.. figure:: /img/DualStage.png
    :width: 600




-------
Netlist
-------

.. literalinclude:: ../DualStage.cir
    :linenos:




------------------------------
Expanded netlist  element data
------------------------------

.. csv-table::
    :delim: ;
    :header: RefDes, Nodes, Refs, Model, Param, Symbolic, Numeric
    :widths: 5 10 10 5 5 35 30
    
    Ca;  in P001; ; C; value; :math:`C_{a}`; :math:`5.0\cdot 10^{-12}`
    V1;  N003 0; ; V; value; :math:`0`; :math:`0.0`
     ; ; ; ;dc; :math:`0`; :math:`0.0`
     ; ; ; ;dcvar; :math:`0`; :math:`0.0`
     ; ; ; ;noise; :math:`0`; :math:`0.0`
    E1;  P001 0 N003 0; ; E; value; :math:`L_{A}`; :math:`0.5`
    Cf;  in N001; ; C; value; :math:`C_{f}`; :math:`2.5\cdot 10^{-12}`
    Gm_M1_X2;  N001 0 N002 0; ; G; value; :math:`g_{\mathrm{m{X2}}}`; :math:`0.02763`
    Gb_M1_X2;  N001 0 0 0; ; g; value; :math:`g_{\mathrm{b{X2}}}`; :math:`0.009668`
    Go_M1_X2;  N001 0 N001 0; ; g; value; :math:`g_{\mathrm{o{X2}}}`; :math:`0.0002778`
    Cgs_M1_X2;  N002 0; ; C; value; :math:`c_{\mathrm{{gs}{X2}}}`; :math:`7.34\cdot 10^{-13}`
    Cgb_M1_X2;  N002 0; ; C; value; :math:`c_{\mathrm{{gb}{X2}}}`; :math:`7.337\cdot 10^{-14}`
    Cdg_M1_X2;  N001 N002; ; C; value; :math:`c_{\mathrm{{dg}{X2}}}`; :math:`1.68\cdot 10^{-13}`
    Csb_M1_X2;  0 0; ; C; value; :math:`c_{\mathrm{{sb}{X2}}}`; :math:`1.008\cdot 10^{-13}`
    Cdb_M1_X2;  N001 0; ; C; value; :math:`c_{\mathrm{{db}{X2}}}`; :math:`1.008\cdot 10^{-13}`
    R1;  out N001; ; R; value; :math:`50`; :math:`50.0`
    R2;  0 out; ; R; value; :math:`50`; :math:`50.0`
    Gm_M1_X3;  0 N002 in 0; ; G; value; :math:`\frac{g_{\mathrm{m{X3}}}}{2}`; :math:`0.05526`
    Go_M1_X3;  0 N002 0 N002; ; g; value; :math:`\frac{g_{\mathrm{o{X3}}}}{2}`; :math:`0.0003571`
    Cgg_M1_X3;  in 0; ; C; value; :math:`\frac{c_{\mathrm{{gb}{X3}}}}{2}+\frac{c_{\mathrm{{gs}{X3}}}}{2}`; :math:`8.172\cdot 10^{-12}`
    Cdd_M1_X3;  0 N002; ; C; value; :math:`\frac{c_{\mathrm{{db}{X3}}}}{2}`; :math:`1.08\cdot 10^{-13}`
    Cdg1_M1_X3;  0 in; ; C; value; :math:`c_{\mathrm{{dg}{X3}}}`; :math:`0.0`
    Cdg2_M1_X3;  N002 0; ; C; value; :math:`c_{\mathrm{{dg}{X3}}}`; :math:`0.0`




----------------------------
List with circuit parameters
----------------------------

.. csv-table::
    :header: name, symbolic, value
    :delim: ;
    :widths: 10 50 40

    :math:`E_{\mathrm{{CRIT}{N{X2}}}}` ; :math:`5.6\cdot 10^{+6}` ; :math:`5.6\cdot 10^{+6}`
    :math:`\mathrm{IC}_{\mathrm{{CRIT}{N{X2}}}}` ; :math:`\frac{2.025\cdot 10^{-15}\,{E_{\mathrm{{CRIT}{N{X2}}}}}^2}{{U_{T}}^2\,{N_{\mathrm{s{X2}}}}^2\,{\left(1.8\cdot 10^{-7}\,\mathrm{\Theta}_{\mathrm{N{X2}}}\,E_{\mathrm{{CRIT}{N{X2}}}}+1.0\right)}^2}` ; :math:`31.71`
    :math:`N_{\mathrm{s{X2}}}` ; :math:`1.35` ; :math:`1.35`
    :math:`\mathrm{\Theta}_{\mathrm{N{X2}}}` ; :math:`0.28` ; :math:`0.28`
    :math:`U_{T}` ; :math:`\frac{T\,k}{q}` ; :math:`0.02585`
    :math:`E_{\mathrm{{CRIT}{P{X2}}}}` ; :math:`1.4\cdot 10^{+7}` ; :math:`1.4\cdot 10^{+7}`
    :math:`\mathrm{IC}_{\mathrm{{CRIT}{P{X2}}}}` ; :math:`\frac{2.025\cdot 10^{-15}\,{E_{\mathrm{{CRIT}{P{X2}}}}}^2}{{U_{T}}^2\,{N_{\mathrm{s{X2}}}}^2\,{\left(1.8\cdot 10^{-7}\,\mathrm{\Theta}_{\mathrm{P{X2}}}\,E_{\mathrm{{CRIT}{P{X2}}}}+1.0\right)}^2}` ; :math:`92.0`
    :math:`\mathrm{\Theta}_{\mathrm{P{X2}}}` ; :math:`0.35` ; :math:`0.35`
    :math:`\mathrm{IC}_{\mathrm{N{X2}}}` ; :math:`\frac{1.5\cdot 10^{-6}}{I_{\mathrm{0{N{X2}}}}}` ; :math:`2.339`
    :math:`g_{\mathrm{m{N{X2}}}}` ; :math:`\frac{0.001414}{U_{T}\,N_{\mathrm{s{X2}}}\,\sqrt{\frac{2.0\,\mathrm{IC}_{\mathrm{{CRIT}{N{X2}}}}+\mathrm{IC}_{\mathrm{{CRIT}{N{X2}}}}\,\sqrt{\frac{\mathrm{IC}_{\mathrm{N{X2}}}\,\left(\mathrm{IC}_{\mathrm{N{X2}}}+\mathrm{IC}_{\mathrm{{CRIT}{N{X2}}}}\right)}{\mathrm{IC}_{\mathrm{{CRIT}{N{X2}}}}}}+2.0\,\mathrm{IC}_{\mathrm{N{X2}}}\,\mathrm{IC}_{\mathrm{{CRIT}{N{X2}}}}+2.0\,{\mathrm{IC}_{\mathrm{N{X2}}}}^2}{\mathrm{IC}_{\mathrm{{CRIT}{N{X2}}}}}}}` ; :math:`0.01381`
    :math:`\mathrm{IC}_{\mathrm{P{X2}}}` ; :math:`\frac{4.091\cdot 10^{-7}}{I_{\mathrm{0{P{X2}}}}}` ; :math:`3.018`
    :math:`g_{\mathrm{m{P{X2}}}}` ; :math:`\frac{0.001414}{U_{T}\,N_{\mathrm{s{X2}}}\,\sqrt{\frac{2.0\,\mathrm{IC}_{\mathrm{{CRIT}{P{X2}}}}+\mathrm{IC}_{\mathrm{{CRIT}{P{X2}}}}\,\sqrt{\frac{\mathrm{IC}_{\mathrm{P{X2}}}\,\left(\mathrm{IC}_{\mathrm{P{X2}}}+\mathrm{IC}_{\mathrm{{CRIT}{P{X2}}}}\right)}{\mathrm{IC}_{\mathrm{{CRIT}{P{X2}}}}}}+2.0\,\mathrm{IC}_{\mathrm{N{X2}}}\,\mathrm{IC}_{\mathrm{P{X2}}}+2.0\,\mathrm{IC}_{\mathrm{N{X2}}}\,\mathrm{IC}_{\mathrm{{CRIT}{P{X2}}}}}{\mathrm{IC}_{\mathrm{{CRIT}{P{X2}}}}}}}` ; :math:`0.01382`
    :math:`g_{\mathrm{m{X2}}}` ; :math:`g_{\mathrm{m{N{X2}}}}+g_{\mathrm{m{P{X2}}}}` ; :math:`0.02763`
    :math:`\mathrm{VAL}_{\mathrm{X2}}` ; :math:`4.0\cdot 10^{+7}` ; :math:`4.0\cdot 10^{+7}`
    :math:`g_{\mathrm{o{X2}}}` ; :math:`\frac{11110.0}{\mathrm{VAL}_{\mathrm{X2}}}` ; :math:`0.0002778`
    :math:`g_{\mathrm{b{X2}}}` ; :math:`2.0\,g_{\mathrm{m{N{X2}}}}\,\left(N_{\mathrm{s{X2}}}-1.0\right)` ; :math:`0.009668`
    :math:`\mathrm{CGSO}_{\mathrm{X2}}` ; :math:`3.0\cdot 10^{-10}` ; :math:`3.0\cdot 10^{-10}`
    :math:`C_{\mathrm{{OX}{X2}}}` ; :math:`\frac{\mathrm{\epsilon}_{0}\,\mathrm{\epsilon}_{\mathrm{SiO2}}}{\mathrm{TOX}_{\mathrm{X2}}}` ; :math:`0.008422`
    :math:`c_{\mathrm{{gs}{X2}}}` ; :math:`0.00056\,\mathrm{CGSO}_{\mathrm{X2}}+6.72\cdot 10^{-11}\,C_{\mathrm{{OX}{X2}}}` ; :math:`7.34\cdot 10^{-13}`
    :math:`c_{\mathrm{{dg}{X2}}}` ; :math:`0.00056\,\mathrm{CGSO}_{\mathrm{X2}}` ; :math:`1.68\cdot 10^{-13}`
    :math:`\mathrm{CGBO}_{\mathrm{X2}}` ; :math:`1.0\cdot 10^{-12}` ; :math:`1.0\cdot 10^{-12}`
    :math:`c_{\mathrm{{gb}{X2}}}` ; :math:`7.2\cdot 10^{-7}\,\mathrm{CGBO}_{\mathrm{X2}}+\frac{3.36\cdot 10^{-11}\,C_{\mathrm{{OX}{X2}}}\,\left(N_{\mathrm{s{X2}}}-1.0\right)}{N_{\mathrm{s{X2}}}}` ; :math:`7.337\cdot 10^{-14}`
    :math:`\mathrm{CJB0}_{\mathrm{X2}}` ; :math:`0.001` ; :math:`0.001`
    :math:`\mathrm{LDS}_{\mathrm{X2}}` ; :math:`1.8\cdot 10^{-7}` ; :math:`1.8\cdot 10^{-7}`
    :math:`c_{\mathrm{{db}{X2}}}` ; :math:`0.00056\,\mathrm{CJB0}_{\mathrm{X2}}\,\mathrm{LDS}_{\mathrm{X2}}` ; :math:`1.008\cdot 10^{-13}`
    :math:`c_{\mathrm{{sb}{X2}}}` ; :math:`0.00056\,\mathrm{CJB0}_{\mathrm{X2}}\,\mathrm{LDS}_{\mathrm{X2}}` ; :math:`1.008\cdot 10^{-13}`
    :math:`I_{\mathrm{0{N{X2}}}}` ; :math:`2.0\,{U_{T}}^2\,C_{\mathrm{{OX}{X2}}}\,N_{\mathrm{s{X2}}}\,u_{\mathrm{0{N{X2}}}}` ; :math:`6.413\cdot 10^{-7}`
    :math:`I_{\mathrm{0{P{X2}}}}` ; :math:`2.0\,{U_{T}}^2\,C_{\mathrm{{OX}{X2}}}\,N_{\mathrm{s{X2}}}\,u_{\mathrm{0{P{X2}}}}` ; :math:`1.356\cdot 10^{-7}`
    :math:`u_{\mathrm{0{N{X2}}}}` ; :math:`0.0422` ; :math:`0.0422`
    :math:`u_{\mathrm{0{P{X2}}}}` ; :math:`0.00892` ; :math:`0.00892`
    :math:`\mathrm{TOX}_{\mathrm{X2}}` ; :math:`4.1\cdot 10^{-9}` ; :math:`4.1\cdot 10^{-9}`
    :math:`\mathrm{\epsilon}_{0}` ; :math:`\frac{1}{c^2\,\mathrm{\mu}_{0}}` ; :math:`8.854\cdot 10^{-12}`
    :math:`\mathrm{\epsilon}_{\mathrm{SiO2}}` ; :math:`3.9` ; :math:`3.9`
    :math:`c_{\mathrm{{iss}{X2}}}` ; :math:`c_{\mathrm{{gb}{X2}}}+c_{\mathrm{{dg}{X2}}}+c_{\mathrm{{gs}{X2}}}` ; :math:`9.753\cdot 10^{-13}`
    :math:`f_{\mathrm{T{{PN}{X2}}}}` ; :math:`\frac{0.1592\,g_{\mathrm{m{X2}}}}{c_{\mathrm{{iss}{X2}}}}` ; :math:`4.509\cdot 10^{+9}`
    :math:`\pi ` ; :math:`3.142` ; :math:`3.142`
    :math:`E_{\mathrm{{CRIT}{X3}}}` ; :math:`5.6\cdot 10^{+6}` ; :math:`5.6\cdot 10^{+6}`
    :math:`\mathrm{IC}_{\mathrm{{CRIT}{X3}}}` ; :math:`\frac{2.756\cdot 10^{-13}\,{E_{\mathrm{{CRIT}{X3}}}}^2}{{U_{T}}^2\,{N_{\mathrm{s{X3}}}}^2\,{\left(2.1\cdot 10^{-6}\,\mathrm{\Theta}_{\mathrm{X3}}\,E_{\mathrm{{CRIT}{X3}}}+1.0\right)}^2}` ; :math:`385.1`
    :math:`N_{\mathrm{s{X3}}}` ; :math:`1.35` ; :math:`1.35`
    :math:`\mathrm{\Theta}_{\mathrm{X3}}` ; :math:`0.28` ; :math:`0.28`
    :math:`\mathrm{IC}_{\mathrm{X3}}` ; :math:`\frac{0.000105}{I_{\mathrm{0{X3}}}}` ; :math:`163.7`
    :math:`g_{\mathrm{m{X3}}}` ; :math:`\frac{0.08485}{U_{T}\,N_{\mathrm{s{X3}}}\,\sqrt{\frac{2.0\,\mathrm{IC}_{\mathrm{{CRIT}{X3}}}+\mathrm{IC}_{\mathrm{{CRIT}{X3}}}\,\sqrt{\frac{\mathrm{IC}_{\mathrm{X3}}\,\left(\mathrm{IC}_{\mathrm{X3}}+\mathrm{IC}_{\mathrm{{CRIT}{X3}}}\right)}{\mathrm{IC}_{\mathrm{{CRIT}{X3}}}}}+2.0\,\mathrm{IC}_{\mathrm{X3}}\,\mathrm{IC}_{\mathrm{{CRIT}{X3}}}+2.0\,{\mathrm{IC}_{\mathrm{X3}}}^2}{\mathrm{IC}_{\mathrm{{CRIT}{X3}}}}}}` ; :math:`0.1105`
    :math:`\mathrm{VAL}_{\mathrm{X3}}` ; :math:`4.0\cdot 10^{+7}` ; :math:`4.0\cdot 10^{+7}`
    :math:`g_{\mathrm{o{X3}}}` ; :math:`\frac{28570.0}{\mathrm{VAL}_{\mathrm{X3}}}` ; :math:`0.0007143`
    :math:`\mathrm{CGSO}_{\mathrm{X3}}` ; :math:`3.0\cdot 10^{-10}` ; :math:`3.0\cdot 10^{-10}`
    :math:`C_{\mathrm{{OX}{X3}}}` ; :math:`\frac{\mathrm{\epsilon}_{0}\,\mathrm{\epsilon}_{\mathrm{SiO2}}}{\mathrm{TOX}_{\mathrm{X3}}}` ; :math:`0.008422`
    :math:`c_{\mathrm{{gs}{X3}}}` ; :math:`0.0012\,\mathrm{CGSO}_{\mathrm{X3}}+1.68\cdot 10^{-9}\,C_{\mathrm{{OX}{X3}}}` ; :math:`1.451\cdot 10^{-11}`
    :math:`c_{\mathrm{{dg}{X3}}}` ; :math:`0.0` ; :math:`0.0`
    :math:`\mathrm{CGBO}_{\mathrm{X3}}` ; :math:`1.0\cdot 10^{-12}` ; :math:`1.0\cdot 10^{-12}`
    :math:`c_{\mathrm{{gb}{X3}}}` ; :math:`4.2\cdot 10^{-6}\,\mathrm{CGBO}_{\mathrm{X3}}+\frac{8.4\cdot 10^{-10}\,C_{\mathrm{{OX}{X3}}}\,\left(N_{\mathrm{s{X3}}}-1.0\right)}{N_{\mathrm{s{X3}}}}` ; :math:`1.834\cdot 10^{-12}`
    :math:`\mathrm{CJB0}_{\mathrm{X3}}` ; :math:`0.001` ; :math:`0.001`
    :math:`\mathrm{LDS}_{\mathrm{X3}}` ; :math:`1.8\cdot 10^{-7}` ; :math:`1.8\cdot 10^{-7}`
    :math:`c_{\mathrm{{db}{X3}}}` ; :math:`0.0012\,\mathrm{CJB0}_{\mathrm{X3}}\,\mathrm{LDS}_{\mathrm{X3}}` ; :math:`2.16\cdot 10^{-13}`
    :math:`I_{\mathrm{0{X3}}}` ; :math:`2.0\,{U_{T}}^2\,C_{\mathrm{{OX}{X3}}}\,N_{\mathrm{s{X3}}}\,u_{\mathrm{0{X3}}}` ; :math:`6.413\cdot 10^{-7}`
    :math:`u_{\mathrm{0{X3}}}` ; :math:`0.0422` ; :math:`0.0422`
    :math:`\mathrm{TOX}_{\mathrm{X3}}` ; :math:`4.1\cdot 10^{-9}` ; :math:`4.1\cdot 10^{-9}`
    :math:`V_{\mathrm{{GS}{X3}}}` ; :math:`\mathrm{Vth}_{\mathrm{X3}}+2.0\,U_{T}\,N_{\mathrm{s{X3}}}\,\ln\left({\mathrm{e}}^{\sqrt{\mathrm{IC}_{\mathrm{X3}}}}-1.0\right)` ; :math:`1.253`
    :math:`\mathrm{Vth}_{\mathrm{X3}}` ; :math:`0.36` ; :math:`0.36`
    :math:`C_{a}` ; :math:`5.0\cdot 10^{-12}` ; :math:`5.0\cdot 10^{-12}`
    :math:`L_{A}` ; :math:`0.5` ; :math:`0.5`
    :math:`C_{f}` ; :math:`2.5\cdot 10^{-12}` ; :math:`2.5\cdot 10^{-12}`


.. container:: pztable

    Unable to determine DC value

    .. csv-table::
        :header: Poles, Re [Hz], Im [Hz], Mag [Hz], Q [-]
        :widths: 2, 10, 10, 10, 10

        1, -4.745e+8, 1.497e+9, 1.571e+9, 1.655
        2, -4.745e+8, -1.497e+9, 1.571e+9, 1.655

    .. csv-table::
        :header: Zeros, Re [Hz], Im [Hz], Mag [Hz], Q [-]
        :widths: 2, 10, 10, 10, 10

        1, 3.492e+9, 0.0, 3.492e+9, 
        2, -4.09e+9, 0.0, 4.09e+9, 
.. container:: pztable

    Unable to determine DC value

    .. csv-table::
        :header: Poles, Re [Hz], Im [Hz], Mag [Hz], Q [-]
        :widths: 2, 10, 10, 10, 10

        1, -6.136e+7, 0.0, 6.136e+7, 
        2, -5.967e+8, 0.0, 5.967e+8, 

    .. csv-table::
        :header: Zeros, Re [Hz], Im [Hz], Mag [Hz], Q [-]
        :widths: 2, 10, 10, 10, 10

        1, -8.351e+9, 0.0, 8.351e+9, 


.. figure:: /img/gain.svg
    :width: 800


