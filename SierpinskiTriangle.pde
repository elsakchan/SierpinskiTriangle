private int limit = 750;
public void settings() {
    size(800, 750);
  }
public void draw(){
  background(0);
  sierpinski(59, 700, 680);
}
public void mouseMoved(){
if(mouseY > 1)
    limit = mouseY;
}
public void sierpinski(int x, int y, int len) {
  if(len < limit)
    triangle(x, y, x+len, y, x+len/2, y-len);
   else {
     sierpinski(x, y, len/2);
     sierpinski(x+len/2, y, len/2);
     sierpinski(x+len/4, y-len/2, len/2);
   }
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)((Math.random()*256)+100));
  }
