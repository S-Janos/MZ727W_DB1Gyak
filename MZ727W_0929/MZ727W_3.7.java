package com.pekidzs;

import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;

class f7 {
    public void hf5() {
        String sor;
        Auto ma;
        try {
            File fn = new File("Autok.dat");
            if (fn.exists()) {
                ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
                try {
                    while (true) {
                        ma = (Auto)kifile.readObject();
                        if (ma.ar > 300) {
                            System.out.println("Rendszám: " + ma.rsz);
                        }
                    }
                } catch (EOFException e) {
                    ma = null;
                }
                kifile.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Hiba a fájl megynitásakor.");
        }
    }
}
