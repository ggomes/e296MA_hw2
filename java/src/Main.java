public class Main {

    public static void main(String[] args) {

        Car car1 = new Car(
                new ChillDriver("Chris Dunlop", 130) ,
                800d,
                40d,
                5d );


        Car car2 = new Car(
                new AggressiveDriver("Ann Merriweather", 160) ,
                400d,
                60d,
                7d );

        Environment env = new Environment();

        env.cars.add(car1);
        env.cars.add(car2);

        System.out.println("Success!");
    }
}
