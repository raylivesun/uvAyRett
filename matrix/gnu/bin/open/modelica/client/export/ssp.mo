model ssp "Description"
    
    Real time = 4.8;
    Real fuel_consumption = 10;
    Real distance = 1000;
    Real fuel_price = 1.5;
    Real total_cost = fuel_consumption * fuel_price * distance;

    output Real total_cost;
    output Real fuel_price;
    output Real distance;
    output Real time;
    output Real fuel_consumption;


end ssp;