public class Answer {
    String title;
    Bubble[] values = new Bubble[4];
    
    public Answer(String title, Bubble[] values) {
        this.title = title;
        this.values = values;
    }

    public String getTitle() {
        return this.title;
    }

    public Bubble[] getBubbles() {
        return this.values;
    }
}

