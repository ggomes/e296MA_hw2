public class AggressiveDriver extends Driver {

    public AggressiveDriver(String name, double weight) {
        super(name, weight);
    }

    @Override
    public boolean stop_for_refueling(Car car, Environment env) {
        return false;
    }

    @Override
    public double throttle_action(Car car, Environment env) {

        if(car.current_speed<car.max_speed)
            return car.max_acceleration;
        else
            return -car.max_acceleration;
    }

//    class AggressiveDriver(Driver):
//    def throttle_action(self, car, env):
//            if car.current_speed < car.max_speed:
//            return car.max_acceleration
//        else:
//                return -car.max_acceleration
//    def stop_for_refueling(car, env):
//            return False

}
