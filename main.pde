import java.util.List;
import java.util.Iterator;
Menu m;

void setup() {
    size(1000, 800);
//    Reader read = new Reader("apprenticeships future.csv");
//    Question q = read.getQuestion();
//    println(q.getTitle());
    m = new Menu();
    
//    List<Answer> l = q.getAnswers();
//    Iterator i = l.iterator();
//    println(q.getTitle());
//    while(i.hasNext()) {
//        Answer a = (Answer)i.next();
//        Bubble[] values = a.getBubbles();
//        for(int j = 0; j < values.length; j++) {
//            println(values[j].getCountry() + "\t" + a.getTitle() + "\t" + values[j].getSize());
//        }
//    }
}

void draw() {
    m.drawMenu();
}
