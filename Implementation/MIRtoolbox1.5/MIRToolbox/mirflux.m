function varargout = mirflux(orig,varargin)
%   f = mirflux(x) measures distance between successive frames.
%   First argument:
%       If x is a spectrum, this corresponds to spectral flux.
%       But the flux of any other data can be computed as well.
%       If x is an audio file or audio signal, the spectral flux is
%           computed by default.
%   Optional arguments:
%       f = mirflux(x,'Frame',...) specifies the frame parameters, if x is
%           not already decomposed into frames. Default values are frame 
%           length of .2 seconds and hop factor of 1.3.
%       f = mirflux(x,'Dist',d) specifies the distance between 
%           successive  frames:                 (IF 'COMPLEX': DISTANCE = 'CITY' ALWAYS)
%           d = 'Euclidian': Euclidian distance (Default)
%           d = 'City': City-block distance
%           d = 'Cosine': Cosine distance (or normalized correlation)
%       f = mirflux(...,'Inc'): Only positive difference between frames are
%           summed, in order to focus on increase of energy solely.
%       f = mirflux(...,'Complex'), for spectral flux, combines use of
%           energy and phase information (Bello et al, 2004).
%       f = mirflux(...,'Halfwave'): performs a half-wave  rectification on
%           the result.
%       f = mirflux(...,'Median',l,C): removes small spurious peaks by
%           subtracting to the result its median filtering. The median
%           filter computes the point-wise median inside a window of length
%           l (in seconds), that  includes a same number of previous and
%           next samples. C is a scaling factor whose purpose is to
%           artificially rise the curve slightly above the steady state of
%           the signal. If no parameters are given, the default values are:
%           l = 0.2 s. and C = 1.3
%       f = mirflux(...,'Median',l,C,'Halfwave'): The scaled median
%           filtering is designed to be succeeded by the  half-wave 
%           rectification process in order to select peaks above the
%           dynamic threshold calculated with the help of the median
%           filter. The resulting signal is called "detection function"
%           (Alonso, David, Richard, 2004). To ensure accurate detection,
%           the length l of the median filter must be longer than the
%           average width of the peaks of the detection function.
%
%   (Bello et al, 2004) Juan P. Bello, Chris Duxbury, Mike Davies, and Mark
%   Sandler, On the Use of Phase and Energy for Musical Onset Detection in
%   the Complex Domain, IEEE SIGNAL PROCESSING LETTERS, VOL. 11, NO. 6,
%   JUNE 2004

        dist.key = 'Dist';
        dist.type = 'String';
        dist.default = 'Euclidean';
    option.dist = dist;
    
        inc.key = 'Inc';
        inc.type = 'Boolean';
        inc.default = 0;
    option.inc = inc;

        bs.key = 'BackSmooth';
        bs.type = 'Boolean';
        bs.default = 0;
    option.bs = bs;
    
        complex.key = 'Complex';
        complex.type = 'Boolean';
        complex.default = 0;
    option.complex = complex;
    
        gap.key = 'Gaps';
        gap.type = 'Integer';
        gap.default = 0;
        gap.keydefault = .2;
    option.gap = gap;
    
        sb.key = 'SubBand';
        sb.type = 'String';
        sb.choice = {'Gammatone','2Channels','Manual'};
        sb.default = '';
        sb.keydefault = 'Manual';
    option.sb = sb;
    
        h.key = 'Halfwave';
        h.type = 'Boolean';
        h.default = 0;
        h.when = 'After';
    option.h = h;
    
        median.key = 'Median';
        median.type = 'Integer';
        median.number = 2;
        median.default = [0 0];
        median.keydefault = [.2 1.3];
        median.when = 'After';
    option.median = median;
    
        frame.key = 'Frame';
        frame.type = 'Integer';
        frame.number = 2;
        frame.default = [.05 .5];
    option.frame = frame;
    
specif.option = option;
     
varargout = mirfunction(@mirflux,orig,varargin,nargout,specif,@init,@main);


function [x type] = init(x,option)
if ~isempty(option.sb)
    if strcmpi(option.sb,'Manual')
        x = mirfilterbank(x,'Manual',[-Inf 50*2.^(0:1:8) Inf],'Order',2);
    else
        x = mirfilterbank(x,option.sb);
    end
end
if isamir(x,'miraudio') 
    if isframed(x)
        x = mirspectrum(x);
    else
        x = mirspectrum(x,'Frame',option.frame.length.val,...
                                  option.frame.length.unit,...
                                  option.frame.hop.val,...
                                  option.frame.hop.unit,...
                                  option.frame.phase.val,...
                                  option.frame.phase.unit,...
                                  option.frame.phase.atend);
    end
end
if isa(x,'mirdesign')
    x = set(x,'Overlap',1);
end
type = 'mirscalar';


function f = main(s,option,postoption)
if iscell(s)
    s = s{1};
end
t = get(s,'Title');
if isa(s,'mirscalar') && ...
        (strcmp(t,'Harmonic Change Detection Function') || ...
         (length(t)>4 && strcmp(t(end-3:end),'flux')) || ...
         (length(t)>5 && strcmp(t(end-4:end-1),'flux')))
    if not(isempty(postoption))
        f = modif(s,postoption);
    end
