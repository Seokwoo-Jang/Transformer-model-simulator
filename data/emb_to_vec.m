function vec = emb_to_vec(emb)

% 임베딩한 벡터 .vec파일로 저장
filename = "embedding_vector.vec";
writeWordEmbedding(emb,filename)

vec = readWordEmbedding(filename);
end