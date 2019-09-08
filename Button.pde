/*enum StatusButton{NOMOUSE, HOVER, CLICKDOWN};

public class Button {
  private int x;
  private int y;
  private int sizex;
  private int sizey;
  private StatusButton statusbutton;
  
  public Button(int x,int y,int sizex,int sizey){
    this.x = x;
    this.y = y;
    this.sizex = sizex;
    this.sizey = sizey;
    statusbutton = StatusButton.NOMOUSE;
  }
  
  
  public StatusButton getStatus() { return this.statusbutton; }
  
  public void setStatus(StatusButton statusbutton) { this.statusbutton = statusbutton; }
  
  public Boolean MouseDectect()
  {
    if(((y-sizey/2)< mouseY) && (mouseY < (y+sizey/2)))
    {
      if(((x-sizex/2)<mouseX) && (mouseX<(x+sizex/2)))
      {
        return true;
      }
    }
    else return false;
  }
  
  
  public void display()
  {
    stroke(0,0,0);
    strokeWeight(1);
    rect(x,y,sizex,sizey);
  }
  
}
*/
