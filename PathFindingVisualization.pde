Box[][] map;
int boxSize = 40; // Every box in the map is 40 px wide and high

//testing


void setup(){
  size(800,800); // Size of the canvas
  background(220,220,220); // Color of the background (light grey)
  map = new Box[width / boxSize][height / boxSize]; // Map is 40 box by 40 box
  
  // Create the boxes
  for(int i = 0; i < width / boxSize; i++){ 
    for(int j = 0; j < height / boxSize; j++){
       map[i][j] = new Box(i * boxSize, j * boxSize, boxSize);
    }
  }
}

void draw() {
  // Display the map
  for(int i = 0; i < width / boxSize; i++){ 
    for(int j = 0; j < height / boxSize; j++){
       map[i][j].display();
    }
  }
}
