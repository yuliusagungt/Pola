pkg load image;

asli = imread("1.jpg");
#gambar 1
biner = im2bw(asli, 0.15);
#gambar 2
##biner = im2bw(asli, 0.1);
#gambar 3
##biner = im2bw(asli, 0.17);
[baris, kolom] = size(biner);
atasBawah = 0; a = 1;
kiriKanan = 0; b = 1;

for i = 1 : baris
  for j = 1 : kolom
    if biner(i,j) == 0
      atasBawah(a) = i;
      a++;
    end
  end
end
top = min(min(atasBawah));
bottom = max(max(atasBawah));

for i = 1 : kolom
  for j = top : bottom
    if biner(j,i) == 0
      kiriKanan(b) = i;
      b++;
    end
  end
end
left = min(min(kiriKanan));
right = max(max(kiriKanan));

crop = biner(top:bottom, left:right, :);
croping = asli(top:bottom, left:right, :);

figure(1);
subplot(2,2,1); imshow(asli); title("Asli");
subplot(2,2,2); imshow(biner); title("Biner");
subplot(2,2,3); imshow(crop); title("Crop");
subplot(2,2,4); imshow(croping); title("Crop");

clear;
