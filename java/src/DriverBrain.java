public interface DriverBrain {

    double throttle_action(Car car, Environment env);

    boolean stop_for_refueling(Car car, Environment env);
}
