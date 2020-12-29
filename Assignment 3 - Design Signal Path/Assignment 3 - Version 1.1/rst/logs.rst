====================
Project log messages
====================




.. container:: question

    checkCircuit('DualStage')




---------
DualStage
---------




.. container:: answer

    Building circuit pass 1




.. container:: answer

     DualStage




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["Ca", "V1", "E1", "Cf", "R1", "R2", "X3", "X1"]




.. container:: answer

    Found definition for model: C




.. container:: answer

    Expanding model for: Ca




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: V




.. container:: answer

    Expanding model for: V1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: E




.. container:: answer

    Expanding model for: E1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: C




.. container:: answer

    Expanding model for: Cf




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: R




.. container:: answer

    Expanding model for: R1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: R




.. container:: answer

    Expanding model for: R2




.. container:: answer

    Model expanded!




.. container:: answer

    Found: CMOS18ND in: libPath




.. container:: answer

    Building circuit pass 1




.. container:: answer

     CMOS18ND drain1 drain2 gate1 gate2 W = W L = L ID = ID




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["M1"]




.. container:: answer

    Found definition for model: CMOS18ND




.. container:: answer

    Expanding model for: M1




.. container:: answer

    Model expanded!




.. container:: answer

    Found sub circuit definition for CMOS18ND




.. container:: answer

    Found: CMOS18PN in: libPath




.. container:: answer

    Building circuit pass 1




.. container:: answer

     CMOS18PN drain gate source bulk W_N = W_N L_N = L_N ID_N = ID_N W_P = W_P L_P = L_P ID_P = ID_P




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["M1"]




.. container:: answer

    Found definition for model: CMOS18PN




.. container:: answer

    Expanding model for: M1




.. container:: answer

    Model expanded!




.. container:: answer

    Found sub circuit definition for CMOS18PN




.. container:: answer

    Start building matrices




.. container:: answer

    Finished building matrices




.. container:: answer

    Elapsed time: 4062.5 [ms].




.. container:: answer

    netlist2html: DualStage.cir




.. container:: answer

    params2html()




.. container:: question

    checkCircuit('Noise')




-----
Noise
-----




.. container:: answer

    Building circuit pass 1




.. container:: answer

     Noise




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["X1", "Ca", "V1", "Cf", "E1"]




.. container:: answer

    Found: NM18_noise in: libPath




.. container:: answer

    Building circuit pass 1




.. container:: answer

     NM18_noise ext comm int ID = ID IG = IG W = W L = L




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["I1", "H1", "F1", "I2"]




.. container:: answer

    Found definition for model: I




.. container:: answer

    Expanding model for: I1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: H




.. container:: answer

    Expanding model for: H1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: F




.. container:: answer

    Expanding model for: F1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: I




.. container:: answer

    Expanding model for: I2




.. container:: answer

    Model expanded!




.. container:: answer

    Found: NM18_noise in: libPath




.. container:: answer

    Building circuit pass 1




.. container:: answer

     NM18_noise ext comm int ID = ID IG = IG W = W L = L




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["I1", "H1", "F1", "I2"]




.. container:: answer

    Found definition for model: I




.. container:: answer

    Expanding model for: I1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: H




.. container:: answer

    Expanding model for: H1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: F




.. container:: answer

    Expanding model for: F1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: I




.. container:: answer

    Expanding model for: I2




.. container:: answer

    Model expanded!




.. container:: answer

    Found sub circuit definition for NM18_noise




.. container:: answer

    Found definition for model: C




.. container:: answer

    Expanding model for: Ca




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: V




.. container:: answer

    Expanding model for: V1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: C




.. container:: answer

    Expanding model for: Cf




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: E




.. container:: answer

    Expanding model for: E1




.. container:: answer

    Model expanded!




.. container:: answer

    Start building matrices




.. container:: answer

    Finished building matrices




.. container:: answer

    Elapsed time: 3859.375 [ms].




.. container:: question

    getParamValue()




.. container:: answer

    1.38064852e-23




