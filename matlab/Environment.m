classdef Environment < handle
    
    properties
        cars
    end
    
    methods
        
        function this = Environment()
            this.cars = repmat(Car,1,0);
        end
        
        function [x] = get_next_station_following(this, car_position)
        	x = inf;
        end
        
        function [x] = add_car(this,tempcar)
            this.cars = [this.cars;tempcar];      
        end
        
 
    end
end

