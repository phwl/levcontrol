function samples = sample_from_distribution(Beta, x_interval, N_x, V_function, pot_fun_flag, num_samples)
    % Check if the interval is valid
    if length(x_interval) ~= 2 || x_interval(1) >= x_interval(2)
        error('Invalid interval');
    end

    if isempty(N_x)
        N_x = 1e3;
    end
    
    % Generate regular deterministic intervals
    x_samples = linspace(x_interval(1), x_interval(2), 1000);
    
    % Evaluate the PDF at the regular intervals
    if pot_fun_flag
        pdf_values = exp(-Beta * V_function(x_samples));
    else
        pdf_values = V_function(x_samples);
    end
    
    % Normalize the PDF values
    pdf_values = pdf_values / trapz(x_samples, pdf_values);
    
    % Calculate the cumulative distribution function (CDF)
    cdf_values = cumtrapz(x_samples, pdf_values);
    
    % Create the gridded interpolant for the inverse CDF
    inverse_cdf = griddedInterpolant(cdf_values, x_samples, 'linear');
    
    % Sample from the inverse transform
    u = rand(1, num_samples);
    samples = inverse_cdf(u);
end
