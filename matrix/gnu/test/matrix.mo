model matrix "Description"
    
    Real m = 4.8;
    Real b = 2.5;

    Real matrix[4, 1] = [m, b];
    Real matrix[4, 2] = [m, b];
    Real matrix[4, 3] = [m, b];
    Real matrix[4, 4] = [m, b];

equation

    // Equation 1: y = mx + b
    matrix[4, 1] = m + b;
    matrix[4, 2] = m * b;
    matrix[4, 3] = m + b;
    matrix[4, 4] = m / b;


end matrix;