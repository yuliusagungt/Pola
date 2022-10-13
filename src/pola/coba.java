/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pola;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
/**
 *
 * @author ASUS
 */
public class coba {
    public static void main(String[] args) {
        try {
            Scanner sc = new Scanner(System.in);
            File file = new File("D:\\tebak_gambar.xlsx");
            FileInputStream fis = new FileInputStream(file);
            XSSFWorkbook wb = new XSSFWorkbook(fis);
            XSSFSheet sh = wb.getSheetAt(0);
            int r = sh.getPhysicalNumberOfRows();
            int c = sh.getRow(0).getLastCellNum();
            Object[][] data = new Object[r - 1][c];
            double[][] dataAngka = new double[r - 1][c - 1];
            String[] jenis_daun = new String[r - 1];
            Iterator<Row> itr = sh.iterator();
            int i = 0, j = 0;
            int ctjns = 0;
            itr.next();
            while (itr.hasNext()) {
                Row row = itr.next();
                Iterator<Cell> cellIterator = row.cellIterator();
                while (cellIterator.hasNext()) {
                    Cell cell = cellIterator.next();
                    switch (cell.getCellType()) {
                        case Cell.CELL_TYPE_NUMERIC:
                            data[j][i] = cell.getNumericCellValue();
                            dataAngka[j][i - 1] = cell.getNumericCellValue();
                            i++;
                            break;
                        case Cell.CELL_TYPE_STRING:
                            data[j][i] = cell.getStringCellValue();
                            jenis_daun[ctjns] = cell.getStringCellValue();
                            ctjns++;
                            i++;
                            break;
                        default:
                            break;
                    }
                }
                j++;
                if (j != 100) {
                    i = 0;
                } else {
                    break;
                }
            }
            double tebakDaun, warna, motif, bentukPinggir, bentukFisik, tulangDaun, tekstuPermukaan, kodeDaun;
            System.out.printf("%-4s", "No");
            System.out.print("|  ");
            System.out.printf("%-12s", "Warna Umum");
            System.out.print("|  ");
            System.out.printf("%-9s", "Motif");
            System.out.print("|  ");
            System.out.printf("%-17s", "Bentuk Pinggir");
            System.out.print("|  ");
            System.out.printf("%-14s", "Bentuk Fisik");
            System.out.print("|  ");
            System.out.printf("%-14s", "TulangDaun");
            System.out.print("|  ");
            System.out.printf("%-20s", "Tekstur Permukaan");
            System.out.print("|  ");
            System.out.printf("%-15s", "Kode Daun Asli");
            System.out.print("|  ");
            System.out.printf("%-16s", "Kode Daun Ditebak");
            System.out.print("|  ");
            System.out.printf("%-19s", "Kecocokan");
            System.out.println("");

            for (int k = 0; k < 100; k++) {
                warna = dataAngka[k][0];
                motif = dataAngka[k][1];
                bentukPinggir = dataAngka[k][2];
                bentukFisik = dataAngka[k][3];
                tulangDaun = dataAngka[k][4];
                tekstuPermukaan = dataAngka[k][5];
                kodeDaun = dataAngka[k][6];

                //uji data
                if (tulangDaun == 2 && tekstuPermukaan == 1) {
                    tebakDaun = 18;
                } else if (tulangDaun == 2 && tekstuPermukaan == 3) {
                    tebakDaun = 19;
                } else if (tulangDaun == 1 && bentukFisik == 8) {
                    tebakDaun = 5;
                } else if (tulangDaun == 1 && bentukFisik == 4) {
                    tebakDaun = 8;
                } else if (tulangDaun == 3 && bentukFisik == 5) {
                    tebakDaun = 1;
                } else if (tulangDaun == 3 && bentukFisik == 7) {
                    tebakDaun = 13;
                } else if (tulangDaun == 3 && bentukFisik == 3) {
                    tebakDaun = 14;
                } else if (tulangDaun == 2 && bentukFisik == 7) {
                    tebakDaun = 15;
                } else if (tulangDaun == 2 && bentukFisik == 6) {
                    tebakDaun = 17;
                } else if (tulangDaun == 2 && bentukFisik == 5 && bentukPinggir == 3) {
                    tebakDaun = 2;
                } else if (tulangDaun == 2 && bentukFisik == 5 && bentukPinggir == 1) {
                    tebakDaun = 16;
                } else if (tulangDaun == 2 && bentukFisik == 3 && bentukPinggir == 1) {
                    tebakDaun = 4;
                } else if (tulangDaun == 5 && warna == 2) {
                    tebakDaun = 6;
                } else {
                    tebakDaun = 0;
                }

                System.out.printf("%-4s", k + 1);
                System.out.print("|  ");
                System.out.printf("%-12s", warna);
                System.out.print("|  ");
                System.out.printf("%-9s", motif);
                System.out.print("|  ");
                System.out.printf("%-17s", bentukPinggir);
                System.out.print("|  ");
                System.out.printf("%-14s", bentukFisik);
                System.out.print("|  ");
                System.out.printf("%-14s", tulangDaun);
                System.out.print("|  ");
                System.out.printf("%-20s", tekstuPermukaan);
                System.out.print("|  ");
                System.out.printf("%-15s", kodeDaun);
                System.out.print("|  ");
                System.out.printf("%-17s", tebakDaun);
                System.out.print("|  ");
                System.out.printf("%-19s", "Kecocokan");
                System.out.println("");
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
    }
}
