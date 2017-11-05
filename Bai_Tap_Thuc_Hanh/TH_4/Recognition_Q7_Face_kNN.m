function Recognition_Q7_Face_kNN()
    fprintf('\nNap du lieu train');
    imgTrainAll = load('imgTrainImagesAll');
    lblTrainAll = load('lblTrainLabelsAll');
    fprintf('\nNap du lieu test');
    imgTestAll = load('imgTestImagesAll');
    lblTestAll = load('lblTestLabelsAll');
    nNumber = size(imgTestAll.imgTestImagesAll, 2);
    rArray = zeros(1, 40);
    Mdl = fitcknn (imgTrainAll.imgTrainImagesAll', lblTrainAll.lblTrainLabelsAll);
    lblResult = predict(Mdl,imgTestAll.imgTestImagesAll');
    nResult = (lblResult == lblTestAll.lblTestLabelsAll);
    for i = 1 : nNumber
        if(nResult(i) == 0)
                rArray(lblTestAll.lblTestLabelsAll(i)) =  rArray(lblTestAll.lblTestLabelsAll(i)) + 1;
        end
    end
    for i = 1 : 40
        fprintf('\n Khuon mat %d sai la: %d ', i, rArray(i));
    end
end