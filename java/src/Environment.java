import java.util.*;

public class Environment {

    public List<Car> cars;

    public Environment() {
         this.cars = new ArrayList<Car>();
    }

    public void add(Car cars){
        this.cars.add(cars);

    }

    public double get_next_station_following(double car_position){
        return Float.POSITIVE_INFINITY;
    }

}
