RGB = imread('peppers.png');
imshow(RGB)
HSV = rgb2hsv(RGB);
[h,s,v] = imsplit(HSV);
saturationFactor = 2;
s_sat = s*saturationFactor;
HSV_sat = cat(3,h,s_sat,v);
RGB_sat = hsv2rgb(HSV_sat);
imshow(RGB_sat)
montage({h,s,v,RGB},"BorderSize",10,"BackgroundColor",'w');
