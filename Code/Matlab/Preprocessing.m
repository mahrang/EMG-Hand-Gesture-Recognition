    % gather training data
    rawtot = [];
    gesttot = [];
    twidth = 0.2; % percentage of data to throw out from each end of gesture segment
    
    % generate labels for the data based on commands during recording
    gestlabel = genlabels(p,raw,twidth); 
     % append to overall record
     rawtot = [rawtot raw];
     gesttot = [gesttot gestlabel];

    rawtrain = rawtot; % concatenated raw data from selected training trials
    gestlabeltrain = gesttot; % gesture labels for data, with -1 being unused
    
 % load preprocessing filter (generated using genfilter.m)
    load('prefilter');
    % convolve the first two filters as they are used in a single step
    % before taking the absolute value
    a1 = conv(a1, a2);
    b1 = conv(b1, b2);
    a2 = a3;
    b2 = b3;
    
    % remove unused channels from recording
    rawtrain = rawtrain(:,1:64);
    datalen = size(rawtrain,1);
    
    window = rawtrain();
    % preprocess the data
    window = filtfilt(b1,a1,window);
    window1 = abs(window);
    window2 = filtfilt(b2,a2,window1); %moving average filter with window size of 100
        
    % find minima and maxima of each channel for normalization
    lower = 100.*ones(1,64);
    upper = zeros(1,64);
    for k = 1:64
        lower(k) = min(window2(find(gestlabeltrain ~= -1),k));
        upper(k) = max(window2(find(gestlabeltrain ~= -1),k));
    end

    
    HDscale = 10;
    datatrain = rawtrain().*HDscale;

    d = datatrain;
    g = gestlabeltrain;
    datalen = length(g);
    
    window3 = d();
    window3 = filtfilt(b1,a1,window3);
    window3 = abs(window3);
    window3 = filtfilt(b2,a2,window3); %moving average filter with size windowsize
    % normalize the window
    for k = 1:64
       window3(:,k) = (window3(:,k)-lower(k))./(upper(k)-lower(k));  %x_train
    end

    gestlabel_column = gestlabel.' %y_train