else
    if isa(s,'mirspectrum')
        t = 'Spectral';
    end
    m = get(s,'Data'); 
    if option.complex
        if not(isa(s,'mirspectrum'))
            error('ERROR IN MIRFLUX: ''Complex'' option only defined for spectral flux.');
        end
        ph = get(s,'Phase');
    end
    param.complex = option.complex;
    param.inc = option.inc;
    fp = get(s,'FramePos');
    if strcmp(t,'Tonal centroid')
        t = 'Harmonic Change Detection Function';
    else
        t = [t,' flux'];
    end
    %disp(['Computing ' t '...'])
    ff = cell(1,length(m));
    newsr = cell(1,length(m));
    dist = str2func(option.dist);
    if option.bs
        [tmp s] = gettmp(s);
    end
    for h = 1:length(m)
        ff{h} = cell(1,length(m{h}));
        if not(iscell(m{h}))
            m{h} = {m{h}};
        end
        for i = 1:length(m{h})
            mi = m{h}{i};
            if size(mi,3) > 1 && size(mi,1) == 1
                mi = reshape(mi,size(mi,2),size(mi,3))';
            end
            if strcmpi(option.dist,'Gate')
                mi = mi +80; %- min(min(min(mi)));
            end
            if option.complex
                phi = ph{h}{i};
            end
            fpi = fp{h}{i};
            nc = size(mi,2);
            np = size(mi,3);
            if nc == 1
                warning('WARNING IN MIRFLUX: Flux can only be computed on signal decomposed into frames.');
                ff{h}{i} = NaN(1,1,np);
            else
                if option.complex
                    fl = zeros(1,nc-2,np);
                    for k = 1:np
                        d = diff(phi(:,:,k),2,2);
                        d = d/(2*pi) - round(d/(2*pi));
                        g = sqrt(mi(:,3:end,k).^2 + mi(:,2:(end-1),k).^2 ...
                                                  - 2.*mi(:,3:end,k)...
                                                     .*mi(:,2:(end-1),k)...
                                                     .*cos(d));
                        fl(1,:,k) = sum(g);
                    end
                    fp{h}{i} = fpi(:,3:end);
                else
                    fl = zeros(1,nc-1,np);
                    if option.gap
                        mimi = min(min(mi));
                        mi = (mi - mimi)/(max(max(mi)) - mimi);
                    end
                    for k = 1:np
                        if option.bs
                            if isempty(tmp)
                                tmp = -Inf(size(mi,1),4,np);
                            end
                            mi = [tmp mi];
                        end
                        for j = 1:nc-1
                            if option.gap
                                fl(1,j,k) = detectgap(mi(:,j,k),...
                                                      mi(:,j+1,k),...
                                                      option.gap);
                            elseif option.inc
                                if option.bs
                                    back = mi(:,j+4,k);
                                    %for l = 1:20
                                    l = 210;
                                        back(1+floor(l/2):end-ceil(l/2)) = ...
                                            max(back(1:end-l),back(1+l:end));
                                    %end
                                    mi(:,j+4,k) = back;
                                    back = max(mi(:, j:j+4 ,k), [],2);
                                    fl(1,j,k) = dist(back,mi(:,j+5,k),1);
                                else
                                    back = mi(:,j,k);
                                    fl(1,j,k) = dist(back,mi(:,j+1,k),1);
                                end
                                if 0
                                    figure%(1)
                                    %hold off
                                    plot(mi(:,j,k))
                                    hold on
                                    plot(back,'r')
                                    plot(mi(:,j+1,k),'k')
                                    %figure(2)
                                    %plot(mean(fp{h}{i}(:,1:j)),fl(1,1:j,k))
                                    %drawnow
                                end
                            else
                                fl(1,j,k) = pdist(mi(:,[j j+1],k)',...
                                                  option.dist);
                            end
                        end
                    end
                    fp{h}{i} = fpi(:,2:end);
                end
                ff{h}{i} = fl;
            end
        end
        if size(fpi,2)<2
            newsr{h} = 0;
        else
            newsr{h} = 1/(fpi(1,2)-fpi(1,1));
        end
    end
    f = mirscalar(s,'Data',ff,'FramePos',fp,'Sampling',newsr,...
                        'Title',t,'Parameter',param);
    if not(isequal(postoption,struct))
        f = modif(f,postoption);
    end
    if option.bs
        tmp = mi(:,max(1,end-4):end-1,k);
        f = settmp(f,tmp);
    end
end


function f = modif(f,option)
fl = get(f,'Data'); 
r = get(f,'Sampling');
for h = 1:length(fl)
    for i = 1:length(fl{h})
        fli = fl{h}{i};
        nc = size(fli,2);
        np = size(fli,3);
        if option.median(1)
            ffi = zeros(1,nc,np);
            lr = round(option.median(1)*r{i});
            for k = 1:np
                for j = 1:nc
                    ffi(:,j,k) = fli(:,j,k) - ...
                        option.median(2) * median(fli(:,max(1,j-lr):min(nc-1,j+lr),k));
                end
            end
            fli = ffi;
        end
        if option.h
            fli = hwr(fli);
        end
        fl{h}{i} = fli;
    end
end
f = set(f,'Data',fl);


function y = Euclidean(mi,mj,inc)
if inc
    y = sqrt(sum(max(0,(mj-mi)).^2));
else
    y = sqrt(sum((mj-mi).^2));
end


function y = City(mi,mj,inc)
if inc
    y = sum(max(0,(mj-mi)));
else
    y = sum(abs(mj-mi));
end


function y = Gate(mi,mj,inc)
y = sum( mj .* (mj>mi)); % .* (mj./mi)


function d = Cosine(r,s,inc)
nr = sqrt(r'*r);
ns = sqrt(s'*s);
if or(nr == 0, ns == 0);
    d = 1;
else
    d = 1 - r'*s/nr/ns;
end


function d = detectgap(mi,mj,thr)
d = length(find(abs(mi-mj)>thr)) / length(mi);