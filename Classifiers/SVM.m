function [accuracy_test,Trained_Struct,best_c] = SVM()
% clear all
% clc

%Preparing data for SVM.
load('attr_pros_1000.mat')
complete_matrix = attr(2:end,:);
[m,n] = size(complete_matrix);
complete_matrix = complete_matrix.';
[training_data,validation_data,testing_data] = dividerand(complete_matrix,0.70,0.15,0.15);
training_data=training_data.';
validation_data=validation_data.';
testing_data=testing_data.';
training_label=training_data(1:end,n);
validation_label=validation_data(1:end,n);
testing_label=testing_data(1:end,n);
training_data=training_data(1:end,1:n-1);
validation_data=validation_data(1:end,1:n-1);
testing_data=testing_data(1:end,1:n-1);

%Training and selecting parameters for validation data.
Trained_Struct = svmtrain(training_data,training_label,'kernel_function','linear','boxconstraint',0.01,'method','SMO', 'kktviolationlevel', 1);
Test = svmclassify(Trained_Struct,validation_data);
confMatrix = confusionmat(validation_label,Test);
[rows,columns] = size(validation_data);
accuracy_validate = (confMatrix(1) + confMatrix(4)) /rows;
best_val_acc = accuracy_validate;
best_c = 0.01;
%Looking for best C parameter.
for i=0.02:0.01:5
    Trained_Struct = svmtrain(training_data,training_label,'kernel_function','linear','boxconstraint',i,'method','SMO', 'kktviolationlevel', 1);
    Test = svmclassify(Trained_Struct,validation_data);
    confMatrix = confusionmat(validation_label,Test);
    accuracy_validate = (confMatrix(1) + confMatrix(4)) /rows;
    if accuracy_validate > best_val_acc 
        best_val_acc = accuracy_validate;  
        best_c = i;
    end
end
best_val_acc;
%% Final test with the test data.
Trained_Struct = svmtrain(training_data,training_label,'kernel_function','linear','boxconstraint',best_c,'method','SMO', 'kktviolationlevel', 1);
Test = svmclassify(Trained_Struct,testing_data);
confMatrix = confusionmat(testing_label,Test);
[rows,columns] = size(testing_data);
accuracy_test = (confMatrix(1) + confMatrix(4)) /rows;


