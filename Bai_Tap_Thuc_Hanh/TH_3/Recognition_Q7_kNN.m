function Recognition_Q7_kNN()
    imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte');
    Mdl = fitcknn (imgTrainAll', lblTrainAll);
    imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels ('./t10k-labels.idx1-ubyte');
    nNumber = size(imgTestAll, 2);
    strMess = '\n Nhap n: ';
    k = 0;
    n = input (strMess);
    for i = 1:nNumber
        if (lblTestAll(i) == n)
            imgTest = imgTestAll(:, i);
            lblPredictTest = predict (Mdl, imgTest');
            lblImageTest = lblTestAll (i);
            if (lblPredictTest ~= lblImageTest)
                k = k + 1;
                fprintf('\n %d', k);
            end
        end
    end
    fprintf ('\n So %d sai la: %d ', n, k);
end