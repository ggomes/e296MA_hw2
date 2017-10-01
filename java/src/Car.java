public class Car {

    Driver driver;
    double weight;      // lb
    double current_speed;
    double max_speed;   // m/s
    double max_acceleration; // m/s/s
    double position; // m

    public Car(Driver driver, double weight, double max_speed, double max_acceleration) {
        this.driver = driver;
        this.weight = weight;
        this.current_speed = 0d;
        this.max_speed = max_speed;
        this.max_acceleration = max_acceleration;
        this.position = 0d;
    }

    public double stopping_distance(){
        return 0.5 * current_speed*current_speed / max_acceleration;
    }

}
