function encoderF(handles)

% encoder1
% Chris Wall

rng('shuffle')

%% Parameters

plaintextString = handles.InPut.String;

% plaintextString = ['For centuries, kings, queens and generals have relied on efficient communication in order to govern their countries and command their armies. At the same time, they have all been aware of the consequences of their messages falling into the ', ... 
%     'wrong hands, revealing precious secrets to rival nations and betraying vital information to opposing forces. It was the threat of enemy interception that motivated the development of codes and ciphers: techniques for disguising a message so that ', ... 
%      'only the intended recipient can read it. The desire for secrecy has meant that nations have operated codemaking departments, which were responsible for ensuring the security of communications by inventing and implementing ' ... 
%      'the best possible codes. At the same time, enemy codebreakers have attempted to break these codes and steal secrets. Codebreakers are linguistic alchemists, a mystical tribe attempting to conjure sensible words out of meaningless symbols. ' ... 
%      'The history of codes and ciphers is the story of the centuries-old battle between codemakers and codebreakers, an intellectual arms race that has had a dramatic impact on the course of history. ' ... 
%      'In writing The Code Book, I have had two main objectives. The first is to chart the evolution of codes. Evolution is a wholly appropriate term, because the development of codes can be viewed as an evolutionary struggle. A code is constantly ' ...
%      'under attack from codebreakers. When the codebreakers have developed a new weapon that reveals a code?s weakness, then the code is no longer useful. It either becomes extinct or it evolves into a new, stronger code. In turn, this new code thrives only until the codebreakers identify its weakness, and so on. ' ... 
%      'This is similar to the situation facing, for example, a strain of infectious bacteria. The bacteria live, thrive and survive until doctors discover an antibiotic that exposes a weakness in the bacteria and kills them. The bacteria are forced to evolve and outwit the antibiotic, and if successful, they will thrive once ' ...
%      'again and reestablish themselves. History is punctuated with codes. They have decided the outcomes of battles and led to the deaths of kings and queens. I have therefore been able to call upon stories of political intrigue and tales of life and death to illustrate the key turning points in the evolutionary development of codes. The history ' ...
%      'of codes is so inordinately rich that I have been forced to leave out many fascinating stories, which in turn means that my account is not definitive. If you would like to find out more about your favorite tale or your favorite codebreaker, then I would refer you to the list of further reading. Having discussed the evolution of codes and their impact on ' ...
%      'history, the book?s second objective is to demonstrate how the subject is more relevant today than ever before. As information becomes an increasingly valuable commodity, and as the communications revolution changes society, so the process of encoding messages, known as encryption, will play an increasing role in everyday life. Nowadays our phone calls bounce off ' ...
%      'satellites and our e-mails pass through various computers, and both forms of communication can be intercepted with ease, so jeopardizing our privacy. Similarly, as more and more business is conducted over the Internet, safeguards must be put in place '];

scrambledString = plaintextString;

arrayOfLetters = 'a':'z';
arrayOfScrambledLetters = 'a':'z';

%% Encipher

for iCount = 1:26
    scrambleSpot = randi([1,26]);
    holderVariable = arrayOfScrambledLetters(iCount);
    arrayOfScrambledLetters(iCount) = arrayOfScrambledLetters(scrambleSpot);
    arrayOfScrambledLetters(scrambleSpot) = holderVariable;    
end
for iCount1 = 1:26
    arrayOfPositions = find(lower(plaintextString) == lower(arrayOfLetters(iCount1)) );
    for iCount2 = 1:length(arrayOfPositions)
        scrambledString(arrayOfPositions(iCount2)) = arrayOfScrambledLetters(iCount1);
    end
end

handles.OutPut.String = scrambledString;
