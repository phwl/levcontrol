

classdef HILSimInputMatrix < handle

    properties (Access = private)
        % (internal) Matrix repres
        matrix_repr (3,3) double = zeros(3, 3);
    end

    methods
        
        function [this] = HILSimInputMatrix()
        end

        function [] = set_matrix(this, mat)
            this.matrix_repr = mat;
        end

        function [mat] = get_matrix(this)
            mat = this.matrix_repr;
        end

    end

end