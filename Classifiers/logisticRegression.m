function [acc2,confM,b,p,newP,treshold,testing_label] = logisticRegression ()
%Preparing data for LOGIT
clear all
clc
load('attr_mixed_1000.mat')
%rng(4294967295); %--> Static random seed
%rng('suhffle'); %--> Random seed
complete_matrix = attr.';
[training_data,validation_data,testing_data] = dividerand(complete_matrix,0.70,0.15,0.15);
training_data = training_data.';
validation_data = validation_data.';
testing_data = testing_data.';
[m,n] = size(complete_matrix.');
train_label = training_data(2:end,n);
validation_label = validation_data(2:end,n);
testing_label = testing_data(2:end,n);
training_data = training_data(2:end,1:n-1);
validation_data = validation_data(2:end,1:n-1);
testing_data = testing_data(2:end,1:n-1);
%Normalized data
[training_data,testing_data,validation_data] = normalizeData(training_data,testing_data,validation_data);

%Training
b = glmfit(training_data,train_label,'binomial');
%Predictions
p = glmval(b,validation_data,'logit');
newP = zeros(length(p),1);

count = 0;

%---------Looking for best treshold---------
for i=0:0.01:1
    count = count + 1;
    
    for j=1:length(p)
        if(p(j,1) >= i)
            newP(j,1) = 1;
        else
            newP(j,1) = 0;
        end
    end
    confM = confusionmat(testing_label,newP);
    tp = confM(1,1);
    tn = confM(2,2);
    fn = confM(1,2);
    fp = confM(2,1);
    tpr = tp/(tp+fn);
    fpr = fp/(fp+tn);
    rates(1,count) = tpr;
    rates(2,count) = fpr;
    tresholds(1,count) = i;
    
end
%-------------------------------------------------------

y2 = 1;
x2 = 0;

[indice,distancia] = calcularDistancia(rates.',x2,y2);
treshold = tresholds(1,indice);

%Mapping data.
for i=1:length(p)
    if(p(i) >  treshold)
        newP(i) = 1;
    else
        newP(i) = 0;
    end
end

positives = 0;

%Getting positives for validation data
for j=1:length(p)
    if(num2str(newP(j)) == num2str(testing_label(j)))
        positives = positives + 1;
    end
end
%positives
acc = positives/length(validation_label)
confM = confusionmat(validation_label,newP);


%% Test data
clear p;
clear newP;

%Test predictions
p = glmval(b,testing_data,'logit');
newP = zeros(length(p),1);
%--------------------------------------------------

%----------Mapping test predictions-----------
for i=1:length(p)
    if(p(i) <  treshold)
        newP(i) = 0;
    else
        newP(i) = 1;
    end
end
%---------------------------------------------------

%----------------Calculate positives and ACC------------
positives = 0;
for j=1:length(p)
    if(num2str(newP(j)) == num2str(testing_label(j)))
        positives = positives + 1;
    end
end
%positives
acc2 = positives/length(testing_label);
confM = confusionmat(testing_label,newP);

end

