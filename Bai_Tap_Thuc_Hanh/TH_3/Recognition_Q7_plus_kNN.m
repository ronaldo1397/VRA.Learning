function Recognition_Q7_plus_kNN()
   imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte');
    imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels ('./t10k-labels.idx1-ubyte');
    nNumber = size(imgTestAll, 2);
    rArray = zeros(11, 11);
    rArray(1, 1) = -1;
    for i = 2 : 11
        rArray(1, i) = i-2;
        rArray(i, 1) = i-2;
    end
    Mdl = fitcknn (imgTrainAll', lblTrainAll);
    lblResult = predict(Mdl,imgTestAll');
    nResult = (lblResult == lblTestAll);
    for i = 1 : nNumber
        if(nResult(i) == 0)
            rArray(lblTestAll(i) + 2, lblResult(i) + 2) = rArray(lblTestAll(i) + 2, lblResult(i) + 2) + 1;
        end
    end
    disp(rArray);
end