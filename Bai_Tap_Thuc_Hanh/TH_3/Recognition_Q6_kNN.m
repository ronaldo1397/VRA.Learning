function Recognition_Q6_kNN()
imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte');
Mdl = fitcknn (imgTrainAll', lblTrainAll);
imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
lblTestAll = loadMNISTLabels ('./t10k-labels.idx1-ubyte');
strMess = '\n Nhap so n (n tu 1 den 10000): ';
nNumber = input(strMess);
imgTest = imgTestAll(:, nNumber);
lblPredictTest = predict (Mdl, imgTest');
lblImageTest = lblTestAll (nNumber);
figure;
img2D = reshape(imgTest, 28, 28);
imshow(img2D);
strLabelImage = 'Ban Dau ';
strLabelImage = [strLabelImage, num2str(lblTestAll(nNumber)),'.'];
strLabelImage = [strLabelImage,' Du doan: '];
strLabelImage = [strLabelImage, num2str(lblPredictTest),'.'];
if (lblPredictTest == lblImageTest)
    strLabelImage = [strLabelImage,' Ket qua dung.'];
else
    strLabelImage = [strLabelImage,' Ket qua sai.'];
end
title(strLabelImage);
end