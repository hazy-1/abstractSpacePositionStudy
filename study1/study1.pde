import peasy.*; 
PeasyCam cam;

AbstractObj obj;
CurrentPosInterface pos;

void setup() {
    size(800, 800, P3D);
    pixelDensity(displayDensity());

    cam = new PeasyCam(this,400);
    cam.setMinimumDistance(200);
    cam.setMaximumDistance(20000);

    perspective(PI/3.0, float(width)/float(height),100, 50000);

    obj = new AbstractObj(1000, 2000);
    obj.calcRandomCoord();

    pos = new CurrentPosInterface(200, width-50, height-50);
}

void draw() {
    obj.dispAbstractObj();
    pos.dispWindow();
}