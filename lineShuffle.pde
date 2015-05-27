int num; //num of lines
float x = 0;

import java.util.Calendar;

void setup(){
  size(displayWidth, displayHeight);
  background(255);
  noLoop();
  num = int(random(40)); //num declaration

}

void draw(){
  background(255);
  for(int i=0; i<num; i++){  
    lineShuffle(int(random(height)), int(random(width)), int(random(height)), int(random(width)), int(random(height/2))); //this is what sets the mood for everything
  }
}

void lineShuffle(int numLines, int maxLength, int initialY, int originX, int gap){

  int lineCap;
  
    strokeWeight(random(10)); //random Stroke Weight
    
    //random lineCap
    lineCap = int(random(100)); 
    if(lineCap % 2 == 0){
      strokeCap(ROUND);
    }
    else{
      strokeCap(SQUARE);
    }
    

    
    for(int i = 0; i<numLines; i++){
      
        int colorselector=(int) random(8);
        if(colorselector<=2){
          stroke(random(255),0,0); // redish
        }
        else{
          stroke(random(255)); //greyish
        }

        

      line(originX, initialY, random(maxLength), initialY);
      initialY += gap;
      
    }
    
}

void mousePressed() {
  x += 1;
  redraw();
}

//save image
void keyReleased() {
  if (key == 's' || key == 'S') saveFrame (timestamp () + "_##.jpg");
}

// timestamp
String timestamp () {
  Calendar now = Calendar.getInstance ();
  return String.format ("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}


