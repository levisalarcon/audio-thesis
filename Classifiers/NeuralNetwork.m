%%
%Preparing data for ANN.
clear all
clc
load('attr_pros_1000.mat')
rng('shuffle'); %--> Random seed.
%rng(4294967295); %--> Static random seed.
complete_matrix = attr;
feature_matrix = complete_matrix(2:end,1:3).';
class_vector = complete_matrix(2:end,4).';

%Training functions.
net = patternnet([3],'traingd');
%net = patternnet([3], 'trainlm');
%net = patternnet([3],'trainscg');

%Transfer functions. 
net.layers{1}.transferFcn = 'purelin';
net.layers{2}.transferFcn = 'purelin';

% net.layers{1}.transferFcn = 'logsig';
% net.layers{2}.transferFcn = 'logsig';

% net.layers{1}.transferFcn = 'tansig';
% net.layers{2}.transferFcn = 'tansig';

%Training.
[net,tr] = train(net,feature_matrix,class_vector);

%Extracting test and validation data.
testFeatures = feature_matrix(:,tr.testInd);
testLabels = class_vector(:,tr.testInd);
testValFeatures = feature_matrix(:,tr.valInd);
testValLabels = class_vector(:,tr.valInd);

%Predictions
p = net(testValFeatures)';

count = 0;
minimo = min(p);
maximo = max(p);

%---------Getting best treshold------------
for i=minimo:0.01:maximo
    count = count + 1;
    for j=1:length(p)
        if(p(j,1) >= i)
            newP(j,1) = 1;
        else
            newP(j,1) = 0;
        end
    end
    confM = confusionmat(testValLabels,newP);
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

y2 = 1;
x2 = 0;
%--------------------------------------------------------

[indice,distancia] = calcularDistancia(rates.',x2,y2);
treshold = tresholds(1,indice);

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
    if(num2str(newP(j)) == num2str(testValLabels(j)))
        positives = positives + 1;
    end
end
%positives
acc = positives/length(testValLabels)
confM = confusionmat(testValLabels',newP');

%Test
clear p;
clear newP;
p = net(testFeatures)';

for i=1:length(p)
    if(p(i) >  treshold)
        newP(i) = 1;
    else
        newP(i) = 0;
    end
end

positives = 0;

%Getting positives for test data
for j=1:length(p)
    if(num2str(newP(j)) == num2str(testLabels(j)))
        positives = positives + 1;
    end
end
%positives
acc = positives/length(testLabels)
confM = confusionmat(testLabels',newP');
% testY = net(testX);
% testIndices = vec2ind(testY)
%  
% plotconfusion(testT,testY)
%%
clear all
clc
load('attr_spec_1000.mat')
%rng('default')
%rng('shuffle');
rng(4294967295);
%RandStream.setGlobalStream (RandStream ('mrg32k3a','Seed', 1234))
complete_matrix = attr;
%feature_matrix = normc(complete_matrix(2:end,1:138)).';
feature_matrix = complete_matrix(2:end,1:127).';
class_vector = complete_matrix(2:end,128).';


%net = patternnet([127],'traingd');
%net = patternnet([127], 'trainlm');
%net = patternnet([127],'traincgf');
net = patternnet([127],'trainscg');
%net = patternnet([127],'trainbr');
%net.trainParam.epochs = 2000
%net.trainParam.max_fail = 20;
%net = patternnet([127],'traincgf');
% 
net.inputs{1}.processFcns = {'mapstd','removeconstantrows'};
net.outputs{2}.processFcns = {'mapstd','removeconstantrows'};

% net.layers{1}.transferFcn = 'logsig';
% net.layers{2}.transferFcn = 'logsig';

net.layers{1}.transferFcn = 'purelin';
net.layers{2}.transferFcn = 'purelin';

% net.layers{1}.transferFcn = 'tansig';
% net.layers{2}.transferFcn = 'tansig';

%net.performParam.regularization = 0.001;

[net,tr] = train(net,feature_matrix,class_vector);

testX = feature_matrix(:,tr.testInd);
testT = class_vector(:,tr.testInd);

testY = net(testX);
testIndices = vec2ind(testY)
 
plotconfusion(testT,testY)

%%
clear all
clc
load('attr_mixed_1000.mat')
%rng('default')
%rng('shuffle');
%rng(4294967295);
%RandStream.setGlobalStream (RandStream ('mrg32k3a','Seed', 1234))
complete_matrix = attr;
%feature_matrix = normc(complete_matrix(2:end,1:138)).';
feature_matrix = complete_matrix(2:end,1:130).';
class_vector = complete_matrix(2:end,131).';


net = patternnet([130],'traingd');
%net = patternnet([130], 'trainlm');
%net = patternnet([130],'traincgf');
%net = patternnet([130],'trainscg');
%net.trainParam.epochs = 2000
%net.trainParam.max_fail = 20;
%net = patternnet([127],'traincgf');


% net.layers{1}.transferFcn = 'logsig';
% net.layers{2}.transferFcn = 'logsig';
% 
% net.inputs{1}.processFcns = {'mapstd','removeconstantrows'};
% net.outputs{2}.processFcns = {'mapstd','removeconstantrows'};

% net.layers{1}.transferFcn = 'purelin';
% net.layers{2}.transferFcn = 'purelin';

% net.layers{1}.transferFcn = 'tansig';
% net.layers{2}.transferFcn = 'tansig';

%net.performParam.regularization = 0.001;

[net,tr] = train(net,feature_matrix,class_vector);
testX = feature_matrix(:,tr.testInd);
testT = class_vector(:,tr.testInd);

testY = net(testX);
testIndices = vec2ind(testY)
 
plotconfusion(testT,testY)
