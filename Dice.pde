void setup()
  {
    size(500, 500);  
    noLoop();
  }

int numRolls = 1;
int sum = 0;
void draw(){
     background(0);
     // background(200, 200, 200);
      
     for (int x = 15; x < 470; x+= 60) {
        for (int y = 10; y < 450; y+= 60) {
          Die die1 = new Die(x, y);
          die1.show();
          
        }
    }
    fill(255, 255, 255);
    text("Sum of Dice: " + sum, 10, 495);  
    text(":)", 485, 495);
    
}
void mousePressed(){
      redraw();
      sum = 0;
      numRolls++;
}
  class Die //models one single dice cube
  {
      //member variable declarations here
      
      int dieValue, myX, myY;
      
      Die(int x, int y) //constructor
      {
          dieValue = (int)(Math.random() * 6) + 1;
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
          sum += dieValue;
      }
      void show()
      {
          fill(255, 255, 255);
          rect(myX, myY, 50, 50, 10);
          fill(0);
          if (dieValue == 1) {            
            ellipse(myX + 25, myY + 25, 7, 7);
          } else if (dieValue == 2) {
            ellipse(myX + 10, myY + 40, 7, 7);
            ellipse(myX + 40, myY + 10, 7, 7);
          } else if (dieValue == 3) {
            ellipse(myX + 10, myY + 10, 7, 7);
            ellipse(myX + 25, myY + 25, 7, 7);
            ellipse(myX + 40, myY + 40, 7, 7);
          } else if (dieValue == 4) {
            fourEllipses();
          } else if (dieValue == 5) {        
            ellipse(myX + 25, myY + 25, 7, 7);
            fourEllipses();
          } else {
            fourEllipses();
            ellipse(myX + 10, myY + 25, 7, 7);
            ellipse(myX + 40, myY + 25, 7, 7);
          }
     }     
     void fourEllipses() {
       ellipse(myX + 10, myY + 10, 7, 7);
       ellipse(myX + 40, myY + 10, 7, 7);
       ellipse(myX + 10, myY + 40, 7, 7);
       ellipse(myX + 40, myY + 40, 7, 7);
     }
}


