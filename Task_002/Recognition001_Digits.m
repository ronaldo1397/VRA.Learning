function Recognition001_Digits()
    fprintf('\nLoad du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('\nLoad du lieu test');
    imgTrainAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('\nKet thuc.');
end