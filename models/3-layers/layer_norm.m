function norm = layer_norm(ffn)

load('position_wise_feed_forward.mat')

%Residual Connection (잔차 연결 추가해야함)
norm = normalize(ffn)

save layer_norm.mat

end