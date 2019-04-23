String randomWord;
String ALPHABET_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
int wordsGenerated = 0;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  textSize(100);
  fill(random(0, 255));

  StringBuilder randomWord = new StringBuilder(3);
  
  for (int i = 0; i < 3; i++) { 
    int index = (int)(ALPHABET_STRING.length() * Math.random());
    randomWord.append(ALPHABET_STRING.charAt(index));
  }

  text(randomWord.toString(), random(0, width), random(0, height));
  // if "cat".equals(randomWord.toString()) {
  //   exit();
  // }
  
  ++wordsGenerated;
}
