function data_out = chunked_histograms(data, chunk_size, num_bins, sampling_frequency, generate_gif)
    % data: Input vector of time-domain data or structure with "data" field
    %       or a structure array with "data" field
    % chunk_size: Size of each chunk for which the histogram will be computed
    % num_bins: Number of bins for the histogram
    % sampling_frequency: Frequency at which data is sampled (samples per second)
    % generate_gif: Set to true if you want to generate a GIF sequence of histograms

    % Check if the input is a structure array
    is_struct_array = false;
    if isstruct(data) && numel(data) > 1 && isfield(data, 'data')
        is_struct_array = true;
    end

    % If data is a structure array, repeat the procedure for each structure
    if is_struct_array
        data_out = data;
        for i = 1:numel(data)
            data_out(i).histograms = [];
            data_out(i).edges = [];
            data_out(i).time_stamps = [];
            data_out(i).mean_values = [];
            data_out(i).medians = [];
            data_out(i).std_values = []; % New field for standard deviation
            data_out(i).skewness_values = [];
            %data_out(i).kurtosis_values = [];
            data_out(i).mean_z_values = [];
            data_out(i).median_z_values = [];
            data_out(i).std_z_values = []; % New field for z-values of standard deviation
            data_out(i).skewness_z_values = [];
            data_out(i) = chunked_histograms(data(i), chunk_size(i), num_bins, data_out(i).fs, generate_gif);
        end
        return;
    end

    % If input is a single structure, extract the data field
    if isstruct(data) && isfield(data, 'data')
        data_vec = data.data;
        data_out = data; % Create a copy of the input structure
    else
        data_vec = data;
        data_out = struct(); % Create a new structure to store results
    end

    % Calculate the number of chunks
    num_chunks = floor(length(data_vec) / chunk_size);

    % Initialize fields in the structure to store results
    data_out.histograms = zeros(num_chunks, num_bins);
    data_out.edges = linspace(min(data_vec), max(data_vec), num_bins+1); % Same edges for all chunks
    data_out.time_stamps = zeros(num_chunks, 1);
    data_out.mean_values = zeros(num_chunks, 1);
    data_out.medians = zeros(num_chunks, 1);
    data_out.std_values = zeros(num_chunks, 1); % New field for standard deviation
    data_out.skewness_values = zeros(num_chunks, 1);
    %data_out.kurtosis_values = zeros(num_chunks, 1);

    % Calculate histograms and statistics for each chunk
    for i = 1:num_chunks
        chunk_start = (i - 1) * chunk_size + 1;
        chunk_end = min(i * chunk_size, length(data_vec));
        chunk_data = data_vec(chunk_start:chunk_end);

        % Compute histogram for the current chunk using histcounts with fixed edges and normalize to PDF
        [hist_counts, edges] = histcounts(chunk_data, data_out.edges, 'Normalization', 'pdf');
        data_out.histograms(i, :) = hist_counts;

        % Calculate the time stamp for the current chunk (time of last data point considered)
        data_out.time_stamps(i) = (chunk_end - 1) / sampling_frequency;

        % Calculate mean, median, and standard deviation for the current chunk
        data_out.mean_values(i) = mean(chunk_data);
        data_out.medians(i) = median(chunk_data);
        data_out.std_values(i) = std(chunk_data); % New field for standard deviation
        data_out.skewness_values(i) = skewness(chunk_data);
        %data_out.kurtosis_values(i) = data_out.mean_values(i).^4/data_out.std_values(i).^4;%kurtosis(chunk_data);
    end

    % Compute the z-values for mean, median, standard deviation, and skewness for the entire histogram array
    Z = data_out.histograms';
    data_out.mean_z_values = interp2(data_out.time_stamps, edges(1:end-1), Z, data_out.time_stamps, data_out.mean_values)';
    data_out.median_z_values = interp2(data_out.time_stamps, edges(1:end-1), Z, data_out.time_stamps, data_out.medians)';
    data_out.std_z_values = interp2(data_out.time_stamps, edges(1:end-1), Z, data_out.time_stamps, data_out.std_values)'; % New field for z-values of standard deviation
    data_out.skewness_z_values = interp2(data_out.time_stamps, edges(1:end-1), Z, data_out.time_stamps, data_out.skewness_values)';



     % Generate GIF sequence of histograms if requested
    if generate_gif
        gif_filename = sprintf('histogram_sequence_%d.gif', i);
        h = figure('Visible','off');
        for i = 1:num_chunks
            bar(linspace(min(data_out.data), max(data_out.data), num_bins), data_out.histograms(i, :));
            title(sprintf('Histogram of Chunk %d', i));
            xlabel('Value');
            ylabel('Frequency');
            %drawnow;

            % Capture the figure as an image for the GIF
            frame = getframe(h);
            im = frame2im(frame);
            [imind, cm] = rgb2ind(im, 256);

            % Write the image to the GIF file
            if i == 1
                imwrite(imind, cm, gif_filename, 'gif', 'Loopcount', inf);
            else
                imwrite(imind, cm, gif_filename, 'gif', 'WriteMode', 'append');
            end
        end
        close(h);
        disp('GIF sequence generated.');
    end
end