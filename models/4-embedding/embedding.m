function input_encoder = embedding(sample)
% paremeter 불러오기
load('../../data/parameter.mat')

% token embedding


% positional encoding
PE_sample = positional_encoding(sample);

input_encoder = PE_sample; % 추후에 (+token embedding) 해야함

save embedding.mat

end