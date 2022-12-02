clear;
filename = 'foldA.csv';
M = dlmread(filename,',',[1 0 66 2]);
panjangLatih = M(:,2);
N = dlmread(filename,',',[1 3 34 6]);
panjangUji = N(:,2);

lengthLatih = length (panjangLatih);
lengthUji = length (panjangUji);
totalacc = 0;

k = input("K berapa ? ");
printf("\nK=%d\n", k)
for j = 1 : lengthUji
  pnjg = 0; lbr = 0; urut = 0; hasil=0;

  printf("\nDaun Ke - %d\n", j)

  jarak=zeros(lengthLatih, 2);
  akurasi=zeros(lengthUji, 1);

  for i = 1 : lengthLatih
      pnjg = (M(i,2)-N(1,2))^2;
      lbr  = (M(j,3)-N(j,3))^2;
      jarak(i, 1)=sqrt(pnjg+lbr);
      jarak(i, 2) = M(i,1);
  endfor

  urut=sortrows(jarak, [1]);
##  printf("%.2f\n",urut(1:k))
  benar = 0; salah = 0;
  for a = 1 : k
##    disp(urut(a,2))
    if urut(a,2)==N(j,1)
      benar++;
    elseif urut(a,2)!=N(j,1)
      salah++;
    endif
  endfor

  printf("Benar     : %d\n", benar)
  printf("Salah     : %d\n", salah)

  printf("Asli      : %d\n", N(j,1) )
  hasil=mode(urut(1:k,2));
  printf("Hasil KNN : %d\n", hasil )
  all = benar+salah;
  akurasi(j, 1) = (benar/all) * (100);

  printf("Akurasi   : %.2f\n", akurasi(j,1))
  totalacc = akurasi(j,1) + totalacc;
  disp(totalacc)
endfor

rerataacc = totalacc/lengthUji;

printf("\n\nRerata Akurasi : %.2f\n", rerataacc)