.. container:: question

    getParamValue()




.. container:: answer

    300.0




.. container:: question

    defPar('C_a', '5e-12')




.. container:: answer

    0.000000000005




.. container:: question

    defPar('C_f', '2.5e-12')




.. container:: answer

    0.0000000000025




.. container:: question

    defPar('L', 'L')




.. container:: answer

    L




.. container:: question

    defPar('W', '0.0012')




.. container:: answer

    0.0012




.. container:: question

    defPar('ID', '0.006')




.. container:: answer

    0.006




.. container:: question

    defPar('L_A', '0.5')




.. container:: answer

    0.5




.. container:: question

    getParamValue()




.. container:: answer

    0.0000000003




.. container:: question

    getParamValue()




.. container:: answer

    0.000000000001




.. container:: question

    getParamValue()




.. container:: answer

    0.0084222762167608586383




.. container:: question

    delPar(L)




.. container:: answer

    35




.. container:: answer

    Parameter definition has been deleted.




.. container:: question

    defPar('L', '0.0000010062597409812884327420742759273')




.. container:: answer

    0.0000010062597409812884327




.. container:: answer

    netlist2html: Noise.cir




.. container:: answer

    params2html()




.. container:: question

    simType('numeric')




.. container:: answer

    NUMERIC




.. container:: question

    gainType('vi')




.. container:: answer

    VI




.. container:: question

    dataType('noise')




.. container:: answer

    NOISE




.. container:: question

    source(V1)




.. container:: answer

    V1




.. container:: question

    detector('V_out', 'V_0')




.. container:: answer

    ["V_out", FALSE]




.. container:: question

    execute()




.. container:: answer

    Execution time: 31.25 [ms].




.. container:: question

    delPar(L)




.. container:: answer

    38




.. container:: answer

    Parameter definition has been deleted.




.. container:: question

    getParamValue()




.. container:: answer

    0.0000000003




.. container:: question

    getParamValue()




.. container:: answer

    0.000000000001




.. container:: question

    getParamValue()




.. container:: answer

    0.0084222762167608586383




.. container:: question

    delPar(L)




.. container:: answer

    0




.. container:: error

    Error: unknown parameter.




.. container:: help

    For a list of available parameter definitions type 'parDefs()'.




.. container:: question

    defPar('L', '0.0000021193782943838778360936507771761')




.. container:: answer

    0.0000021193782943838778361




.. container:: question

    defPar('L', '0.0000021193782943838778360936507771761')




.. container:: answer

    0.0000021193782943838778361




.. container:: question

    defPar('W', '0.0006')




.. container:: answer

    0.0006




.. container:: question

    defPar('ID', '0.03')




.. container:: answer

    0.03




.. container:: question

    simType('numeric')




.. container:: answer

    NUMERIC




.. container:: question

    gainType('vi')




.. container:: answer

    VI




.. container:: question

    dataType('noise')




.. container:: answer

    NOISE




.. container:: question

    source(V1)




.. container:: answer

    V1




.. container:: question

    detector('V_out', 'V_0')




.. container:: answer

    ["V_out", FALSE]




.. container:: question

    execute()




.. container:: answer

    Execution time: 31.25 [ms].




.. container:: question

    checkCircuit('DualStage')




---------
DualStage
---------




.. container:: answer

    Building circuit pass 1




.. container:: answer

     DualStage




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["Ca", "V1", "E1", "Cf", "R1", "R2", "X3", "X1"]




.. container:: answer

    Found definition for model: C




.. container:: answer

    Expanding model for: Ca




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: V




.. container:: answer

    Expanding model for: V1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: E




.. container:: answer

    Expanding model for: E1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: C




.. container:: answer

    Expanding model for: Cf




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: R




.. container:: answer

    Expanding model for: R1




.. container:: answer

    Model expanded!




.. container:: answer

    Found definition for model: R




.. container:: answer

    Expanding model for: R2




.. container:: answer

    Model expanded!




