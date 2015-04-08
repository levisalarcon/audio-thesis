function [completeGroup, classifier] = audio_classification(segmentsLength, audioPath, exportPath, classifier)
%% Data division
%clear all;
classifier
clc;
tic;
h = waitbar(0,'Initializing reduction...');
mkdir(exportPath,'temp_files');
%mkdir(strcat(exportPath,'temp_files')); %Create temp files folder
mkdir(strcat(exportPath,'\temp_files'), 'audio_files'); %Create temp files folder
eachSegmentLentgh = segmentsLength; %Duration in seconds of each segment
[y, Fs, nbits] = wavread(audioPath); %load the wav
totalAudioLength = length(y)/Fs %should give you the length in seconds
numSegments = ceil(totalAudioLength/ eachSegmentLentgh); %Number of resultant segments
segmentOnSamples = eachSegmentLentgh * Fs; %Convert back from seconds to samples
init = 1;
audioSegments = zeros(segmentOnSamples,numSegments-1); %This is the matrix where every audio segment should be
waitbar(0.3,h,'Generating segments...')
for i=1:numSegments % Fill the audiosegment data
    if i < numSegments
        audioSegments(1:end,i) = y(init:segmentOnSamples*i,1);
        init = (segmentOnSamples*i)+1;
        tempAudioName = strcat('temp_audio',num2str(i)); % Create the name for the temporal audio
        finalAudioPath = strcat(exportPath,'\temp_files','\audio_files\',tempAudioName);
        wavwrite(audioSegments(:,i),Fs,16,finalAudioPath); %Write the temporal audio
    end
    if i == numSegments
        tempAudioName = strcat('temp_audio',num2str(numSegments)); % Create the name for the temporal audio
        finalAudioPath = strcat(exportPath,'\temp_files','\audio_files\',tempAudioName);
        lastSegment = y(init:end,1); %this is the last segment
        wavwrite(lastSegment,Fs,16, finalAudioPath); %Write the last audio segment
    end
end
 segmentationElapsedTime = toc
%% Feature extraction
tic;
waitbar(0.6,h,'Extracting features...')
mirwaitbar(0);
mirverbose(0);
currentFolder = pwd;
cd (strcat(exportPath,'\temp_files'));
databaseFolder = pwd
folders = dir;

% PARAMETROS DEL ANÁLISIS ESPECTRAL

frameSize = 2048;
hopSize = 1024;

% Número de atributos:

numAttributes = 138;

attributeMatrix = zeros(numSegments, numAttributes);

fileCounter = 0;

for i = 3: length( folders ) 
    
    genreFolder = folders(i).name;
    
    if folders(i).isdir
        
        filenames = dir( genreFolder );
        
        for j = 3: length(filenames)         
            audioFile =  fullfile( databaseFolder, genreFolder, filenames(j).name )   
            [a, b, ext] = fileparts(audioFile)  
            if strcmp(ext, '.wav') % Revisamos si tiene la extension correcta:
                fileCounter = fileCounter + 1;
                values = mirextract( audioFile, frameSize, hopSize);
                
                [ numMFCCs frames] = size(values);
                
                meanMFCCs = mean( values, 2); % promedia sobre la primera dimensi?n
                varMFCCs = var( values, 0, 2); % varianza;
                kurtMFCCs = kurtosis(values,0,2); % kurtosis
                asiMFCCs = skewness(values,0,2); % asimetría
                derMeanMFCCs = diff(meanMFCCs,2);%Derivada de mfcss
                derVarMFCCs = diff(varMFCCs,2);%Derivada de mfcss
                derKurtMFCCs = diff(kurtMFCCs,2);%Derivada de mfcss
                derAsiMFCCs = diff(asiMFCCs,2);%Derivada de mfcss
                derAsiMFCCs(15,1)=0;
                derVarMFCCs(15,1)=0;
                derKurtMFCCs(15,1)=0;
                derMeanMFCCs(15,1)=0;
                best_pitches=mirgetdata(mirpeaks(audioFile,'Total',15)); % promedio pitches
                
                %%Prosódicos
                pitch = mirgetdata(mirpitch(audioFile,'Total',1));
                envelope = sum(mirgetdata(mirenvelope(audioFile)));
                energy = sum(mirgetdata(mirspectrum(audioFile,'Power')));

                %%Aquí organizo%%
                attributeMatrix( fileCounter, 1:15 ) = meanMFCCs;
                attributeMatrix( fileCounter, 16:30  ) = varMFCCs;
                attributeMatrix( fileCounter, 31:45  ) = kurtMFCCs;
                attributeMatrix( fileCounter, 46:60  ) = asiMFCCs;
                attributeMatrix( fileCounter, 61:75  ) = derMeanMFCCs;
                attributeMatrix( fileCounter, 76:90  ) = derVarMFCCs;
                attributeMatrix( fileCounter, 91:105  ) = derKurtMFCCs;
                attributeMatrix( fileCounter, 106:120  ) = derAsiMFCCs;
                attributeMatrix( fileCounter, 121:135  ) = best_pitches;
                attributeMatrix( fileCounter, 136  ) = pitch;
                attributeMatrix( fileCounter, 137  ) = envelope;
                attributeMatrix( fileCounter, 138  ) = energy;
                
                Data(fileCounter).archivo = filenames(j).name;
                Data(fileCounter).atributos = [ meanMFCCs; varMFCCs;kurtMFCCs;asiMFCCs;derMeanMFCCs;derVarMFCCs;derKurtMFCCs;derAsiMFCCs;best_pitches;pitch;envelope;energy] ;
                Data(fileCounter).clase = genreFolder;
                 
                num_atributos = length( Data(1).atributos );
                num_ejemplos = length(Data);
                
                array_atributos = cell( num_ejemplos +1, num_atributos  + 1 );% + la clase
                
                %Nombre de los atributos. 
                
                for i = 1: 15
                    array_atributos(1, i) = cellstr( num2str(i) );
                    array_atributos(1, i + 15 ) = cellstr( num2str(i + 15) );
                    array_atributos(1, i + 30 ) = cellstr( num2str(i + 30) );
                    array_atributos(1, i + 45 ) = cellstr( num2str(i + 45) );
                    array_atributos(1, i + 60 ) = cellstr( num2str(i + 60) );
                    array_atributos(1, i + 75 ) = cellstr( num2str(i + 75) );
                    array_atributos(1, i + 90 ) = cellstr( num2str(i + 90) );
                    array_atributos(1, i + 105 ) = cellstr( num2str(i + 105) );
                    array_atributos(1, i + 120 ) = cellstr( num2str(i + 120) );
                end
                array_atributos(1, 136 ) = cellstr( '136');
                array_atributos(1, 137 ) = cellstr( '137');
                array_atributos(1, 138 ) = cellstr( '138');
                array_atributos(1, num_atributos + 1) = cellstr( '139');
                
                for i = 1: length(Data)
                    
                    array_atributos( i + 1, 1 : num_atributos ) = num2cell(Data(i).atributos);
                    array_atributos( i + 1, num_atributos + 1) =  cellstr(Data(i).clase);
                    
                end
            end
        end
    end
end
    %Limpio los ceros de la matriz
    newAttributeMatrix = zeros(numSegments,130);
    newAttributeMatrix(:,1:73) = attributeMatrix(:,1:73);
    newAttributeMatrix(:,74:86) = attributeMatrix(:,76:88);
    newAttributeMatrix(:,87:99) = attributeMatrix(:,91:103);
    newAttributeMatrix(:,100:112) = attributeMatrix(:,106:118);
    newAttributeMatrix(:,113:130) = attributeMatrix(:,121:138);
    featureExtractingElapsedTime = toc
    %% Classification
    clear acc;
    clear attr;
    clear derAsiMFCCs;
    clear derKurtMFCCs;
    clear derMeanMFCCs;
    clear derVarMFCCs;
    clear asiMFCCs;
    clear best_pitches;
    clear energy;
    clear envelope;
    clear kurtMFCCs;
    if strcmp(classifier,'svm')
            tic;
            waitbar(0.8,h,'Classifyng...')
            %load('best_accuracy.mat')
            load('81_mixed_autoscale.mat')
            FADE_LEN = 5; % 5 second fade
            fade_samples = round(FADE_LEN.*Fs); % figure out how many samples fade is over
            fade_scale = linspace(0,1,fade_samples)'; % create fade
            completeGroup = svmclassify(Trained_Struct,newAttributeMatrix);
            init = 1;
            altInit = 1;
            cont = 1;
            for i=1:numSegments
                if i < numSegments
                    Group = svmclassify(Trained_Struct,newAttributeMatrix(i,:));
                    if Group==1
                        segmentToFade = audioSegments(:,i);
                        sig_faded = segmentToFade;
                        sig_faded(end-fade_samples+1:end) = segmentToFade(end-fade_samples+1:end).*fade_scale(end:-1:1);
                        reducedAudio(init:segmentOnSamples*cont,1) = sig_faded;
                        zerosArray(1,altInit:segmentOnSamples*i) = segmentToFade;
                        altInit = (i*segmentOnSamples)+1;
                        init = (segmentOnSamples*cont)+1;
                        cont = cont + 1;
                    else   
                        altInit = (i*segmentOnSamples)+1;
                    end
                    
                end
                if i == numSegments
                    Group = svmclassify(Trained_Struct,newAttributeMatrix(i,:));
                    if Group==1
                        reducedAudio(init:init+(length(lastSegment))-1,1) = lastSegment;
                        zerosArray(1,init:init+(length(lastSegment))-1) = lastSegment;
                        cont = cont+1;
                    end
                end
            end
            waitbar(0.95,h,'Generating new audio...')
            finalExportPath = strcat(exportPath,'\Reduced_audio')
            wavwrite(reducedAudio,Fs,16,finalExportPath);
            cd ..
            rmdir('temp_files','s');
            close(h);
            classificationElapsedTime = toc
            sum(completeGroup)
            numSegments
            figure(1);
            subplot(211)
            plot(y);
            title('Incoming Audio')
            subplot(212)
            plot(zerosArray);
            title('Segmented Incoming Audio')
    else 
        tic;
        waitbar(0.8,h,'Classifyng...')
        load('best_nn_mixed');
        FADE_LEN = 5; % 5 second fade
        fade_samples = round(FADE_LEN.*Fs); % figure out how many samples fade is over
        fade_scale = linspace(0,1,fade_samples)'; % create fade
        
        datosEntrada = newAttributeMatrix.';
        completeGroup = net(datosEntrada);
        %Mapeo
        for i=1:length(completeGroup)
            if(completeGroup(i) <  treshold)
                completeGroup(i) = 0;
            else
                completeGroup(i) = 1;
            end
        end
        sum(completeGroup)
        numSegments
            altInit = 1
            init = 1;
            cont = 1;
            for i=1:numSegments
                if i < numSegments
                    Group = net(datosEntrada(:,i));
                     %Mapeo
                         if(Group <  treshold)
                             Group = 0;
                         else
                             Group = 1;
                         end
                   
                    if Group==1
                        segmentToFade = audioSegments(:,i);
                        sig_faded = segmentToFade;
                        sig_faded(end-fade_samples+1:end) = segmentToFade(end-fade_samples+1:end).*fade_scale(end:-1:1);
                        reducedAudio(init:segmentOnSamples*cont,1) = sig_faded;
                        zerosArray(1,altInit:segmentOnSamples*i) = segmentToFade;
                        altInit = (i*segmentOnSamples)+1;
                        init = (segmentOnSamples*cont)+1;
                        cont = cont + 1;
                    else   
                        altInit = (i*segmentOnSamples)+1;
                    end
                end
                if i == numSegments
                     Group = net(datosEntrada(:,i));
                     %Mapeo
                         if(Group <  treshold)
                             Group = 0;
                         else
                             Group = 1;
                         end
                    if Group==1
                        reducedAudio(init:init+(length(lastSegment))-1,1) = lastSegment;
                        zerosArray(1,init:init+(length(lastSegment))-1) = lastSegment;
                        cont = cont+1;
                    end
                end
            end
            waitbar(0.95,h,'Generating new audio...')
            finalExportPath = strcat(exportPath,'\Reduced_audio')
            wavwrite(reducedAudio,Fs,16,finalExportPath);
          
            cd ..
            rmdir('temp_files','s');
            close(h);
            classificationElapsedTime = toc
            sum(completeGroup)
            numSegments
              figure(1);
            subplot(211)
            plot(y);
            title('Incoming Audio')
            subplot(212)
            plot(zerosArray);
            title('Segmented Incoming Audio')
            
    end