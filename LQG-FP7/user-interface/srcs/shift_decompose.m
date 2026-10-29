% Decomposes the given matrix into a shift matrix, that contains the number
% of bitshifts that need to be done before multiplication of each RHS
% element with the matrix and a residue matrix, which represents the
% residual multiplication factors of the given matrix to achive, in the
% end, the identity
%  M = M_residue .* (2 .^ -M_shift)

function [M_shift, M_residue] = shift_decompose(M_orig, shift_multiple, shift_min, shift_max)
    [N, M] = size(M_orig);

    M_shift = zeros(N, M);
    M_residue = zeros(N, M);

    for i = 1:N
        for j = 1:M
            % Check special case: M(i,j) == 0 -> log2 would go towards
            % infinity, so we just do not shift in this case (since it
            % would not change the result anyways)
            if abs(M_orig(i,j)) < eps
                M_shift(i,j) = 0;
                M_residue(i,j) = 0.0;
                continue;
            end

            % Calcualte how many shifts would be required to fit the
            % residue into the range (1,2)
            lg2_ceil = ceil(log2(abs(M_orig(i,j))));

            % With the given shift multiple, calculate how many shifts
            % should be done and the resulting residue factor.
            shift = floor(lg2_ceil / shift_multiple);
            if nargin >= 3 && ~isempty(shift_min) && -shift<shift_min
                shift = -shift_min;
            end
            if nargin >= 4 && ~isempty(shift_max) && -shift>shift_max
                shift = -shift_max;
            end
            residue = M_orig(i,j) * 2^(-shift * shift_multiple);

            M_shift(i,j) = -shift;
            M_residue(i,j) = residue;
        end
    end
end