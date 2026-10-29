function [x_0] = find_fun_zero(fun, x_lims, tolerance, max_iter)
            %x_lims = [-1.4e-7 1.4e-7];
            %max_iter = 25;
            %tol = 1e-11;
            
            a = x_lims(1);
            b = x_lims(2);

            fa = fun(a);
            %fb = dpot_fun(b, dx_1);

            for i = 1:max_iter
                x = (a+b)/2;
                fx = fun(x);
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
            
            x_0 = (a+b)/2;
end