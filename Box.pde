enum Status{BLANK, BEGIN, END, WALL, PATH};

public class Box{
  private int x;
  private int y;
  private int size;
  private Status status;
  
  public Box(int x, int y, int size){
     this.x = x;
     this.y = y;
     this.size = size;
     status = Status.BLANK;
  }
  
  public int getX() { return this.x; }
  
  public int getY() { return this.y; }
  
  public Status getStatus() { return this.status; }
  
  public void setStatus(Status status) { this.status = status; }
  
  public void display(){
    stroke(0,0,0);
    strokeWeight(1);
    rect(x, y, size, size);
  }
  
}
