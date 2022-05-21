
int W = 512;
int H = 512;

void setup() {
  size(512, 512);
  background(0);
  noSmooth();
  noStroke();
} 

int frac(int x) { return ((x % 256) + 256) % 256; }

void draw() {
  boolean done = false;
  if (done) { return; }
  done = true;
  
  int L = 16;
  for (int i = 0; i < W / L; ++i) {
    for (int j = 0; j < H / L; ++j) {
      fill(
        frac(i * 16 + j * 32 + i * j * 16),
        frac(i * 16 - j * 16 + i * i * 16),
        frac(i * 32)
      );
      rect(i * L, j * L, L, L);
    }
  }
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    String path  = "icon.png";
    save(path);
    println("image saved to " + path); 
  }
}
