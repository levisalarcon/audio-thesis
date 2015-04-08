clear all
clc
%Prepare data for LDA
load('attr_mixed_1000.mat')
complete_matrix = attr(2:end,:);
[m,n] = size(complete_matrix);
complete_matrix = complete_matrix.';
[training_data,validation_data,testing_data] = dividerand(complete_matrix,0.70,0.15,0.15);
training_data=training_data.';
validation_data=validation_data.';
testing_data=testing_data.';
train_label=training_data(1:end,n);
validate_label=validation_data(1:end,n);
test_label=testing_data(1:end,n);
training_data=training_data(1:end,1:n-1);
validation_data=validation_data(1:end,1:n-1);
testing_data=testing_data(1:end,1:n-1);
%Normalize data
[train_data,validate_data,test_data]= normalizeData(training_data,validation_data,testing_data);
%Classify for validation data
[predicted,err,P,logp,coeff] = classify(validate_data,train_data,train_label,'diaglinear'); 
MatCon = confusionmat(validate_label,predicted) 
[f,c] = size(validate_data);
accuracy_validate = (MatCon(1) + MatCon(4)) /f


%% Test
clear predicted;
clear err;
clear P;
clear logp;
clear coeff;
%Classify for test data
[predicted,err,P,logp,coeff] = classify(test_data,train_data,train_label,'diaglinear'); 
MatCon = confusionmat(test_label,predicted) 
[f,c] = size(test_data);
accuracy_test = (MatCon(1) + MatCon(4)) /f 



