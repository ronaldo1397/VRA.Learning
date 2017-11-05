function Recognition_Q5_Face()
    fprintf('\nNap du lieu train');  
    imgTrainAll = load('imgTrainImagesAll');
    lblTrainAll = load('lblTrainLabelsAll'); 
    fprintf('\nNap du lieu test');
    imgTestAll = load('imgTestImagesAll');
    
    Mdl = fitcknn (imgTrainAll.imgTrainImagesAll', lblTrainAll.lblTrainLabelsAll);
    strMess = '\n Nhap so n (n tu 1 den 120): ';
    nNumber = input(strMess);
    imgTest = imgTestAll.imgTestImagesAll(:, nNumber);
    lblPredictTest = predict (Mdl, imgTest');
    figure;
    strLabelImage = 'Ket qua nhan dang la: ';
    strLabelImage = [strLabelImage, num2str(lblPredictTest),'.'];
    title(strLabelImage);
end