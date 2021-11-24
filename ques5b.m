I = imread('test_5b.jpg');
 
subplot(2, 3, 1),  
imshow(I); 
title('Original image'); 
  
 
se = strel('rectangle',[20,20]); 

ope  = imopen(I, se); 
subplot(2, 3, 2),  
imshow(ope ); 
title('Opened image'); 
  
 
clos  = imclose(I, se); 
subplot(2, 3, 3),  
imshow(clos ); 
title('Closed image'); 

