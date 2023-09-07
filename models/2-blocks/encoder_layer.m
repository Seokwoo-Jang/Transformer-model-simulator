function output_encoder = encoder_layer(input_encoder)

load('../4-embedding/embedding.mat')

% MHSA
attention_score = multi_head_self_attention(input_encoder);

% FFN
ffn = position_wise_feed_forward(attention_score);

% layer normaliztion
norm = layer_norm(ffn);

output_encoder = norm;

save encoder_layer.mat

end