.. container:: answer

    Found: CMOS18ND in: libPath




.. container:: answer

    Building circuit pass 1




.. container:: answer

     CMOS18ND drain1 drain2 gate1 gate2 W = W L = L ID = ID




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["M1"]




.. container:: answer

    Found definition for model: CMOS18ND




.. container:: answer

    Expanding model for: M1




.. container:: answer

    Model expanded!




.. container:: answer

    Found sub circuit definition for CMOS18ND




.. container:: answer

    Found: CMOS18PN in: libPath




.. container:: answer

    Building circuit pass 1




.. container:: answer

     CMOS18PN drain gate source bulk W_N = W_N L_N = L_N ID_N = ID_N W_P = W_P L_P = L_P ID_P = ID_P




.. container:: answer

    Building circuit, pass 2




.. container:: answer

    ["M1"]




.. container:: answer

    Found definition for model: CMOS18PN




.. container:: answer

    Expanding model for: M1




.. container:: answer

    Model expanded!




.. container:: answer

    Found sub circuit definition for CMOS18PN




.. container:: answer

    Start building matrices




.. container:: answer

    Finished building matrices




.. container:: answer

    Elapsed time: 3546.875 [ms].




.. container:: question

    defPar('C_a', '5e-12')




.. container:: answer

    0.000000000005




.. container:: question

    defPar('C_f', '2.5e-12')




.. container:: answer

    0.0000000000025




.. container:: question

    defPar('L_A', '0.5')




.. container:: answer

    0.5




.. container:: answer

    netlist2html: DualStage.cir




.. container:: answer

    params2html()




.. container:: question

    simType('numeric')




.. container:: answer

    NUMERIC




.. container:: question

    source(V1)




.. container:: answer

    V1




.. container:: question

    detector('V_out', 'V_0')




.. container:: answer

    ["V_out", FALSE]




.. container:: question

    gainType('gain')




.. container:: answer

    GAIN




.. container:: question

    dataType('pz')




.. container:: answer

    PZ




.. container:: question

    execute()




.. container:: question

    cancelPZ




.. container:: answer

    [0.0, - 2570132251.8233224734 + 6620842521.3541661047i, - 2570132251.8233224734 - 6620842521.3541661047i]




.. container:: answer

    Execution time: 31.25 [ms].




.. container:: answer

    pz2html




.. container:: question

    lgRef(Gm_M1_X3)




.. container:: answer

    Gm_M1_X3




.. container:: question

    gainType('loopgain')




.. container:: answer

    LOOPGAIN




.. container:: question

    dataType('pz')




.. container:: answer

    PZ




.. container:: question

    execute()




.. container:: question

    cancelPZ




.. container:: answer

    [0.0, -63293099.431019415327, -5381572920.4809644066]




.. container:: answer

    Execution time: 31.25 [ms].




.. container:: answer

    pz2html




.. container:: question

    gainType('gain')




.. container:: answer

    GAIN




.. container:: question

    dataType('Laplace')




.. container:: answer

    LAPLACE




.. container:: question

    execute()




.. container:: answer

    Execution time: 46.875 [ms].




.. container:: question

    gainType('loopgain')




.. container:: answer

    LOOPGAIN




.. container:: question

    dataType('Laplace')




.. container:: answer

    LAPLACE




.. container:: question

    execute()




.. container:: answer

    Execution time: 46.875 [ms].




.. container:: question

    gainType('asymptotic')




.. container:: answer

    ASYMPTOTIC




.. container:: question

    dataType('Laplace')




.. container:: answer

    LAPLACE




.. container:: question

    execute()




.. container:: answer

    Execution time: 15.625 [ms].




.. container:: question

    gainType('servo')




.. container:: answer

    SERVO




.. container:: question

    dataType('Laplace')




.. container:: answer

    LAPLACE




.. container:: question

    execute()




.. container:: answer

    Execution time: 46.875 [ms].




.. container:: question

    execute()




.. container:: answer

    Execution time: 31.25 [ms].


