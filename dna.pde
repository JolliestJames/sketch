class DNA {
  char[] genes = new char[18];
 
  DNA() {
    for (int i = 0; i < genes.length; i++) {
      genes[i] = (char) random(32,128);
    }
  }
}

DNA[] population = new DNA[100];
 
void setup() {
  for (int i = 0; i < population.length; i++) {
    population[i] = new DNA();
  }
}
