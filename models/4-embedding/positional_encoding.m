pofunction PE_sample = positional_encoding(sample)
% parameter 불러오기
load('../../data/parameter.mat')

% 0으로 구성된 임베딩 벡터와 행렬 생성
PE_vec = zeros(1 , d_model);
PE = zeros(max_len, d_model);

% pos: 임베딩벡터의 위치 -> 행 인덱스 추출
pos = (1:max_len)';

% i: 임베딩 벡터내의 차원의 인덱스 -> 열 인덱스 추출
i = 1:d_model;


% i를 짝수와 홀수로 구분
even_i = i(mod(i,2)==0);
odd_i = i(mod(i,2)~=0);

for pos_n = 1: max_len

    pos_n=pos(pos_n,:);

    PE_vec(mod(i,2) == 0) = sin(pos_n./(10000.^(even_i/d_model))); % 짝수일때 계산
    PE_vec(mod(i,2) ~= 0) = cos(pos_n./(10000.^(odd_i/d_model))); % 홀수일때 계산
    
    PE(pos_n,:) = PE_vec; % 계산한 벡터를 encoding 행렬의 각 행에 입력
end

PE_sample = PE + sample;

% PE_sample plot
plot(pos, PE_sample)
xlabel('pos')
ylabel('PE_sample')
title('Positional Encoding')

end