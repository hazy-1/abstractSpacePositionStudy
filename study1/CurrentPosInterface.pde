class CurrentPosInterface {
    PGraphics posWindow;
    int windowX, windowY;
    int windowSize;

    CurrentPosInterface(int windowSize, int wX, int wY) {
        this.windowSize = windowSize;
        posWindow = createGraphics(windowSize, windowSize, P3D);
        // posWindow = createGraphics(width, height, P3D);
        windowX = wX-windowSize;
        windowY = wY-windowSize;
    }

    void drawWindow(){
        
        posWindow.beginDraw();
        posWindow.rotateX(cam.getRotations()[0]);
        posWindow.rotateY(cam.getRotations()[1]);
        posWindow.rotateZ(cam.getRotations()[2]);
        posWindow.pushMatrix();
        // posWindow.translate(windowSize/2, windowSize/2, 50);
        
        posWindow.background(0, 0, 0);
        posWindow.noStroke();
        posWindow.fill(255);
        posWindow.sphere(5);

        posWindow.popMatrix();
        posWindow.endDraw();
        
    }

    void dispWindow() {
        drawWindow();
        cam.beginHUD();
        translate()
        image(posWindow, windowX, windowY, windowSize, windowSize);
        // image(posWindow, 0, 0, width, height);
        cam.endHUD();
    }


}
