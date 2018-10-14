circles[] bubble = new circles[300];
PImage G;
ArrayList<PVector> spots;

void setup() {
  size(900, 900);
  spots = new ArrayList<PVector>();
  
  G = loadImage("photo.jpg");
  G.loadPixels();
  for (int x = 0; x < width; x++){
     for (int y = 0; y < height; y++){
       int index = x+y*width;
       color c = G.pixels[index];
       float b =  brightness(c);
       if(b < 255 ) {
         spots.add(new PVector(x, y));
       }
     }
  }
  println(spots.size());
    
  for( int i = 0; i < bubble.length; i++){
    bubble[i] = new circles();
  }
  
}

void draw(){
  background(255);
  
  for(int i = 0; i < bubble.length; i++){
        
    bubble[i].show();
    bubble[i].move();
    bubble[i].update();
  
  }
}
