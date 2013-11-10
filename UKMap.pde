public class UKMap {
    PImage scotland;
    PImage nIreland;
    PImage wales;
    PImage england;

    public UKMap() {
        scotland = loadImage("scotland.png");
        nIreland = loadImage("nireland.png");
        wales = loadImage("Wales.png");
        england = loadImage("england.png");
    }

    public void uk(int country, float r) {
        int x = 150;
        int y = 50;


        colorMode(RGB);
        if (country == 0) { //england
            tint(r, 0, 0);
            image(england, (x+12), (y+146), 276, 341);
        }
        else if (country == 1) { //northernIreland
            tint(r, 0, 0);
            image(nIreland, (x-30), (y+180), 88, 73);
        }
        else if (country == 2) { //scotland
            tint(r, 0, 0);
            image(scotland, x, y, 171, 221);
        }
        else { //wales
            tint(r, 0, 0);
            image(wales, (x+52), (y+286), 101, 112);
        }
    }
}

