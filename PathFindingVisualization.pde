<<<<<<< HEAD
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
=======
// MARK: - Variables that stores basic information of the canvas
Box[][] map;
int mapWidth = 800;
int mapHeight = 800;
int toolBarHeight = 200;
int boxSize = 40; // Every box in the map is 40 px wide and high

// MARK: - Variables to detect mouse drag on the screen 
int lastDraggedCoordX = -1;
int lastDraggedCoordY = -1;
int boxBoundaryTolerance = 4; // Larger means mouse need to be more centered at the box to be counted
enum DragType{CREATING_WALL, DESTRUCTING_WALL, DEFAULT};
DragType dragType = DragType.DEFAULT;

// MARK: - Variables that stores buttons information

public void settings() {
  // Size of the canvas
  size(mapWidth, mapHeight + toolBarHeight);
}

void setup() {
  background(230, 230, 230); // Color of the background (light grey)
  map = new Box[mapWidth / boxSize][mapHeight / boxSize]; // Map is 40 box by 40 box

  // Create the boxes
  for (int i = 0; i < map.length; i++) { 
    for (int j = 0; j < map[0].length; j++) {
      map[i][j] = new Box(i * boxSize, j * boxSize + toolBarHeight, boxSize);
    }
  }
} // End of function setup

void draw() {
  // Display the tool bar area
  
  
  // Display the map
  for (int i = 0; i < map.length; i++) { 
    for (int j = 0; j < map[0].length; j++) {
      map[i][j].display();
    }
  }
  
} // End of function draw()

void mouseDragged() {
  if (mouseY > toolBarHeight && mouseY < height &&
    mouseX > 0 && mouseX < width && !isNearBoundary(mouseX, mouseY)) {
    // Mouse is in the map area
    int currentDraggedCoordX = floor(mouseX / boxSize);
    int currentDraggedCoordY = floor((mouseY - toolBarHeight) / boxSize);
    if (currentDraggedCoordX != lastDraggedCoordX ||
      currentDraggedCoordY != lastDraggedCoordY) {
      // Mouse is in a different box
      
      // TODO: Check if the box is either the starting point or the end point
      
      // In one continuous drag, one can only creating walls OR destructing walls, but not both
      if(dragType == DragType.DEFAULT) {
        if (map[currentDraggedCoordX][currentDraggedCoordY].getStatus() == Status.BLANK) {
          dragType = DragType.CREATING_WALL;
        } else if (map[currentDraggedCoordX][currentDraggedCoordY].getStatus() == Status.WALL) {
          dragType = DragType.DESTRUCTING_WALL;
        }
      }
      
      // We need to toggle the status of the current box
      if (map[currentDraggedCoordX][currentDraggedCoordY].getStatus() == Status.BLANK && dragType == DragType.CREATING_WALL) {
        map[currentDraggedCoordX][currentDraggedCoordY].setStatus(Status.WALL);
      } else if (map[currentDraggedCoordX][currentDraggedCoordY].getStatus() == Status.WALL && dragType == DragType.DESTRUCTING_WALL) {
        map[currentDraggedCoordX][currentDraggedCoordY].setStatus(Status.BLANK);
      }
      lastDraggedCoordX = currentDraggedCoordX;
      lastDraggedCoordY = currentDraggedCoordY;
    }
  } else {
    // Mouse is in the tool bar area
  }
}

void mouseClicked() {
  if (mouseY > toolBarHeight && mouseY < height &&
    mouseX > 0 && mouseX < width) {
    // Mouse is in the map area
    int currentClickedCoordX = floor(mouseX / boxSize);
    int currentClickedCoordY = floor((mouseY - toolBarHeight) / boxSize);
    
    // TODO: Check if the box is either the starting point or the end point
    if (map[currentClickedCoordX][currentClickedCoordY].getStatus() == Status.BLANK) {
        map[currentClickedCoordX][currentClickedCoordY].setStatus(Status.WALL);
      } else if (map[currentClickedCoordX][currentClickedCoordY].getStatus() == Status.WALL) {
        map[currentClickedCoordX][currentClickedCoordY].setStatus(Status.BLANK);
      }
  } else {
    // Mouse is in the tool bar area
  }
}

void mouseReleased() {
  resetMouseStatus();
}

void resetMouseStatus() {
  lastDraggedCoordX = -1;
  lastDraggedCoordY = -1;
  dragType = DragType.DEFAULT;
}

boolean isNearBoundary(int x, int y){
  if(x % boxSize >= boxBoundaryTolerance && x % boxSize <= boxSize - boxBoundaryTolerance &&
     y % boxSize >= boxBoundaryTolerance && y % boxSize <= boxSize - boxBoundaryTolerance) {
      return false; 
     }
  return true;
}
>>>>>>> fe512656a1bc4eada40e3ce3b5d4ddf512d6f2ea
