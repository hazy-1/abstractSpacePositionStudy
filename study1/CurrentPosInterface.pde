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
        posWindow.background(255);

        posWindow.translate(windowSize/2, windowSize/2, 0);
 
        posWindow.stroke(0);
        posWindow.strokeWeight(1);
        posWindow.noFill();
        posWindow.pushMatrix();
            for(int i = 0; i < 12; i++) {
                posWindow.ellipse(0, 0, 200, 200);
                posWindow.rotateX(i*15);
            }
        posWindow.popMatrix();
        posWindow.pushMatrix();
            for(int i = 0; i < 12; i++) {
                posWindow.ellipse(0, 0, 200, 200);
                posWindow.rotateY(i*15);
            }
        posWindow.popMatrix();


        posWindow.rotateX(cam.getRotations()[0]);
        posWindow.rotateY(cam.getRotations()[1]);
        posWindow.rotateZ(cam.getRotations()[2]);

        posWindow.pushMatrix();
            posWindow.translate(0, 0, 100);
            posWindow.noStroke();
            posWindow.fill(0);
            posWindow.sphere(5);
        posWindow.popMatrix();


        posWindow.endDraw();
        
    }

    void dispWindow() {
        drawWindow();
        cam.beginHUD();
        //translate()
        image(posWindow, 0, 0, windowSize, windowSize);
        // image(posWindow, 0, 0, width, height);
        cam.endHUD();
    }


}
