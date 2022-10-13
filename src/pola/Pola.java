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

public class Pola {

    public static void main(String[] args) {
        try {
            Scanner sc = new Scanner(System.in);
            File file = new File("D:\\DataTes.xlsx");
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
            double tebakDaun = 0, panjang, lebar, warna, bentuk, teksturTepi, bau, tulangDaun, teksturDaun, motifDaun, kode;
            System.out.printf("%-4s", "No");
            System.out.print("|  ");
            System.out.printf("%-8s", "Panjang");
            System.out.print("|  ");
            System.out.printf("%-8s", "Lebar");
            System.out.print("|  ");
            System.out.printf("%-8s", "Warna");
            System.out.print("|  ");
            System.out.printf("%-8s", "Bentuk");
            System.out.print("|  ");
            System.out.printf("%-14s", "Tekstur Tepi");
            System.out.print("|  ");
            System.out.printf("%-8s", "Bau");
            System.out.print("|  ");
            System.out.printf("%-14s", "Tulang Daun");
            System.out.print("|  ");
            System.out.printf("%-14s", "Motif Daun");
            System.out.print("|  ");
            System.out.printf("%-14s", "Kode Asli");
            System.out.print("| ");
            System.out.printf("%-14s", "Kode Ditebak");
            System.out.println("");

            for (int k = 0; k < 100; k++) {
                panjang = dataAngka[k][0];
                lebar = dataAngka[k][1];
                warna = dataAngka[k][2];
                bentuk = dataAngka[k][3];
                teksturTepi = dataAngka[k][4];
                bau = dataAngka[k][5];
                tulangDaun = dataAngka[k][6];
                teksturDaun = dataAngka[k][7];
                motifDaun = dataAngka[k][8];
                kode = dataAngka[k][9];

                //uji data
                if (bentuk == 15) {
                    if (panjang == 1) {
                        if (teksturDaun == 0) {
                            tebakDaun = 3;
                        } else if (teksturDaun == 2) {
                            tebakDaun = 9;
                        }
                    } else if (panjang == 3) {
                        if (warna == 0) {
                            tebakDaun = 3;
                        } else if (warna == 1) {
                            tebakDaun = 9;
                        }
                    } else if (panjang == 0) {
                        tebakDaun = 7;
                    } else if (panjang == 2) {
                        tebakDaun = 9;
                    } else if (panjang == 5 || panjang == 6 || panjang == 7) {
                        tebakDaun = 1;
                    }
                } else if (bentuk == 16) {
                    if (lebar == 1) {
                        if (panjang == 1) {
                            tebakDaun = 6;
                        } else if (panjang == 2 || panjang == 3 || panjang == 4) {
                            tebakDaun = 10;
                        }
                    } else if (lebar == 2 || lebar == 3) {
                        tebakDaun = 8;
                    } else if (lebar == 0) {
                        tebakDaun = 6;
                    }
                } else if (bentuk == 23) {
                    tebakDaun = 2;
                } else if (bentuk == 0) {
                    tebakDaun = 4;
                } else if (bentuk == 17) {
                    tebakDaun = 5;
                } else {
                    tebakDaun = 0;
                }

                System.out.printf("%-4s", k + 1);
                System.out.print("|  ");
                System.out.printf("%-8s", panjang);
                System.out.print("|  ");
                System.out.printf("%-8s", lebar);
                System.out.print("|  ");
                System.out.printf("%-8s", warna);
                System.out.print("|  ");
                System.out.printf("%-8s", bentuk);
                System.out.print("|  ");
                System.out.printf("%-14s", teksturTepi);
                System.out.print("|  ");
                System.out.printf("%-8s", bau);
                System.out.print("|  ");
                System.out.printf("%-14s", tulangDaun);
                System.out.print("|  ");
                System.out.printf("%-14s", motifDaun);
                System.out.print("|  ");
                System.out.printf("%-14s", kode);
                System.out.print("| ");
                System.out.printf("%-14s", tebakDaun);
                System.out.println("");
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
    }
}
