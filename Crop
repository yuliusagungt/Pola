pkg load image;
clear;

asli = imread("apik.jpg");
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


[baris, kolom] = size(biner);

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

crop = asli(top:bottom, left:right, :);
imshow(crop);
