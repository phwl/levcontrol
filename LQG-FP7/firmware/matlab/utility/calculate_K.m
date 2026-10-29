function [K_out, P_out] = calculate_K(A,H,Q,R)
    
    tol = 1e-6;

    %Parameter init
    P_k_1 = zeros(size(A));
    I = eye(size(A));
    K_prev = zeros(size(I*H'));
    K_hist = [0;0];
    
    for(i = 1:4000)
        %Predict
        P_k = A*P_k_1*A' + Q;

        %Update
        K = P_k*H'/(H*P_k*H' + R);
        P_k_1 = (I - K*H)*P_k;
    
        
        rel = max(abs((K_prev-K)./K_prev));
        if(rel < tol)
            %break;
        end
        K_prev = K;
        K_hist = [K_hist, K];
    end
    K_out = K;
    P_out = P_k_1;
    %disp(['Kalman gain converged in ', num2str(i),' iterations'])
    subplot(2,1,1)
    plot(K_hist(1,:))
    subplot(2,1,2)
    plot(K_hist(2,:))
end