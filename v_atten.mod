: Calculates the fraction of attenuation from holding at 0 mV

NEURON {
        SUFFIX atten     : for "attenuation"
        RANGE v_atten
}

ASSIGNED {
        v (millivolt)
        v_atten (millivolt)
}

INITIAL {
        v_atten = 0
}

BREAKPOINT {
  v_atten = (v + 60.0) / (60.0)
}
