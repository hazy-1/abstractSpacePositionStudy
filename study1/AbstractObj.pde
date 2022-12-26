class AbstractObj{
    int particleNum;
    int buffar;
    PVector[] coords;

    AbstractObj (int particleNum, int buffar) {  
        this.particleNum = particleNum;
        coords = new PVector[particleNum];

        this.buffar = buffar;
    }

    void calcRandomCoord() {
        PVector coord;
        float x, y, z;

        // particleNum分のランダムな点を生成
        for(int i = 0;  i< particleNum; i++){
            x = map( noise(cos(random(-300, 300)) * i), 0, 1,-1, 1);
            y = map( noise(sin(random(-500, 500)) *i), 0, 1, -1, 1);
            z = map( noise(sin(random(-500, 400)) * i), 0, 1, -1, 1);
            coords[i] = new PVector(x*buffar, y*buffar, z*buffar);
        }
    }

    void dispAbstractObj() {
        noStroke();
        fill(255);


        

        for(int i = 0; i < particleNum; i++){
            pushMatrix();
            
            translate(coords[i].x, coords[i].y, coords[i].z);
            sphere(10);
    
            popMatrix();
        }
    }
}
