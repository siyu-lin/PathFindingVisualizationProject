enum StatusBox{BLANK, BEGIN, END, WALL, PATH};

public class Box{
  private int x; // X-coord of the upper-left corner of the box
  private int y; // Y-coord of the upper-left corner of the box
  private int size; // Width and height of the box
  private StatusBox statusbox; // Status of the box
  
  public Box(int x, int y, int size){
     this.x = x;
     this.y = y;
     this.size = size;
     statusbox = StatusBox.BLANK;
  }
  
  public int getX() { return this.x; }
  
  public int getY() { return this.y; }
  
  public StatusBox getStatus() { return this.statusbox; }
  
  public void setStatus(StatusBox statusbox) { this.statusbox = statusbox; }
  
  public void display(){
    // Set the color of the outline black
    stroke(0,0,0);
    // Set the width of the outline 1 px
    strokeWeight(1);
    
    // TODO: Display differently with box having different status
    
    // Draw a square with upper-left corner at (x,y) and with side length (size)
    rect(x, y, size, size);
  }
  
}
