function jsonWrite(fileID, data, varargin)
    fseek(fileID, 0, 'bof');
    existingData = fread(fileID, Inf, '*char');
    existingData = strtrim(existingData');
    
    if ~isempty(existingData)
        existingJson = jsondecode(existingData);
        fields = fieldnames(data);
        
        for i = 1:length(fields)
            field = fields{i};
            if isfield(existingJson, field)
                prompt = sprintf('Field "%s" already exists with value "%s". Do you want to overwrite it? (yes/no): ', field, existingJson.(field));
                answer = input(prompt, 's');
                if ~strcmpi(answer, 'yes')
                    fclose(fileID);
                    error('User chose not to overwrite existing field');
                end
            end
        end
    end
    
    fseek(fileID, 0, 'eof');
    fprintf(fileID, jsonencode(data));
    fprintf(fileID, '\n');
end
