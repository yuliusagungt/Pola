imgs = imread('data.jpg');
Img = rgb2gray(imgs);
[tinggi, lebar] =  size(Img);

olah = double(Img);
jum = 0;
b = 0;
ambang = 0

setengahTinggi = tinggi/2;
setengahLebar = lebar/2;

%seperempat atas kiri
for baris = 1: round(setengahTinggi);
  for kolom = 1: round(setengahLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
biner = zeros(tinggi, lebar);
for baris = 1: round(setengahTinggi);
  for kolom = 1: round(setengahLebar);
        if Img(baris, kolom) < ambang
           Biner(baris, kolom) = 0;
        else
           Biner(baris, kolom) = 1;
        end
    end
end

jum = 0;
b = 0;
ambang = 0
%seperempat bawah kiri
for baris = round(setengahTinggi): tinggi;
  for kolom = 1: round(setengahLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
biner = zeros(tinggi, lebar);
for baris = round(setengahTinggi): tinggi;
  for kolom = 1: round(setengahLebar);
        if Img(baris, kolom) < ambang
           Biner(baris, kolom) = 0;
        else
           Biner(baris, kolom) = 1;
        end
    end
end

jum = 0;
b = 0;
ambang = 0
%seperempat atas kanan
for baris = 1: round(setengahTinggi);
  for kolom = round(setengahLebar): lebar;
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
biner = zeros(tinggi, lebar);
for baris = 1: round(setengahTinggi);
  for kolom = round(setengahLebar): lebar;
        if Img(baris, kolom) < ambang
           Biner(baris, kolom) = 0;
        else
           Biner(baris, kolom) = 1;
        end
    end
end

jum = 0;
b = 0;
ambang = 0
%seperempat bawah kanan
for baris = round(setengahTinggi): tinggi;
  for kolom = round(setengahLebar): lebar;
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
biner = zeros(tinggi, lebar);
for baris = round(setengahTinggi): tinggi;
  for kolom = round(setengahLebar): lebar;
        if Img(baris, kolom) < ambang
           Biner(baris, kolom) = 0;
        else
           Biner(baris, kolom) = 1;
        end
    end
end
figure(3);
subplot(2,1,1), imshow(Img);
subplot(2,1,2), imshow(Biner);
clear;
