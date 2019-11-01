Particle[] parts = new Particle[100];
boolean start = false;
double startX;
double startY;
void setup()
{
	size(400,400);
  background(0);
  for(int i = 0; i<parts.length;i++){
    parts[i] = new Particle();
    parts[0] = new OddballParticle();
  }
}

void mousePressed(){
  start = true;
  startX = mouseX;
  startY = mouseY;  
}

void draw()
{
  if(start == true){
  	for(int i = 0; i < parts.length; i++){
      parts[i].move();
      parts[i].show();
   }
  }
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  
  Particle(){
    myX = 200;
    myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*2;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  
  void move(){
    myX =  myX + (Math.cos(myAngle))*mySpeed;
    myY =  myY + (Math.sin(myAngle))*mySpeed;
  }
  
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
	OddballParticle(){
    myX = 200;
    myY = 200;
    mySpeed = Math.random();
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }  
  
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
