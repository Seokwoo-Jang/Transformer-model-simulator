function ffn = position_wise_feed_forward(attention_score)

% parameter 불러오기
load('multi_head_attention_score.mat')

% FFN
linear1 = -1 + (1+1)*rand(d_model, ffn_hidden);
linear2 = -1 + (1+1)*rand(ffn_hidden, d_model);

% 첫번째 은닉층
ffn_1 = attention_score * linear1 

%ReLU
ffn_2 = ffn_1
ffn_2(ffn_2<0) = 0

% 두번째 은닉층
ffn_3 = ffn_2 * linear2;

ffn = ffn_3

save('position_wise_feed_forward.mat')
end

