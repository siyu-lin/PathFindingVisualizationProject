Box[][] map;
int boxSize = 40; // Every box in the map is 40 px wide and high

public void settings() {
  size(800, 1000);// Size of the canvas
}

void setup(){
  background(200,200,200); // Color of the background (light grey)
  map = new Box[width / boxSize][800 / boxSize]; // Map is 40 box by 40 box
  
  // Create the boxes
  for(int i = 0; i < width / boxSize; i++){ 
    for(int j = 0; j < 800 / boxSize; j++){
       map[i][j] = new Box(i * boxSize, (j * boxSize)+200, boxSize);
    }
  }
}

void draw() {
  // Display the map
  for(int i = 0; i < width / boxSize; i++){ 
    for(int j = 0; j < 800 / boxSize; j++){
       map[i][j].display();
    }
  }
}
