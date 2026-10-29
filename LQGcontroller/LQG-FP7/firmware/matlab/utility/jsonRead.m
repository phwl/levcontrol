% readFromJson - Reads data from a JSON file
function data = jsonRead(filename)
    fileID = fopen(filename, 'r');
    if fileID == -1
        error('Failed to open JSON file for reading');
    end
    
    rawData = fread(fileID, Inf, '*char');
    data = jsondecode(strtrim(rawData'));
    
    fclose(fileID);
end