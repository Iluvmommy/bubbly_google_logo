public class circles {
  
  float x; 
  float y;
  float r;
  float xspeed;
  float yspeed;
  
  color red;
  color blue;
  color green;
  color yellow;
  color colors;
  public ArrayList<Integer> colorList = new ArrayList<Integer>();
  
  public circles() {
    int rnumber = int(random(0, spots.size()));
    PVector findSpot = spots.get(rnumber);
    x = findSpot.x;
    y = findSpot.y;
    r = random(4, 32);
    xspeed = random(-3, 3);
    yspeed = random(-3, 3);
    
    green = color(60, 186, 84);
    red = color(219, 50, 54);
    yellow = color(244, 194, 13);
    blue = color(72, 133, 237);
    
    colorList.add(green);
    colorList.add(red);
    colorList.add(yellow);
    colorList.add(blue);
    
    colors = int(random(0, 4));
  }
  
  void show() {
    fill(colorList.get(colors));
    noStroke();
    alpha(255);
    ellipse(x, y, r*2, r*2);
  }
  
  void move() {
      x += xspeed;
      y += yspeed;
  }

  
  void update() {
    xspeed = random(-3, 3);
    yspeed = random(-3, 3);
  }
  
}
