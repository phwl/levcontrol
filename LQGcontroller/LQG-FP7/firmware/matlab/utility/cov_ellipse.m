function [x,y] = cov_ellipse(C)
    % from https://www.mathworks.com/matlabcentral/fileexchange/4705-error_ellipse
    n=100; % Number of points around ellipse
    p=0:pi/n:2*pi; % angles around a circle
    
    [eigvec,eigval] = eig(C); % Compute eigen-stuff
    xy = [cos(p'),sin(p')] * sqrt(eigval) * eigvec'; % Transformation
    x = xy(:,1);
    y = xy(:,2);
end

