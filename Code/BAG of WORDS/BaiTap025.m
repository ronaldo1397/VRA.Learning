function BaiTap025()
%%Load Image Data Train
rootFolder = fullfile('DataTrain');
categories = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
imds = imageDatastore(fullfile(rootFolder, catefories),'LabelSource', 'foldernames');
tb101 = countEachLabel(imds);
minSetCount = min(tb101{:,2});
imds = splitEachLabel(imds, minSetCount, 'randomize');
tb102 = countEachLabel(imds);
bag = bagOfFeatures(imds);
img = readimage(imds, 1);
featureVector = encode(bag, img); %%ExtractFeatures
figure;
bar(featureVector);
title('Visual word occurrences');
xlabel('Visual word index');
ylabel('Frequency of occurrence');
categoryClassifier = trainImageCategoryClassifier(imds, bag);
rootFolder = fullfile('DataTest');
categories = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
imds = imageDatastore(fullfile(rootFolder, categories),'LabelSource', 'foldernames');
tb101 = countEachLabel(imds);
confMatrixTest = evaluate(categoryClassifier, imds);
mean(diag(confMatrixTest));
end


