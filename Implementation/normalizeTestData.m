function [testMatrixOutput] = normalizeTestData(testMatrix, oldMean, oldVariance )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes hereç
[rows,columns] = size(testMatrix);

for i=1:columns
    testMatrixOutput(:,i)= (testMatrix(:,i)-oldMean(1,i))./oldVariance(1,i);
end



