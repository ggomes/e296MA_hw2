classdef Environment < handle
    
    properties
        cars
    end
    
    methods
        
        function this = Environment()
            this.cars = repmat(Car,1,0);
        end
        
        function cars = add_car(this,cars)
            this.cars = cars;
        end
        
        function [x] = get_next_station_following(this, car_position)
        	x = inf;
        end
        
    end

end

