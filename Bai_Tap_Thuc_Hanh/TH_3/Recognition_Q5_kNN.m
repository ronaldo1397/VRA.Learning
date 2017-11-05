function Recognition_Q5_kNN()
imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte');
Mdl = fitcknn (imgTrainAll', lblTrainAll);
imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
strMess = '\n Nhap so n (n tu 1 den 10000): ';
nNumber = input(strMess);
imgTest = imgTestAll(:, nNumber);
lblPredictTest = predict (Mdl, imgTest');
figure;
strLabelImage = 'Ket qua nhan dang la: ';
strLabelImage = [strLabelImage, num2str(lblPredictTest),'.'];
title(strLabelImage);
end