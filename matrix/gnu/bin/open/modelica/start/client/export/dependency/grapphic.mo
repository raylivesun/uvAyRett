model graphic "Description"
    
    Real graph = 4.8;
    Real local = 3.6;
    Real types = 2.4;
    Real data = 1.2;

equation

    eq1(t) = graph - local - types - data;
    eq2(t) = 0.05 * t;  
    eq3(t) = 0.02 * t^2;  
    eq4(t) = 0.01 * t^3;
    eq5(t) = 0.005 * t^4;
    eq6(t) = 0.002 * t^5;
    eq7(t) = 0.001 * t^6;
    eq8(t) = 0.0005 * t^7;
    eq9(t) = 0.0002 * t^8;
    eq10(t) = 0.0001 * t^9;
        

end graphic;