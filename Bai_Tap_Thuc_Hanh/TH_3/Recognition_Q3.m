function Recognition_Q3()
    fprintf('\n Nap du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('\n Start!!!');
    nNumber = size(imgTrainAll, 2);
    rArray = zeros(1 ,10);
    for i = 1:nNumber
        rArray(lblTrainAll(i)+1) = rArray(lblTrainAll(i)+1) + 1;
    end
    fprintf('\n So hinh anh duoc thong ke la: ');
    for i=1:10
        fprintf ('\n So %d la: %d ', i-1, rArray(i));
    end
end
    