function [k_tip,x_tip] = find_tip(p, dx_1, x_lims, tolerance,max_iter)
            %x_lims = [-1.4e-7 1.4e-7];
            %max_iter = 25;
            %tol = 1e-11;

            dx_0_0 = 0;
            dpot_fun = @(x, dx_1_0) ((8.*p.beta_0.*exp((-2.*(dx_1_0 - x).^2)./p.delta_0^2).*(dx_1_0 - x))./p.delta_0^2 - ...
                (4.*p.alpha_0.*(dx_0_0-x).*exp(-(2.*(dx_0_0-x).^2)./p.delta_0^2))./p.delta_0^2 - ...
                (16*p.beta_0.*exp(-(2.*(dx_1_0 - x).^2)/p.delta_0^2).*(dx_1_0 - x).^3)./p.delta_0^4);
            
            ddpot_fun = @(x, dx_1_0) -((8*p.beta_0.*exp(-(2*(dx_1_0 - x).^2)/p.delta_0^2))./p.delta_0^2 - ...
                (4*p.alpha_0.*exp(-(2*x.^2)/p.delta_0^2))./p.delta_0^2 - ...
                (80*p.beta_0.*exp(-(2*(dx_1_0 - x).^2)/p.delta_0^2).*(dx_1_0 - x).^2)/p.delta_0^4 + ...
                (64*p.beta_0.*exp(-(2*(dx_1_0 - x).^2)/p.delta_0^2).*(dx_1_0 - x).^4)/p.delta_0^6 + ...
                (16*p.alpha_0.*x.^2.*exp(-(2*x.^2)/p.delta_0^2))/p.delta_0^4);
            
            a = x_lims(1);
            b = x_lims(2);

            fa = dpot_fun(a, dx_1);
            %fb = dpot_fun(b, dx_1);

            for i = 1:max_iter
                x = (a+b)/2;
                fx = dpot_fun(x, dx_1);
                if fa*fx < 0
                    b = x;
                    fb = fx;
                else
                    a = x;
                    fa = fx;
                end

                if (abs(b-a) < tolerance)
                    break
                end
            end
            
            x_tip = (a+b)/2;
            k_tip = ddpot_fun(x_tip, dx_1);
end

