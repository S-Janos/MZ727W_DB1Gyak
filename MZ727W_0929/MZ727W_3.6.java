package com.pekidzs;

import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

class Auto implements Serializable {
    private static final long serialVersionUID = 1L;
    String rsz;
    String tipus;
    int ar;

    public Auto(String r, String t, int a) {
        this.rsz = r;
        this.tipus = t;
        this.ar = a;
    }
}

class f6 {
    public void hf4() {
        Auto[] autoim = {new Auto("R11", "Opel", 333), new Auto("R12", "Fiat", 233), new Auto("R14", "Skoda", 364)};
        try {
            ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream("Autok.dat"));
            for (Auto auto : autoim) {
                kifile.writeObject(auto);
            }
            kifile.close();
            System.out.println("ok");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Hiba a fájl megnyitásakor.");
        }
    }
}