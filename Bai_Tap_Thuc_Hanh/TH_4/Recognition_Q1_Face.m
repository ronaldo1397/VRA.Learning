function Recognition_Q1_Face()
    fprintf('\nNap du lieu train');
    imgTrainAll = load('imgTrainImagesAll');
    lblTrainAll = load('lblTrainLabelsAll');
    
    strMessage = '\n Nhap n: ';
    n = input (strMessage);
    img = imgTrainAll.imgTrainImagesAll(:, n);
    img2D = reshape(img, 112, 92); 
    strLabelImage = num2str(lblTrainAll.lblTrainLabelsAll(n));
    imshow(img2D);
    title(strLabelImage);
end