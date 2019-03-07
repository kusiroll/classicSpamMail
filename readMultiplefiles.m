function X = readMultiplefiles()
pathstr = 'C:\Users\kusir\Documents\Kusiroll_Academy\UH\COURSERA_UNIVERSITY\SPRING_2019\MACHINE_LEARNING_COURSE\machine-learning-ex6\ex6\20050311_spam_2.out\';
textFiles=dir([pathstr '*.txt']);
for k = 1:length(textFiles)
    file_contents = readFile(textFiles(k).name);
    word_indices  = processEmail(file_contents);
    features      = emailFeatures(word_indices);
    X(k,:) = features;
end