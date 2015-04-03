clear all
clc
location = '/Users/Sergio/Documents/MATLAB/clasificacion'
mirwaitbar(0);
mirverbose(0);
cd 'C:\Users\spcDesktop\Desktop\Audio_Segments';
%cd '/Users/Sergio/Documents/Archivo/Maestria/Disco Duro nov 2010/MATLAB/Maestria/Tesis/Database/genre';

databaseFolder = pwd
folders = dir;

% PARAMETROS DEL AN?LISIS ESPECTRAL

frameSize = 2048;
hopSize = 1024;

% N?mero de atributos:

numAttributes = 138; %% Atenci?n, esto depende de lo que pase en mirextract. %Mean and variance.

attributeMatrix = zeros(1000, numAttributes);

fileCounter = 0;

for i = 3: length( folders ) % Los dos primero son . y ..
    
    genreFolder = folders(i).name;
    
    if folders(i).isdir
        
        filenames = dir( genreFolder );
        
        for j = 3: length(filenames)
            
            audioFile =  fullfile( databaseFolder, genreFolder, filenames(j).name )
            
   
            [a, b, ext] = fileparts(audioFile)
            
             
            if strcmp(ext, '.wav') % Revisamos si tiene la extensi?n correcta:
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
               
               %Nombre de los atributos. OJO! esto est? hecho a mano, Data deber?a
               %contenerlos.
               
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
               array_atributos(1, 138 ) = cellstr( '138');;
               array_atributos(1, num_atributos + 1) = cellstr( '139');
               
               
               for i = 1: length(Data)
                   
                   array_atributos( i + 1, 1 : num_atributos ) = num2cell(Data(i).atributos);
                   array_atributos( i + 1, num_atributos + 1) =  cellstr(Data(i).clase);
                   
               end


               
                
            end
        end
    end
end

%cell2csv('datos.csv',array_atributos,',');

