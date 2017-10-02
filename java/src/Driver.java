public abstract class Driver implements DriverBrain {
    String name;
    double weight;

    public Driver(String name, double weight) {
        this.name = name;
        this.weight = weight;
    }
    public abstract double throttle_action(Car car, Environment env);

    public abstract boolean stop_for_refueling(Car car, Environment env);
}
