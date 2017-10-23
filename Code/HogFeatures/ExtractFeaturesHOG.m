function [featuresData] = ExtractFeaturesHOG(imgData)
    imgI1D = imgData(:, 1);
    imgI2D = reshape(imgI1D, 28, 28);
    [featureVector, hogVisualization] = extractHOGFeatures(imgI2D);
    nSize = length (featureVector);
    nData = size(imgData, 2);
    featuresData = zeros(nSize, nTrainData);
    for i= 1:nData
        imgI1D = imgData(:, i);
        imgI2D = reshape(imgI1D, 28, 28);
        featuresData(:, i) = extractHOGFeatures(imgI2D);
    end
end