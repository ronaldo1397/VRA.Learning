function Recognition004_Digits()
    fprintf('\nload du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    fprintf('\nLoad du lieu test.');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    nTrainImages = size(imgTrainAll, 2);
    nNumber = randi([1 nTrainImages]);
    figure;
    img = imgTrainAll(: , nNumber);
    img2D = reshape(img,28,28);
    strLabelImage = num2str(lblTrainAll(nNumber));
    strLabelImage = [strLabelImage , '(',num2str(nNumber),')'];
    imshow(img2D);
    title(strLabelImage);
    
    nTestImages = size(imgTestAll, 2);
    nNumberTest = randi([1 nTestImages]);
    figure;
    imgTest = imgTestAll(:, nNumberTest);
    img2DTest = reshape(imgTest, 28, 28);
    strLabelImgTest = num2str(lblTestAll(nNumberTest));
    strLabelImgTest = [strLabelImgTest,'(',num2str(nNumberTest),')'];
    imshow(img2DTest);
    title(strLabelImgTest);
end