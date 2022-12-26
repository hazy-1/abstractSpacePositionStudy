import peasy.*; 
PeasyCam cam;

AbstractObj obj;
CurrentPosInterface pos;

void setup() {
    // size(800, 800, P3D);
    fullScreen(P3D, 1);
    pixelDensity(displayDensity());

    cam = new PeasyCam(this,4000);
    cam.setMinimumDistance(200);
    cam.setMaximumDistance(20000);
    cam.setWheelScale(0.05);

    perspective(PI/3.0, float(width)/float(height),100, 50000);

    obj = new AbstractObj(1000, 2000);
    obj.calcRandomCoord();

    pos = new CurrentPosInterface(300, 300, 300, 5, 100);
}

void draw() {
    background(0);
    
    obj.dispAbstractObj();
    pos.dispWindow();

    // fill(0, 255, 0);
    // sphere(50);
}