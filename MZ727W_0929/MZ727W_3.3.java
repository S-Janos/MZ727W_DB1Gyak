package com.pekidzs;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.InputStreamReader;

class f3 {
    public void hf1() {
        String sor;
        String[] szavak;
        int sorid = 0;
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            BufferedWriter bw = null;

            while (sorid >= 0) {
                sor = br.readLine();
                if (sorid == 0) {
                    bw = new BufferedWriter(new FileWriter(sor));
                } else {
                    bw.write(sor);
                    bw.newLine();
                }
                sorid++;
                szavak = sor.split(" ");
                for (String sz : szavak) {
                    System.out.println(sz + ":");
                    if (sz.compareTo("end") == 0) {
                        br.close();
                        sorid = -1;
                    }
                }
            }
            bw.close();
            System.out.println("ok");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


