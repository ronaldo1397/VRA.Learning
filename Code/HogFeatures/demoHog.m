function demoHog()
    imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte');
    img1D = imgTrainAll(:, 2017);
    img2D = reshape(img1D, 28, 28);
    
    subplot(2, 5, 1);
    imshow(img2D);
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [2 2] );
    subplot(2, 5, 2);
    plot(visualHog);
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [4 4] );
    subplot(2, 5, 3);
    plot(visualHog);
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [8 8] );
    subplot(2, 5, 4);
    plot(visualHog);
    
    subplot(2, 5, 5);
    hist(featuresVector);