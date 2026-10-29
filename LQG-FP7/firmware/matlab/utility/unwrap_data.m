function [data_in] = unwrap_data(data_in, max_allowed_dx)
%UNWRAP_DATA Summary of this function goes here
%   Detailed explanation goes here
    
    start_idx = [];
    end_idx = 1;

    dx = diff(data_in);
    for i = 1:(length(data_in)-1)
        if(abs(dx(i)) > max_allowed_dx)
            if isempty(start_idx)
                start_idx = i;
            else
                end_idx = i;
                data_in((start_idx+1):end_idx) = data_in((start_idx+1):end_idx)-dx(start_idx);
                start_idx = [];
            end
        end
    end
end

