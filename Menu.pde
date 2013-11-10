import java.io.File;

public class Menu {

    int [] xlocations;
    int [] ylocations;
    int menuItems;
    int menuWidth = 300;
    String[] filenames;

    public Menu() {
        File folder = new File("/Users/jslvtr/Documents/Processing/witlr/data/");
        File[] csvs = folder.listFiles();
        filenames = new String[csvs.length];
        for(int k = 0; k < csvs.length; k++) {
            if(csvs[k].isFile()) {
                filenames[k] = csvs[k].getName();
                println(csvs[k].getName());
            }
        }
        menuItems = csvs.length;
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
            && mouseX < xlocations[i] + 100
                && mouseY > ylocations[i]
                && mouseY < ylocations[i] + 20)
            {
                fill(0, 255, 0, 65);
                rect(xlocations[i], ylocations[i], menuWidth, 20, 10, 10, 10, 10);

                fill(0, 0, 0, 255);
                textSize(15);
                text(filenames[i], xlocations[i] + 10, ylocations[i] + 15);
            }
            else
            {
                fill(0, 0, 255, 65);
                rect(xlocations[i], ylocations[i], menuWidth, 20, 10, 10, 10, 10);

                fill(255, 0, 0, 0);
                fill(0, 0, 0, 255);
                textSize(15);
                text(filenames[i], xlocations[i] + 10, ylocations[i] + 15);
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

