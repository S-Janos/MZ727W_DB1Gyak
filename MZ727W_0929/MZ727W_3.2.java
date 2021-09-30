package com.pekidzs;

import java.io.*;

import static java.lang.Integer.parseInt;

class SJFileIr {
    public void Ir() {
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            Writer fw = new FileWriter("simonyak.txt");
            System.out.print("Adatok száma: ");
            int num = parseInt(br.readLine());
            int sum = 0;
            for (int i = 1; i <= num; i++) {
                System.out.print(i +". adat: ");
                int temp = parseInt(br.readLine());
                sum += temp;
                fw.write(String.valueOf(temp + ";"));
            }
            System.out.println("Összeg: " + sum);
            fw.write(String.valueOf(sum));
            br.close();
            fw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
