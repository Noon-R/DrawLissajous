public class lissajous{
  int A = 250;
  int B = 250;
  int a = 3;
  int b = 4;
  int c =0;

  float t =0;
  int d =1;
 
  int hue ;
  int saturation;
  int brightness;
 
  lissajous(int a,int b,int c,int d){
    this.a =a;
    this.b =b;
    this.c =c;
    this.d = d;
    hue = int(random(360));
    saturation = 100;
    brightness = int(random(100));
  }
  
  public void update(){
    t+=0.01*d;
    float x = A*sin(a*t+c);
    float y = B*sin(b*t);
    
    pushMatrix();
    fill(hue,saturation,brightness,80);
    translate(width/2,height/2);
    ellipse(x,y,25,25);
    popMatrix();
  }
 
}
