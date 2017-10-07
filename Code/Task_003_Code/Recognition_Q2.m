function Recognition_Q2()
    fprintf('\nNap du lieu test');
    
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    strMessage = '\n Nhap n: ';
    n = input (strMessage);
    img = imgTestAll(:, n);
    img2D = reshape(img, 28, 28); 
    strLabelImage = num2str(lblTestAll(n));
    imshow(img2D);
    title(strLabelImage);
end
    