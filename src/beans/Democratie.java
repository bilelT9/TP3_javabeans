package beans;

public class Democratie {
private int voix;

public Democratie (){
voix=0;
}
public int voter(){
return voix++;
}
public int getVoix() {
return voix;
}
public void setVoix(int voix) {
this.voix = voix;
}
}
