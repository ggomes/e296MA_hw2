classdef Environment < handle
    
    properties
        cars
    end
    
    methods
        
        function this = Environment()
            this.cars = [];
        end
        
        function [x] = add_car(this,car)
            this.cars=repmat(car,1,0);
            x=this.cars;
        end
        function [x] = get_next_station_following(this, car_position)
        	x = inf;
        end
        
    end

end

