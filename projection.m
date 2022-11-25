pkg load image;

asli = imread("people.jpg");
biner = im2bw(asli, 0.8);
[baris, kolom] = size(biner);
a = 0;

for i = 1 : baris
  for j = 1 : kolom
    if biner(i, j) == 0
      a++;
    end 
  end
  atasBawah(i) = a;
  a=0;
end

for i = 1 : kolom
  for j = 1 : baris
    if biner(j, i) == 0
      a++;
    end 
  end
  kiriKanan(i) = a;
  a=0;
end

f = length(atasBawah)
h = length(kiriKanan)
y= 1;

for x = 1 : f
  if atasBawah(x) > 1
    simpan(y) = x;
    y++;
  end
end
indexTop = simpan(1)
top = atasBawah(indexTop)
y=1;

for n = indexTop : f
  if atasBawah(n) == 0
    save(y) = n; 
    y++;
  end
end
indexBottom = save(1)
bottom = atasBawah(indexBottom)


y=1;
for x = indexBottom : f
  if atasBawah(x) > 1
    simpan(y) = x;
    y++;
  end
end
indexToplain = simpan(1)
toplain = atasBawah(indexToplain)
y=1;

for n = indexToplain : f
  if atasBawah(n) == 0
    save(y) = n; 
    y++;
  end
end
indexBottomlain = save(1)
bottomlain = atasBawah(indexBottomlain)
