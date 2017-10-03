public abstract class Driver implements DriverBrain {
    String name;
    double weight;

    public Driver(String name, double weight) {
        this.name = name;
        this.weight = weight;
    }
}
