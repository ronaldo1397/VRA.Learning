function BaiTap015()
    strData = 'train-images.idx3-ubyte';
    strDataLabel = 'train-labels.idx3-ubyte';
    [imgDataTrain, lblDataTrain] = loadData(strData, strDataLabel);
    featuresDataTrain = ExtractFeaturesHog(imgDataTrain);
    Mdl = fitcknn(featuresDataTrain', lblDataTrain);
    strData = 't10k-images.idx3-ubyte';
    strDataLabel = 't10k-labels.idx1-ubyte';
    [imgDataTest, lblActualDataTest] = LoadData(strData, strDataLabel);
    featuresDataTest = ExtractFeaturesHog(imgDataTest);
    lblResult = predict (Mdl, featuresDataTest');
    nResult = (lblResult == lblActualDataTest);
    nCount = sum(nResult);
    fprintf('\nSo luong mau dung la: %d', nCount);
end