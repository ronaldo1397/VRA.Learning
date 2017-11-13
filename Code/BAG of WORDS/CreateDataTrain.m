function CreateDataTrain()
%%Load Image Data Train
imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
nTrainImages = size (imgTrainAll, 2);
%%Create Folders
for i = 0:9
    mkdir(['DataTrain\' num2str(i)]);
end
%%Extract Images to Folders
index = zeros(1, 10);
for i = 1:nTrainImages
    imgI = imgTrainAll(:, i);
    img2D = reshape(imgI, 28, 28);
    category = lblTrainAll(i);
    %%Padding fname with leading zeros
    strFileName = ['image_' num2str(index(1, category + 1),'%d5'),'jpg'];
    strPath = ['DataTrain\' num2str(category),'\' strFileName];
    %%Save images
    imwrite(img2D, strPath);
    index(1, category + 1) = index(1, category + 1) + 1;
end
end