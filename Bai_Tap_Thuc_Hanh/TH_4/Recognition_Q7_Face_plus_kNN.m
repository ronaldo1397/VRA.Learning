function Recognition_Q7_Face_plus_kNN()
    fprintf('\nNap du lieu train');
    imgTrainAll = load('imgTrainImagesAll');
    lblTrainAll = load('lblTrainLabelsAll');
    fprintf('\nNap du lieu test');
    imgTestAll = load('imgTestImagesAll');
    lblTestAll = load('lblTestLabelsAll');
    nNumber = size(imgTestAll.imgTestImagesAll, 2);
    rArray = zeros(41, 41);
    rArray(1, 1) = -1;
    for i = 2 : 41
        rArray(1, i) = i-1;
        rArray(i, 1) = i-1;
    end
    Mdl = fitcknn (imgTrainAll.imgTrainImagesAll', lblTrainAll.lblTrainLabelsAll);
    lblResult = predict(Mdl,imgTestAll.imgTestImagesAll');
    nResult = (lblResult == lblTestAll.lblTestLabelsAll);
    for i = 1 : nNumber
        if(nResult(i) == 0)
            rArray(lblTestAll.lblTestLabelsAll(i) + 1, lblResult(i) + 1) = rArray(lblTestAll.lblTestLabelsAll(i) + 1, lblResult(i) + 1) + 1;
        end
    end
    disp(rArray);
    csvwrite("result.dat", rArray);
end