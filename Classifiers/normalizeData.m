function [ trainingMatrixOutput, testMatrixOutput,validationMatrixOutput] = normalizeData( trainingMatrix,validationMatrix,testMatrix )
%Normalize data function
%Returns 3 sets of data with its respective normalization.
[rows,columns] = size(trainingMatrix);
meanMatrix = mean(trainingMatrix);
stdMatrix =std(trainingMatrix);

for i=1:columns
    trainingMatrixOutput(:,i)= (trainingMatrix(:,i)-meanMatrix(1,i))./stdMatrix(1,i);
    testMatrixOutput(:,i)= (testMatrix(:,i)-meanMatrix(1,i))./stdMatrix(1,i);
    validationMatrixOutput(:,i)= (validationMatrix(:,i)-meanMatrix(1,i))./stdMatrix(1,i);
end



