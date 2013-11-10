import java.util.List;
import java.util.ArrayList;

public class Question {
    public final String ENGLAND = "England";
    public final String NIRELAND = "N.Ireland";
    public final String SCOTLAND = "Scotland";
    public final String WALES = "Wales";


    String title;
    List<Answer> answers;
    public Question(String title) {
        this.title = title;
        answers = new ArrayList<Answer>();
    }

    public String getTitle() {
        return this.title;
    }

    public List<Answer> getAnswers() {
        return this.answers;
    }

    public void addAnswer(String title, float[] data) {
        Bubble[] toAdd = new Bubble[4];
        float min = 1.0f;
        float max = 0.0f;
        for (int i = 0; i < data.length; i++) {
            switch (i) {
            case 0:
                toAdd[i] = new Bubble(data[i], ENGLAND);
                if(data[i] < min) min = data[i];
                if(data[i] > max) max = data[i];
                break;
            case 1:
                toAdd[i] = new Bubble(data[i], NIRELAND);
                if(data[i] < min) min = data[i];
                if(data[i] > max) max = data[i];
                break;
            case 2:
                toAdd[i] = new Bubble(data[i], SCOTLAND);
                if(data[i] < min) min = data[i];
                if(data[i] > max) max = data[i];
                break;
            case 3:
                toAdd[i] = new Bubble(data[i], WALES);
                if(data[i] < min) min = data[i];
                if(data[i] > max) max = data[i];
                break;
            }
            toAdd[i].makeColour(min, max);
        }

        answers.add (new Answer(title, toAdd));
    }
}

