function emb = txt_to_emb(filename)
% 'filename.txt' 임베딩하기
str = extractFileText(filename);
textData = split(str,newline);
documents = tokenizedDocument(textData);

% dimension, mincount, epoch 설정
emb = trainWordEmbedding(documents, ...
    'Dimension',512, ...
    'MinCount',3, ...
    'NumEpochs',10);

end