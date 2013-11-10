public class Bubble {
    private final String country;
    private final float size;
    private float r;
    private float g;


    public Bubble (float size, String country) {
        this.country = country;
        this.size = size;
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
    
    public void makeColour(float min, float max){
      r = map((size), min, max, 0, 255);
    }
}
