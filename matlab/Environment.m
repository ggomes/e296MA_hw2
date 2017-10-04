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
        
        function this= add_car(this, whichcar)
            this.cars(size(this.cars,2)+1) = whichcar;
        end
%         function this = add_car_properties(this,whichcar)
%             this.cars = whichcar;
%         end
    end

end

