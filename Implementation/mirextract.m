function values = mirextract(filename, frameSize, hopSize )
% Hace la extracci?n de caracter?sticas de un archivo de audio. 
%
% VALUES: Un arreglo de features con media y varianza... y ya.
%
% FILENAME : Nombre del archivo
% FRAMESIZE : Longitud de cada frame, en samples
% HOPSIZE : Hop-size, en samples

% ESPECTROGRAMA


s = mirspectrum( filename, 'Frame',  frameSize, 'sp', hopSize , 'sp' ); % Hacer un espectro con largo del frame 1024, 512 de hop-size, 
Fs = get(s, 'Sampling');
Fs = Fs{1};

% EXTRACCI?N DE FEATURES

% ---------- MFCCs: ----------
numMFCCs = 15;

mfccs = mirmfcc(s, 'Rank', [1:numMFCCs]);
%mfccs = mfccs{1}{1};

% Plotear las serie de tiempo de los mfccs

values = get(mfccs, 'Data');
values = values{1}{1}; % As? vienen encapsulados, culpa m?a no es...

% ----------- CHROMA ---------

%chroma = 

%plotInRange(values, Fs, hopSize, [0 10], [ 1: numMFCCs ] );

end

