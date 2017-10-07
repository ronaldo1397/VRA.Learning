function Recognition_Q1()
    fprintf('\nNap du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    strMessage = '\n Nhap n: ';
    n = input (strMessage);
    img = imgTrainAll(:, n);
    img2D = reshape(img, 28, 28); 
    strLabelImage = num2str(lblTrainAll(n));
    imshow(img2D);
    title(strLabelImage);
end