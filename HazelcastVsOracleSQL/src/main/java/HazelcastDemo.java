import com.hazelcast.client.HazelcastClient;
import com.hazelcast.map.IMap;
import java.util.Random;

public class HazelcastDemo {

    public static void main(String[] args) {

        IMap<Integer, Integer> map = HazelcastClient.newHazelcastClient().getMap("myMap");
        Random random = new Random();
        int numberOfEntries = 20000;

        long startTime = System.currentTimeMillis();
        for (int i = 0; i < numberOfEntries; i++) {
            map.put(i, random.nextInt());
        }
        long endTime = System.currentTimeMillis();
        System.out.println("Time to put " + numberOfEntries + " entries: " + (endTime - startTime) + "ms");

        startTime = System.currentTimeMillis();
        for (int i = 0; i < numberOfEntries; i++) {
            int key = random.nextInt(numberOfEntries);
            int value = map.get(key);
        }
        endTime = System.currentTimeMillis();
        System.out.println("Time to get " + numberOfEntries + " entries: " + (endTime - startTime) + "ms");
    }
}