// MuPAD settings, this MuPAD file should be edited with care!
MATHJAXLOCAL := FALSE:  // TRUE if mathJax has been installed locally in the
                        // INSTALLPATH, else FALSE.
// User options:
FMAX         := 1E13:   // Maximum absolute value of the frequency of poles
                        // and zeros in rad/s. This suppresses false poles
                        // and zeros generated by rounding errors.
DISP         := 4:      // Number of significant digits to be displayed.
CALC         := 20:     // Number of significant digits for calculation.
MAXSUBS      := 10:     // Maximum number of nested substitutions.
LTSPICE_XU2X := TRUE:   // Converts element identifier "XU" to "X".
GLOBAL_DEFS  := [k = 1.38064852e-23, q = 1.60217662e-19, T = 300, U_T = k*T/q ,
                 epsilon_0 = 1/c^2/mu_0, epsilon_SiO2 = 3.9, mu_0=4*PI*1e-7,
                 c = 2.99792458e+08]:
// SLiCAP search path settings:
// "" = project directory.
// "subdir/" = subdirectory "subdir" in project directory.
CIRPATH      := "":     // Search path for schematics and netlist files:
                        // (.asc, .cir, .net, sch).
TXTPATH      := "":     // Search path for text include files (file2html.m).
CSVPATH      := "":     // Search path for CSV include files (csv2html.m).
IMGPATH      := "":     // Search path for image include files (img2html.m).
