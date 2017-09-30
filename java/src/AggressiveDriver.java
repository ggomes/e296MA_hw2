public class AggressiveDriver extends Driver {

    public AggressiveDriver(String name, double weight) {
        super(name, weight);
    }

    @Override
    public boolean stop_for_refueling(Car car, Environment env) {
        return false;
    }

}
