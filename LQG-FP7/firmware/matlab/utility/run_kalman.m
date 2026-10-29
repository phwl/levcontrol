function [yhat, xhat, innov] = run_kalman(A, B, C, K, X0, u_delay, y_data, u_data, varargin)
    N_samp = length(y_data);
    xhat = zeros(length(X0), N_samp);
    yhat = zeros(size(C,1),size(y_data,2));
    xhat(:,1) = X0;
    yhat(:,1) = C*X0;
    max_val = 1e8;
   
    if ~isempty(u_data)
        u_data = circshift(u_data, u_delay);
        if(u_delay > 0)
            u_data(1:u_delay) = 0;
        end

        for i = 2:N_samp   
            if ((numel(varargin) > 0) && (varargin{1} == true)) 
                xhat(:,i) = A*xhat(:,i-1) + B*u_data(:,i) + K*y_data(:,i);
            else
                xhat(:,i) = A*xhat(:,i-1) + B*u_data(:,i);
                xhat(:,i) = xhat(:,i) + K*(y_data(:,i) - C*xhat(:,i));
            end
            yhat(:,i) = C*xhat(:,i);
            if(any(isnan(xhat(:,i))) || any(isnan(yhat(:,i))))
                xhat(:,i) = xhat(:,i-1);
                yhat(:,i) = yhat(:,i-1);
            end
        end
    else
        for i = 2:N_samp   
            if ((numel(varargin) > 0) && (varargin{1} == true)) 
                xhat(:,i) = A*xhat(:,i-1) + K*y_data(:,i);
            else
                xhat(:,i) = A*xhat(:,i-1);
                xhat(:,i) = xhat(:,i) + K*(y_data(:,i) - C*xhat(:,i));
            end
            yhat(:,i) = C*xhat(:,i);
            if(any(isnan(xhat(:,i))) || any(isnan(yhat(:,i))))
                xhat(:,i) = xhat(:,i-1);
                yhat(:,i) = yhat(:,i-1);
            end
        end
    end

    innov = y_data - yhat;

end