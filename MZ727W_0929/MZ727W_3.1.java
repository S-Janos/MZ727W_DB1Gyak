package com.pekidzs;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

import static java.lang.Integer.parseInt;

class SJFileOlvas {
    public void Olvas() {
        try {
            BufferedReader br = new BufferedReader(new FileReader("simonyak.txt"));
            int sum = 0;
            int i = 1;
            String sor;
            if ((sor = br.readLine()) != null) {
                String[] num = sor.split(";");
                for (String n : num) {
                    System.out.println(i + ". adat: " + parseInt(n));
                    sum += parseInt(n);
                    i++;
                }
            }
            System.out.println("Összeg: " + sum);
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Hiba a fájl megnyitásakor.");
        }
    }
}
