public class Menu {
    public Menu() {
        xlocations = new int[menuItems];
        ylocations = new int[menuItems];
        for (int i = 0; i < menuItems; i++) //initialise coordinate arrays for menu array
        {
            xlocations[i] = 700;
            ylocations[i] = 200 + (i * 30);
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
                choice = i;
                fill(0, 255, 0, 255);
                rect(xlocations[i], ylocations[i], 100, 20, 10, 10, 10, 10);

                fill(255, 0, 0, 255); //red
                textSize(15);
                text(i, 200, 300); 

                fill(0, 0, 0, 255);
                textSize(15);
                text("Option: " + i, xlocations[i] + 10, ylocations[i] + 15);
            }
            else
            {
                fill(0, 0, 255, 256);
                rect(xlocations[i], ylocations[i], 100, 20, 10, 10, 10, 10);

                fill(255, 0, 0, 0);
                int option = i + 1;
                text("Option: " + i, xlocations[i] + 10, ylocations[i] + 15);
            }
        }
    }
}

