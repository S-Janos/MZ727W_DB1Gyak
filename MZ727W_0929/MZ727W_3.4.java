package com.pekidzs;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.InputStreamReader;

class f4 {
    public void hf2(String fnev) {
        String sor;
        String[] szavak;
        int sorid = 0;
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(fnev));
            while ((sor = br.readLine()) != null) {
                System.out.println(sor.toUpperCase());
            }
            br.close();
            System.out.println("ok");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}