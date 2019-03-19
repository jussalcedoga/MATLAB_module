premisas = [0 0;  0 1; 1 0; 1 1];
AND_column = and(premisas(:, 1), premisas(:, 2));
OR_column = or(premisas(:, 1), premisas(:, 2));
AND_matrix = [premisas, AND_column]
OR_matrix = [premisas, OR_column]

premisas_ = [0; 1];
NOT_column = not(premisas_(:, 1));
NOT_matrix = [premisas_ NOT_column]
