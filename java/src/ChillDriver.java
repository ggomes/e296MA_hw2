public class ChillDriver extends Driver {

    public ChillDriver(String name, double weight) {
        super(name, weight);
    }

    @Override
    public double throttle_action(Car car, Environment env) {

        if(car.current_speed<car.max_speed)
            return 0.5*car.max_acceleration;
        else
            return -0.5*car.max_acceleration;
    }

    @Override
    public boolean stop_for_refueling(Car car, Environment env) {

        double next_station = env.get_next_station_following(car.position);
        double stop_at = car.position + car.stopping_distance();

        if( stop_at<next_station )
            return true;
        else
            return false;


    }
}
