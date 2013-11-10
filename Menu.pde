import java.io.File;

public class Menu {

    int [] xlocations;
    int [] ylocations;
    int menuItems;
    int menuWidth = 300;
    String[] filenames;
    Question[] questions;
    long timer;
    int lastI = -1;

    public Menu(List<Question> questions) {
        timer = System.currentTimeMillis();
        this.questions = questions.toArray(new Question[questions.size()]);
        filenames = new String[this.questions.length];
        for (int j = 0; j < this.questions.length; j++) {
            this.filenames[j] = this.questions[j].getTitle();
        }
        menuItems = this.filenames.length;
        xlocations = new int[menuItems];
        ylocations = new int[menuItems];
        for (int i = 0; i < menuItems; i++) //initialise coordinate arrays for menu array
        {
            xlocations[i] = width-350;
            ylocations[i] = 50 + (i * 30);
        }
    }

    public void drawMenu() {
        for (int i = 0; i < menuItems; i++)
        {
            if (mouseX > xlocations[i]   //if mouse is over square
            && mouseX < xlocations[i] + menuWidth
                && mouseY > ylocations[i]
                && mouseY < ylocations[i] + 25
                || (timer - System.currentTimeMillis() < 1000 && i == lastI))
            {
                timer = System.currentTimeMillis();
                lastI = i;
                fill(0, 255, 0, 65);
                rect(xlocations[i], ylocations[i], menuWidth, 20, 10, 10, 10, 10);

                fill(0, 0, 0, 255);
                textSize(15);
                text(filenames[i].substring(0, (filenames[i].length() > 15 ? 15 : filenames[i].length())), xlocations[i] + 10, ylocations[i] + 15);

                String[] answerValues = new String[questions[i].getAnswers().size()];

                for (int j = 0; j < questions[i].getAnswers().size(); j++) {
                    answerValues[j] = questions[i].getAnswers().get(j).getTitle();
                }
                println(answerValues);
                for (int z = 0; z < answerValues.length; z++) {
                    fill(0, 255, 0, 65);
                    rect(xlocations[i]-180, ylocations[i]+(z*30), menuWidth/2, 20, 10, 10, 10, 10);

                    fill(0, 0, 0, 255);
                    textSize(15);
                    text(answerValues[z].substring(0, (answerValues[z].length() > 15 ? 15 : answerValues[z].length())), xlocations[i] - 170, ylocations[i] + 15 + (z*30));
                    if (mouseX > xlocations[i]-180   //if mouse is over square
                    && mouseX < (xlocations[i]-180) + menuWidth/2
                    && mouseY > ylocations[i]+(z*30)
                    && mouseY < ylocations[i]+(z*30) + 25) {
                        timer = System.currentTimeMillis();
                        lastI = i;
                        float max = 0.0f;
                        float min = 1.0f;
                        
                        ukm.uk(0, questions[i].getAnswers().get(z).getBubbles()[0].getR()); // ENG
                        ukm.uk(1, questions[i].getAnswers().get(z).getBubbles()[1].getR()); // ENG
                        ukm.uk(2, questions[i].getAnswers().get(z).getBubbles()[2].getR()); // ENG
                        ukm.uk(3, questions[i].getAnswers().get(z).getBubbles()[3].getR()); // ENG
                        text("England: " + (int)(questions[i].getAnswers().get(z).getBubbles()[0].getSize() * 100) + "%", width-150, height-70);
                        text("N. Ireland: " + (int)(questions[i].getAnswers().get(z).getBubbles()[1].getSize() * 100) + "%", width-150, height-50);
                        text("Scotland: " + (int)(questions[i].getAnswers().get(z).getBubbles()[2].getSize() * 100) + "%", width-150, height-30);
                        text("Wales: " + (int)(questions[i].getAnswers().get(z).getBubbles()[3].getSize() * 100) + "%", width-150, height-10);
                    }
                }
            }
            else
            {
                fill(0, 0, 255, 65);
                rect(xlocations[i], ylocations[i], menuWidth, 20, 10, 10, 10, 10);

                fill(255, 0, 0, 0);
                fill(0, 0, 0, 255);
                textSize(15);
                text(filenames[i].substring(0, (filenames[i].length() > 15 ? 15 : filenames[i].length())), xlocations[i] + 10, ylocations[i] + 15);
            }
        }
    }

    void mouseClicked()
    {
        for (int i = 0; i < menuItems; i++)
        {
            if (mouseX > xlocations[i]   //if mouse is over square
            && mouseX < xlocations[i] + 100
                && mouseY > ylocations[i]
                && mouseY < ylocations[i] + 20)
            {
                fill(0, 0, 255, 255);
                rect(100, 100, 100, 100);
            }
        }
    }
}

