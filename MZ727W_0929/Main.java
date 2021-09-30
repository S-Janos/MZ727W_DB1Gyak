package com.pekidzs;

public class Main {
    public static void main(String[] args) {
        SJFileIr writer = new SJFileIr();
        writer.Ir();
        SJFileOlvas reader = new SJFileOlvas();
        reader.Olvas();
    }
}
