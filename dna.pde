String target = "to be or not to be";

class DNA {
  float fitness;
  char[] genes = new char[18];

  DNA() {
    for (int i = 0; i < genes.length; i++) {
      genes[i] = (char) random(32,128);
    }
  }

  void fitness() {
    int score = 0;

    for (int = 0; i < genes.length; i++) {
      if (genes[i] == target.charAt(i)) {
        score++;
      }
    }

    fitness = float(score)/target.length();
  }
}

DNA[] population = new DNA[100];
 
void setup() {
  for (int i = 0; i < population.length; i++) {
    population[i] = new DNA();
  }
}

void draw() {
  for (int i = 0; i < population.length; i++) {
    population[i].fitness();
  }
}
