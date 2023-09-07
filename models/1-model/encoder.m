% 0st: train data 선택/ parameter 불러오기
filename = "../../data/train_en.txt";
load('../../data/parameter.mat')

% 1st : train data 학습 후 sample("I am a student") 추출하여 임베딩
sample = sample_embedding(filename)

% 2st: 추가 embedding 작업 (Positional Encoding + token embedding)
input_encoder = embedding(sample)

% 3st: 전처리된 sample을 encoder layer에 통과시킴 X 레이어 갯수(6개)만큼 반복
for i = 1: n_layers
output_encoder = encoder_layer(input_encoder)
end

%{

개선해야할 것

- Residual Connection(잔차 연결) -> 함수 안에 서브함수 넣기

- Normalize 구체화 필요

- Bias(편향값) 연구 필요

- pad token 추가: 단어 시작과 끝을 표현하기 위함

- encoder layer를 n_layers(6개)만큼 쌓은 후 decoder와 유기적으로 연결하기 위한 알고리즘 구축


%}