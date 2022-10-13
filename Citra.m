imgs = imread('data.jpg');
Img = rgb2gray(imgs);
[tinggi, lebar] =  size(Img);

olah = double(Img);

seperempatTinggi = tinggi/4;
seperempatLebar = lebar/4;
setengahTinggi = tinggi/2;
setengahLebar = lebar/2;
tigaperempatTinggi = seperempatTinggi + setengahTinggi;
tigaperempatLebar = seperempatLebar + setengahLebar;

jum = 0;
b = 0;
ambang = 0
%lebar 0 - 1/4 tinggi 0 - 1/4
for baris = 1: round(seperempatTinggi);
  for kolom = 1: round(seperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
Biner = zeros(tinggi, lebar);
for baris = 1: round(seperempatTinggi);
  for kolom = 1: round(seperempatLebar);
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
%lebar 1/4 - 1/2 tinggi 0 - 1/4
for baris = 1: round(seperempatTinggi);
  for kolom = round(seperempatLebar) : round(setengahLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = 1: round(seperempatTinggi);
  for kolom = round(seperempatLebar) : round(setengahLebar);
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
%lebar 1/2 - 3/4 tinggi 0 - 1/4
for baris = 1: round(seperempatTinggi);
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = 1: round(seperempatTinggi);
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
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
%lebar 3/4 - 1 tinggi 0 - 1/4
for baris = 1: round(seperempatTinggi);
  for kolom = round(tigaperempatLebar) : lebar;
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = 1: round(seperempatTinggi);
  for kolom = round(tigaperempatLebar) : lebar;
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
%lebar 0 - 1/4 tinggi 1/4 - 1/2
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = 1: round(seperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = 1: round(seperempatLebar);
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
%lebar 1/4 - 1/2 tinggi 1/4 - 1/2
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = round(seperempatLebar) : round(setengahLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = round(seperempatLebar) : round(setengahLebar);
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
%lebar 1/2 - 3/4 tinggi 1/4 - 1/2
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
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
%lebar 3/4 - 1 tinggi 1/4 - 1/2
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = round(tigaperempatLebar) : lebar;
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(seperempatTinggi): round(setengahTinggi);
  for kolom = round(tigaperempatLebar) : lebar;
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
%lebar 0 - 1/4 tinggi 1/2 - 3/4
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = 1: round(seperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = 1: round(seperempatLebar);
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
%lebar 1/4 - 1/2 tinggi 1/2 - 3/4
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = round(seperempatLebar) : round(setengahLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = round(seperempatLebar) : round(setengahLebar);
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
%lebar 1/2 - 3/4 tinggi 1/2 - 3/4
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
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
%lebar 3/4 - 1 tinggi 1/2 - 3/4
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = round(tigaperempatLebar) : lebar;
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(setengahTinggi): round(tigaperempatTinggi);
  for kolom = round(tigaperempatLebar) : lebar;
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
%lebar 0 - 1/4 tinggi 3/4 - 1
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = 1: round(seperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = 1: round(seperempatLebar);
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
%lebar 1/4 - 1/2 tinggi 3/4 - 1
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = round(seperempatLebar) : round(setengahLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = round(seperempatLebar) : round(setengahLebar);
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
%lebar 1/2 - 3/4 tinggi 3/4 - 1
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = round(setengahLebar) : round(tigaperempatLebar);
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
%lebar 3/4 - 1 tinggi 3/4 - 1
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = round(tigaperempatLebar) : lebar;
      jum = jum + olah(baris, kolom);
  end
end
b = double(jum / (baris*kolom) );

ambang = b;
for baris = round(tigaperempatTinggi): tinggi;
  for kolom = round(tigaperempatLebar) : lebar;
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
