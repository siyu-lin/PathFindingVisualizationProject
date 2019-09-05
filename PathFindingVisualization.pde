Box[][] map;
int boxSize = 40;
void setup(){
  size(800,800);
  background(220,220,220);
  map = new Box[width/boxSize][height/boxSize];
  for(int i = 0; i < width/boxSize; i++){ 
    for(int j = 0; j < height/boxSize; j++){
       map[i][j] = new Box(i*boxSize,j*boxSize, boxSize);
    }
  }
}

void draw() {
  for(int i = 0; i < width/boxSize; i++){ 
    for(int j = 0; j < height/boxSize; j++){
       map[i][j].display();
    }
  }
}
