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

  ArrayList<DNA> matingPool = new ArrayList<DNA>();

  for (int i = 0; i < population.length; i++) {
    int n = int(population[i].fitness * 100);
    for (int j = 0; j < n; j++) {
      matingPool.add(population[i]);
    }
  }

  int a = int(random(matingPool.size()));
  int b = int(random(matingPool.size()));

  DNA parentA = matingPool.get(a);
  DNA parentB = matingPool.get(b);

  DNA child = parentA.crossover(parentB);
  child.mutate();
}
