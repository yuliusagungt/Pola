pkg load image;
clear;

asli = imread("apel.jpg");
biner = im2bw(asli);

[baris, kolom] = size(biner);

for i = 1 : baris
  for j = 1 : kolom
    if biner(i,j) == 0
      top = baris - i;
    end
  end
end

for i = 1 : baris
  for j = 1 : kolom
    if biner(i,j) == 0
      bottom = i;
    end
  end
end

for i = 1 : kolom
  for j = 1 : baris
    if biner(j,i) == 0
      left = kolom - i;
    end
  end
end

for i = 1 : kolom
  for j = 1 : baris
    if biner(j,i) == 0
      right = i;
    end
  end
end

crop = biner(top:bottom, left:right, :);

figure(1);
subplot(1,3,1); imshow(asli); title("Asli");
subplot(1,3,2); imshow(biner); title("Biner");
subplot(1,3,3); imshow(crop); title("Crop");
