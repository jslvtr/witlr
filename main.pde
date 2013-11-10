void setup() {
    Reader read = new Reader("apprenticeships future.csv");
    Question q = read.getQuestion();
    println(q.getTitle());
}

void loop() {
    
}
