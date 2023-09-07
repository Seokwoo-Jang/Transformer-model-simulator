function [max_len, d_model] = parameter(sample)
x= size(sample);
max_len = x(1);
d_model = x(2);

end