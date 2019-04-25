import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch extends PApplet {

String randomWord;
String ALPHABET_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
int wordsGenerated = 0;

public void setup() {
  
  background(0);
}

public void draw() {
  textSize(100);
  fill(random(0, 255));

  StringBuilder randomWord = new StringBuilder(3);
  
  for (int i = 0; i < 3; i++) { 
    int index = (int)(ALPHABET_STRING.length() * Math.random());
    randomWord.append(ALPHABET_STRING.charAt(index));
  }

  if ("cat".equals(randomWord.toString())) {
    text(randomWord.toString(), random(0, width), random(0, height));
    fill(255, 0, 0);
    noLoop();
  } else {
    text(randomWord.toString(), random(0, width), random(0, height));
  }
  
  ++wordsGenerated;
}
  public void settings() {  size(800, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
