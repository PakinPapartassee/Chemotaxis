class Walker{
  // three member variable
  int myX, myY, myColor;
 
  //three member functions
  //one of them is special: CONSTRUCTOR
  //who will intitialize member varies
  Walker(){
    myX = width/2;
    myY = height/2;
    myColor = color(255,255,0);
  }
  Walker(int x, int y){ //overloading constructor
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255)+100,
                    (int)(Math.random()*255)+100,
                    (int)(Math.random()*255)+100);
  }
  void walk(){
    myX = myX + (int)(Math.random()*100)-50;// -1,  0, 1
    myY = myY + (int)(Math.random()*100)-50;
  }
  void show(){
    stroke(myColor);
   fill(myColor);
   int o = (int) (Math.random()*70)+35;
    ellipse(myX, myY, o,o);
   }
   
}//end of Walker class

class Circle{
  int myX, myY, mySize;
  Circle(){
    myX = width/2;
    myY = height/2;
    mySize = 0;
  }
  Circle(int x, int y){ //overloading constructor
    myX = x;
    myY = y;
  }
  void inflate()
  {
    mySize = mySize+10;
  }
  void show(){
    int myC = color((int)(Math.random()*255)+100,(int)(Math.random()*255)+100,(int)(Math.random()*255)+100);

    stroke(myC);
    fill(255, 255, 255, 0);
    ellipse(250, 250, mySize,mySize);
    if (mySize ==800){
      mySize =0;
    }
  }
}
Circle sue;
Walker bob;
Walker [] ohio;
void setup(){
  size(500,500);
  bob = new Walker();
  sue = new Circle();
  ohio = new Walker[100]; // first call to new
  for(int i = 0; i < ohio.length; i++){
    ohio[i] = new Walker((int)(Math.random()*width), (int)(Math.random()*height)); // second call to new
  }
  // WITH ARRAY OF OBJECTS, THERE ARE (at least) TWO CALLS TO NEW
}

void draw(){
  bob.walk();
  bob.show();
  sue.inflate();
  sue.show();
  for(int i = 0; i < ohio.length; i++){
    ohio[i].walk();
    ohio[i].show();
  }
}
