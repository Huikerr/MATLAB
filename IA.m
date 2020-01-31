clear
ia=imread('IA.png');
q=[72 96 128 144 152 192 384 57 60 76 114 120 180 16 32 70 150 310 10000];
p={'72x72.png', '96x96.png', '128x128.png', '144x144.png' ,'152x152.png' ,...
    '192x192.png', '384x384.png', '57x57.png', '60x60.png', '76x76.png',...
    '114x114.png' ,'120x120.png', '180x180.png' ,'16x16.png', ...
    '32x32.png', '70x70.png','150x150.png','310x310.png','1960x1960.png'};
%imshow(ia)
s=size(ia);
ib=rgb2gray(ia);
%imwrite(ib,'ib.png')
%imshow(ib)
%B=imresize(ia,[512,512]);
%imshow(B)
for i=1:1:19
m=zeros(2181,340,3);
n=zeros(2181,340,3);
ia1=[m,ia,n];
ia2=imresize(ia1,[q(i),q(i)]);
imwrite(ia2,p{i})
end