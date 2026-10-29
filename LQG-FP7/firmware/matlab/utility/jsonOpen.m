% openJson - Opens a JSON file for reading and writing
function fileID = jsonOpen(filename)
    fileID = fopen(filename, 'r+');
    if fileID == -1
        fileID = fopen(filename, 'w+');
    end
    if fileID == -1
        error('Failed to open JSON file');
    end
end

