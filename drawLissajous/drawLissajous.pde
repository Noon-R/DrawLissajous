lissajous a[] = new lissajous[10];


void setup(){
  size(500,500);
  colorMode(HSB,360,100,100,100);
  background(0,0,100);
  for(int i =0;i<a.length;i++){
    a[i] = new lissajous(2+i/2,3+((i+1)/2),0,i%2 == 0 ? 1: -1);
  }
}

void draw(){
  background(0,0,100);
  for(int i = 0;i< a.length;i++){
    a[i].update();
  }
  //saveFrame("Images/#####.png");
  
}
