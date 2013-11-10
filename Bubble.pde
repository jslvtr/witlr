public class Bubble {
    private final String country;
    private final float size;
    private float r;
    private float g;


    public Bubble (float size, String country, int r, int g) {
        this.country = country;
        this.size = size;
        this.r = r;
        this.g = g;
    }

    public String getCountry () {
        return this.country;
    }

    public float getSize () {
        return this.size;
    }
    
    public float getR(){
        return this.r; 
    }
    
    public float getG(){
        return this.g; 
    }
    
    void makeColour(){
      r = map((size*100), 0, 100, 255, 0);
      g = map((size*100), 0, 100, 0, 255);
    }
}
