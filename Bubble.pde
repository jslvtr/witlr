public class Bubble {
    private final String country;
    private final float size;


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
}
