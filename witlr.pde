import java.io.FileReader;
public class Reader {
    String filename;
    String[] data;

    public Reader (String filename) {
        this.filename = filename;
        this.data = new String[numLines()];
        int count = 0;
        String line;
        try {
            BufferedReader fr = createReader(filename);

            while ( (line = fr.readLine ()) != null)
            {
                data[count] = line;
                count++;
            }
            fr.close();
        } 
        catch (Exception e) {
            println("Error reading file...");
        }
    }

    public Question getQuestion() {
        String[] vals = split(filename, ".");
        
        println(vals);
        Question q = new Question(vals[0]);
        for (int i = 0; i < data.length; i++) {
            String[] split = data[i].split(",");
            float[] values = new float[4];
            for (int j = 1; j < split.length; j++) {
                try {
                    values[j-1] = Float.parseFloat(split[i]);
                } 
                catch(Exception e) {
                    values[j-1] = 0.0f;
                }
            }   
            q.addAnswer(split[0], values);
        }
        return q;
    }

    private int numLines() {
        int counter = 0;
        String line;

        try {
            BufferedReader fr = createReader(filename);
            while ( (line = fr.readLine ()) != null) {
                counter++;
            }
            fr.close();
        } 
        catch (Exception e) {
            println("Error getting the number of lines");
        }

        return counter;
    }
}

