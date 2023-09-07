function score = scaled_dot_product(input_encoder)
% parameter 불러오기
load('../4-embedding/embedding.mat')

% w_q, w_k, w_v : [d_model, d_tensor] = [512, 64]
w_q = -1 + (1+1)*rand(d_model,d_model/n_heads);
w_k = -1 + (1+1)*rand(d_model,d_model/n_heads);
w_v = -1 + (1+1)*rand(d_model,d_model/n_heads);

% Q, K, V: [length, d_tensor] = [4, 64]
q = input_encoder * w_q;
k = input_encoder * w_k;
v = input_encoder * w_v;

% 1. k_t 구하기 [4,64] -> [64,4]
    % transpose() or permute() 함수 사용 --> K'사용
    k_t = k';

% 2. score = Q * K_t = [4,64]*[64,4] = [4, 4]
score = q * k_t;

% 3. score = score / sqrt(d_tensor) = [4, 4]
score = score / sqrt(d_model/n_heads);

% 4. score = softmax(score) = [4, 4]
score = softmax(score);

% 4. score = score * V = [4, 4] * [4, 64] = [4,64]
score = score * v;

save attention_score.mat
end