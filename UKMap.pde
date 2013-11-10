public class UKMap{
  PImage scotland;
  PImage nIreland;
  PImage wales;
  PImage england;

  public void uk(int country, float r, float g) {
    private int x = 150;
    private int y = 50;

    scotland = loadImage("scotland.png");
    nIreland = loadImage("nireland.png");
    wales = loadImage("Wales.png");
    england = loadImage("england.png");

    if(country == 0){ //england
      tint(r, g, 0);
      image(england, (x+12), (y+146), 276, 341);
    }else if(country == 1){ //northernIreland
      tint(0, 250, 0);
      image(nIreland, (x-30), (y+180), 88, 73);
    }else if(country == 2){ //scotland
      tint(0, 0, 255); 
      image(scotland, x, y, 171, 221);
    }else{ //wales
      tint(0, 255, 100);
      image(wales, (x+52), (y+286), 101, 112);
    }
  }

  void mouseOver() {

    //Scotland
    private int sX = 200;
    private int sY = 70;
    if (mouseX > sX && mouseX < (sX+150) && mouseY > sY && mouseY < (sY + 160)) {
      fill(250);
      rect(500, 200, 10, 10);
    }  

    //England
    private int eX = 280;
    private int eY = 260;
    rect(eX, eY, 200, 200);
  }
}

