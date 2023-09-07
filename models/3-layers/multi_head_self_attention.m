function attention_score = multi_head_self_attention(input_encoder)

% parameter 불러오기
load('../4-embedding/embedding.mat')

% multi head <self> attention
score_1 = scaled_dot_product(input_encoder);
score_2 = scaled_dot_product(input_encoder);
score_3 = scaled_dot_product(input_encoder);
score_4 = scaled_dot_product(input_encoder);
score_5 = scaled_dot_product(input_encoder);
score_6 = scaled_dot_product(input_encoder);
score_7 = scaled_dot_product(input_encoder);
score_8 = scaled_dot_product(input_encoder);

concatenated_matrix = [score_1, score_2, score_3, score_4, score_5, score_6, score_7, score_8]

w_0 = -1 + (1+1)*rand(d_model,d_model);

attention_score = concatenated_matrix * w_0
% multi head attention
% ----------------------------------------------------

save multi_head_attention_score.mat

end