clear;
foto = char('1.jpg', '2.jpg','3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '8.jpg');

for i = 1 : length(foto)
  disp('')
  disp(foto(i,:))
  citradou = double(imread(foto(i,:)));
  [baris, kolom, keping] = size(citradou);
  jum_piksel = baris * kolom;
  miu = 3;

  jum_r=0;
  jum_g=0;
  jum_b=0;

  jum_var_r = 0;
  jum_var_g = 0;
  jum_var_b = 0;

  jum_skew_r = 0;
  jum_skew_g = 0;
  jum_skew_b = 0;

  jum_kur_r = 0;
  jum_kur_g = 0;
  jum_kur_b = 0;

  for i = 1 : baris
    for j = 1 : kolom
          jum_r = jum_r + citradou(i, j, 1);
          jum_g = jum_g + citradou(i, j, 2);
          jum_b = jum_b + citradou(i, j, 3);

          jum_var_r = jum_var_r + (citradou(i, j,1) - miu)^2;
          jum_var_g = jum_var_g + (citradou(i, j,2) - miu)^2;
          jum_var_b = jum_var_b + (citradou(i, j,3) - miu)^2;

          jum_skew_r = jum_skew_r + (citradou(i, j,1) - miu)^3;
          jum_skew_g = jum_skew_g + (citradou(i, j,2) - miu)^3;
          jum_skew_b = jum_skew_b + (citradou(i, j,3) - miu)^3;

          jum_kur_r = jum_kur_r + (citradou(i, j,1) - miu)^4;
          jum_kur_g = jum_kur_g + (citradou(i, j,2) - miu)^4;
          jum_kur_b = jum_kur_b + (citradou(i, j,3) - miu)^4;
    end
  end

  disp("Miu = 3")
  % Hitung rata-rata
  disp("")
  disp("Rata-Rata")
  mean_r = jum_r / jum_piksel
  mean_g = jum_g / jum_piksel
  mean_b = jum_b / jum_piksel

  % Hitung varians
  disp("")
  disp("Varians")
  var_r = sqrt(jum_var_r/jum_piksel)
  var_g = sqrt(jum_var_g/jum_piksel)
  var_b = sqrt(jum_var_b/jum_piksel)

  % Hitung skewness
  disp("")
  disp("Skewness")
  skew_r = jum_skew_r/ (jum_piksel * (var_r^3))
  skew_g = jum_skew_g/ (jum_piksel * (var_g^3))
  skew_b = jum_skew_b/ (jum_piksel * (var_b^3))

  % Hitung kurtosis
  disp("")
  disp("Kurtosis")
  kur_r = jum_kur_r / (jum_piksel * (var_r^4)) - 3
  kur_g = jum_kur_g / (jum_piksel * (var_g^4)) - 3
  kur_b = jum_kur_b / (jum_piksel * (var_b^4)) - 3
  
endfor
