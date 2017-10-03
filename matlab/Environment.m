classdef Environment < handle
    
    properties
        cars
    end
    
    methods
        
        function this = Environment()
            this.cars = repmat(Car,1,0);
        end
        function this=add_car(this,carn)
            n=size(this.cars,2);
            this.cars(n+1)=carn;
        end
        function [x] = get_next_station_following(this, car_position)
        	x = inf;
        end
        
    end

end

