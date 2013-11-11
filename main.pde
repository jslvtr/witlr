import java.util.List;
import java.util.Iterator;
Menu m;
UKMap ukm;
List<Question> questions;
List<String> filenames;

void setup() {
    size(1000, 800);
    filenames = new ArrayList<String>();
    questions = new ArrayList<Question>();
    //    Reader read = new Reader("apprenticeships future.csv");
    //    Question q = read.getQuestion();
    //    println(q.getTitle());
    File folder = new File(dataPath("."));
    File[] csvs = folder.listFiles();
    for (int k = 0; k < csvs.length; k++) {
        if (csvs[k].isFile() && !csvs[k].getName().startsWith(".")) {
            filenames.add(csvs[k].getName());
//            questions.add(new Question(csvs[k].getName()));
        }
    }

    Iterator itr = filenames.iterator();
    while (itr.hasNext ()) {
        String str = (String)itr.next();
        Reader read = new Reader(str);
        questions.add(read.getQuestion());
    }

    m = new Menu(questions);
    ukm = new UKMap();
//    List<Answer> l = q.getAnswers();
//    Iterator i = l.iterator();
//    println(q.getTitle());
//    while (i.hasNext ()) {
//        Answer a = (Answer)i.next();
//        Bubble[] values = a.getBubbles();
//        for (int j = 0; j < values.length; j++) {
//            println(values[j].getCountry() + "\t" + a.getTitle() + "\t" + values[j].getSize());
//        }
//    }
}

void draw() {
    background(255);
    m.drawMenu();
}

