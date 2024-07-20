model doSteps "Description"
    
    Real doSteps = 4.6;
    Integer doSteps = 4;
    Boolean doSteps = true;
    String doSteps = "4.6";

equation

    if isReal(doSteps) then
    println("The number of steps is: " + doSteps);
    elseif isInteger(doSteps) then
    println("The number of steps is: " + doSteps);
    elseif isBoolean(doSteps) then
    println("The number of steps is: " + doSteps);
    else
    println("The input is not a valid number of steps.");
    end if;


end doSteps;