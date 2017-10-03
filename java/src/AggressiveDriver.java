public class AggressiveDriver extends Driver {
    @Override
    public double throttle_action(Car car, Environment env) {
        return 0;
    }
    public AggressiveDriver(String name, double weight) {
        super(name, weight);
    }

    @Override
    public boolean stop_for_refueling(Car car, Environment env) {
        return false;
    }

}
