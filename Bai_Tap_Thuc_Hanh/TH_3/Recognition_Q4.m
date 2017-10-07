function Recognition_Q4()
    fprintf('\nNap du lieu test');   
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    fprintf('\n Start!!!');
    nNumber = size(imgTestAll, 2);
    rArray = zeros(1 ,10);
    for i = 1:nNumber
        rArray(lblTestAll(i)+1) = rArray(lblTestAll(i)+1) + 1;
    end
    fprintf('\n So hinh anh duoc thong ke la: ');
    for i=1:10
        fprintf ('\n So %d la: %d ', i-1, rArray(i));
    end
end
