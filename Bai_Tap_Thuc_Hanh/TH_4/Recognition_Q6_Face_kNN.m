function Recognition_Q6_Face_kNN()
    fprintf('\nNap du lieu train');
    imgTrainAll = load('imgTrainImagesAll');
    lblTrainAll = load('lblTrainLabelsAll');
    fprintf('\nNap du lieu test');
    imgTestAll = load('imgTestImagesAll');
    lblTestAll = load('lblTestLabelsAll');
    Mdl = fitcknn (imgTrainAll.imgTrainImagesAll', lblTrainAll.lblTrainLabelsAll);
    strMess = '\n Nhap so n (n tu 1 den 120): ';
    nNumber = input(strMess);
    imgTest = imgTestAll.imgTestImagesAll(:, nNumber);
    lblPredictTest = predict (Mdl, imgTest');
    lblImageTest = lblTestAll.lblTestLabelsAll (nNumber);
    figure;
    img2D = reshape(imgTest, 112, 92);
    imshow(img2D);
    strLabelImage = 'Ban Dau ';
    strLabelImage = [strLabelImage, num2str(lblTestAll.lblTestLabelsAll(nNumber)),'.'];
    strLabelImage = [strLabelImage,' Du doan: '];
    strLabelImage = [strLabelImage, num2str(lblPredictTest),'.'];
    if (lblPredictTest == lblImageTest)
        strLabelImage = [strLabelImage,' Ket qua dung.'];
    else
        strLabelImage = [strLabelImage,' Ket qua sai.'];
    end
    title(strLabelImage);
end