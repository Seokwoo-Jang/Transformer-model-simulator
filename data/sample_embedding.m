function sample = sample_embedding(filename)

% txt 를 embedding vector로 변환
emb = txt_to_emb(filename);

% sample = "I am a student" 추출
i = word2vec(emb,"I");
am = word2vec(emb,"am");
a = word2vec(emb,"a");
student = word2vec(emb, "student");

sample = [i;am;a;student];

% parameter 설정
[max_len, d_model] = parameter(sample);
n_layers = 6;
n_heads = 8;
ffn_hidden = 2048;
drop_prob = 0.1;

% 작업공간 변수 저장
save parameter.mat

end