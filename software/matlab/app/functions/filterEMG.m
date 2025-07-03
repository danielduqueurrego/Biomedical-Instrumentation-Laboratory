function filteredSignal = filterEMG(rawSignal, fs)
% filterEMG - Applies a bandpass filter to EMG data
%
% Syntax:
%   filteredSignal = filterEMG(rawSignal, fs)
%
% Inputs:
%   rawSignal - vector, raw EMG signal
%   fs - scalar, sampling frequency in Hz
%
% Output:
%   filteredSignal - vector, filtered EMG signal

% Define filter range
low_cutoff = 20;  % Hz
high_cutoff = 450; % Hz

% Design bandpass filter
[b, a] = butter(4, [low_cutoff high_cutoff] / (fs/2), 'bandpass');

% Apply filter
filteredSignal = filtfilt(b, a, rawSignal);

end
