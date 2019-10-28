//declare bacteria variables here   
Bacteria[] ab = new Bacteria[5];
void setup()   
{     
	 //initialize bacteria variables here
	 size(500,500);
	 background(255);
	 fill(255);
	 line(50, 0, 50, 500);
	 line(100, 0, 100, 500);
	 line(150, 0, 150, 500);
	 line(200, 0, 200, 500);
	 line(250, 0, 250, 500);
	 line(300, 0, 300, 500);
	 line(350, 0, 350, 500);
	 line(400, 0, 400, 500);
	 line(450, 0, 450, 500);
	 line(0, 50, 500, 50);
	 line(0, 100, 500, 100);
	 line(0, 150, 500, 150);
	 line(0, 200, 500, 200);
	 line(0, 250, 500, 250);
	 line(0, 300, 500, 300);
	 line(0, 350, 500, 350);
	 line(0, 400, 500, 400);
	 line(0, 450, 500, 450);
	 fill(0);   
	 ab = new Bacteria[10];
	 for(int i = 0; i < ab.length; i++){
	 	ab[i] = new Bacteria();
	 }
}   
void draw()   
 {    
 //move and show the bacteria
 	for(int i = 0; i < ab.length; i++){
		 ab[i].move();
		 ab[i].show();
		}
 }  
 class Bacteria    
 {     
 //lots of java!
 int myX, myY;
 Bacteria(){
   myX = (int)(Math.random()*300)+100;
   myY = (int)(Math.random()*300)+100; 
  }
  void move(){
    myX = myX +(int)(Math.random()*3)-1;
    myY = myY +(int)(Math.random()*3)-1;
  }
  void show(){
    noStroke();
    fill((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
    ellipse(myX, myY, 50, 50);
  }
} 
