function Recognition_Q2_Face()
    fprintf('\nNap du lieu test');
    
    imgTestAll = load('imgTestImagesAll');
    lblTestAll = load('lblTestLabelsAll');
    
    strMessage = '\n Nhap n: ';
    n = input (strMessage);
    img = imgTestAll.imgTestImagesAll(:, n);
    img2D = reshape(img, 112, 92); 
    strLabelImage = num2str(lblTestAll.lblTestLabelsAll(n));
    imshow(img2D);
    title(strLabelImage);
end
    