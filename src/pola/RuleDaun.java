/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pola;

/**
 *
 * @author lomop
 */
public class RuleDaun {

    public static void main(String[] args) {
        int panjang, lebar, warna, bentuk, tekstureTepi, bau, tulangDaun, tekstureDaun, motifDaun;

        System.out.println("Data yang diuji Mangga | " + uji(4, 3, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(4, 3, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(4, 3, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(4, 3, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 2, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(4, 3, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(4, 2, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(5, 3, 2, 6, 0, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 1, 2, 6, 2, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(2, 1, 2, 6, 2, 1, 1, 2, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 2, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(7, 3, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(2, 1, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(4, 2, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(4, 2, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(4, 3, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(3, 1, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(3, 1, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(3, 1, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(2, 1, 2, 16, 3, 1, 1, 0, 0));
        System.out.println("Data yang diuji Mangga | " + uji(3, 3, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 2, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 4, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(5, 5, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(4, 4, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 3, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 3, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(3, 3, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(2, 3, 2, 16, 0, 2, 1, 0, 1));
        System.out.println("Data yang diuji Mangga | " + uji(2, 2, 2, 16, 0, 2, 1, 0, 1));

        System.out.println("Data yang diuji Bambu | " + uji(3, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(3, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(6, 1, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(6, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(7, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(5, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(6, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(5, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(4, 0, 1, 6, 1, 1, 2, 1, 0));
        System.out.println("Data yang diuji Bambu | " + uji(2, 0, 1, 6, 1, 1, 2, 1, 0));

        System.out.println("Data yang diuji Sirih | " + uji(4, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(3, 0, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(4, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(3, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(3, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(4, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(4, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(4, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(2, 1, 1, 16, 0, 0, 1, 0, 0));
        System.out.println("Data yang diuji Sirih | " + uji(3, 1, 1, 16, 0, 0, 1, 0, 0));

        int hasil = 40 / 40 * (1 / 100);

        System.out.println("Hasilnya : " + hasil);

    }

    public static String uji(int panjang, int lebar, int warna, int bentuk, int tekstureTepi, int bau, int tulangDaun, int tekstureDaun, int motifDaun) {
        if (warna == 0 && tekstureTepi == 1) {
            return "Bambu jika sesuai rule";
        } else if (warna == 0 && tekstureTepi == 0) {
            return "Mangga jika sesuai rule";
        } else if (warna == 1 && tulangDaun == 2) {
            return "Philedendron jika sesuai rule";
        } else if (warna == 1 && tulangDaun == 3) {
            return "Alchornea jika sesuai rule";
        } else if (warna == 1 && tulangDaun == 1) {
            return "Rambutan jika sesuai rule";
        } else if (warna == 2 && panjang == 0) {
            return "Mahoni jika sesuai rule";
        } else if (warna == 2 && panjang == 1) {
            return "Sirih jika sesuai rule";
        } else if (warna == 2 && panjang == 3) {
            return "Melinjo jika sesuai rule";
        } else if (warna == 2 && panjang == 2 && bau == 1) {
            return "Melinjo jika sesuai rule";
        } else if (warna == 2 && panjang == 2 && bau == 2) {
            return "Sirih jika sesuai rule";
        }
        return "Berdasarkan klasifikasi data tidak ditemukan";

    }
}
