clear;
pkg load io;
tic
myFolder = 'C:\Users\admin\Ciri\';
filepattern = fullfile(myFolder, '*.jpg');
files = dir(filepattern);
dataBuah = zeros(length(files), 12);

for i=1:length(files)
  disp('')
  disp(files(i).name) 
  [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12] = ekstrasiCiri(files(i).name);
  
  dataBuah(i,1) = c1;
  dataBuah(i,2) = c2;
  dataBuah(i,3) = c3;
  dataBuah(i,4) = c4;
  dataBuah(i,5) = c5;
  dataBuah(i,6) = c6;
  dataBuah(i,7) = c7;
  dataBuah(i,8) = c8;
  dataBuah(i,9) = c9;
  dataBuah(i,10) = c10;
  dataBuah(i,11) = c11;
  dataBuah(i,12) = c12;
  
end
toc