function letterFrequencyDecryptionF(handles)

% letterFrequencyDecryption
% Chris Wall

%% Wait Bar

hwb = waitbar(0,'Decoding...','Name','Progress');

%% Variables

% String being scanned

encodedString = handles.InPut.String;

% encodedString = ['For centuries, kings, queens and generals have relied on efficient communication in order to govern their countries and command their armies. At the same time, they have all been aware of the consequences of their messages falling into the ', ... 
%     'wrong hands, revealing precious secrets to rival nations and betraying vital information to opposing forces. It was the threat of enemy interception that motivated the development of codes and ciphers: techniques for disguising a message so that ', ... 
%     'only the intended recipient can read it. The desire for secrecy has meant that nations have operated codemaking departments, which were responsible for ensuring the security of communications by inventing and implementing ' ... 
%     'the best possible codes. At the same time, enemy codebreakers have attempted to break these codes and steal secrets. Codebreakers are linguistic alchemists, a mystical tribe attempting to conjure sensible words out of meaningless symbols. ' ... 
%     'The history of codes and ciphers is the story of the centuries-old battle between codemakers and codebreakers, an intellectual arms race that has had a dramatic impact on the course of history. ' ... 
%     'In writing The Code Book, I have had two main objectives. The first is to chart the evolution of codes. Evolution is a wholly appropriate term, because the development of codes can be viewed as an evolutionary struggle. A code is constantly ' ...
%     'under attack from codebreakers. When the codebreakers have developed a new weapon that reveals a code?s weakness, then the code is no longer useful. It either becomes extinct or it evolves into a new, stronger code. In turn, this new code thrives only until the codebreakers identify its weakness, and so on. ' ... 
%     'This is similar to the situation facing, for example, a strain of infectious bacteria. The bacteria live, thrive and survive until doctors discover an antibiotic that exposes a weakness in the bacteria and kills them. The bacteria are forced to evolve and outwit the antibiotic, and if successful, they will thrive once ' ...
%     'again and reestablish themselves. History is punctuated with codes. They have decided the outcomes of battles and led to the deaths of kings and queens. I have therefore been able to call upon stories of political intrigue and tales of life and death to illustrate the key turning points in the evolutionary development of codes. The history ' ...
%     'of codes is so inordinately rich that I have been forced to leave out many fascinating stories, which in turn means that my account is not definitive. If you would like to find out more about your favorite tale or your favorite codebreaker, then I would refer you to the list of further reading. Having discussed the evolution of codes and their impact on ' ...
%     'history, the book?s second objective is to demonstrate how the subject is more relevant today than ever before. As information becomes an increasingly valuable commodity, and as the communications revolution changes society, so the process of encoding messages, known as encryption, will play an increasing role in everyday life. Nowadays our phone calls bounce off ' ...
%     'satellites and our e-mails pass through various computers, and both forms of communication can be intercepted with ease, so jeopardizing our privacy. Similarly, as more and more business is conducted over the Internet, safeguards must be put in place '];

% If I want to scan user input
% x = input('Input the words you would like scanned', 's')

% Used later to create an array of letters
variableNumber=0;

% Calculates the length of the string being scanned
stringLength = length(encodedString);

%% Scan

Counter = 0;

for scanLetter = 'a':'z'
    Counter = Counter + 1;
    waitbar(Counter/26,hwb);
    
    % Sets letterCount = to zero for later purposes
    letterCount = 0;
    
    for iCount = 1:stringLength % Counts all the entries in the string 'x'
        compareValue= encodedString(iCount);
        if strcmpi(compareValue,scanLetter)
            % disp(['letter number ',num2str(iCount),' is ',scanLetter,'.'])
            letterCount=letterCount + 1 ;
            
        else
        end
        
    end
    
    
    % A simpler way to count the amount of a letter
    % totalAmount = count(x,'e');
    
    % A way of counting the amount of a letter without using the count function
    totalAmount = letterCount;
    
    disp(['There are ',num2str(totalAmount), ' ',num2str(scanLetter), '''s in the input text.'])
    
    variableNumber= variableNumber +1;
    arrayOfLetters(variableNumber) = scanLetter;
    
    % arrayOfVariables is the array of numbers, the counts of all letters
    arrayOfVariables(variableNumber) = letterCount;
    
    % Used the line below to visualize incase of bugs
    % disp(arrayOfVariables(variableNumber))
    
    
end

% Sums all the amounts of each letter in the input
totalAmountOfLetters = sum(arrayOfVariables);

disp(['There are ',num2str(totalAmountOfLetters),' letters in the input.'])

% Calculates percents of each letter into a new array
percentOfEachLetter = 100.* (arrayOfVariables ./ totalAmountOfLetters) ;

axes(handles.plotAxes)
bar(percentOfEachLetter)

% Changes the height of the bar graph to the max value + 1
axis([0,27,0,max(percentOfEachLetter)+1])
xlabel('A   B   C  D  E   F  G  H   I   J   K  L   M  N  O  P  Q  R  S   T  U  V   W  X  Y  Z ')
ylabel('Letter Frequencies (Percent)');
handles.plotAxes.XColor = 'white';
handles.plotAxes.YColor = 'white';
handles.plotAxes.GridColor = 'black';
handles.plotAxes.MinorGridColor = 'black';
grid on
grid minor


%% Frequency assignment

arrayOfDeterminedLetters = arrayOfLetters;
fakePercentOfEachLetter = percentOfEachLetter;
arrayOfKnownLetterFrequencies = ['e','t','a','o','i','n','s','r','h','l','d','c','u','m','f','p','g','w','y','b','v','k','x','j','q','z'];

for iCount = 1:26
    maxLetterFrequency = max(fakePercentOfEachLetter);
    for iCount2 = 1:26
        if maxLetterFrequency == fakePercentOfEachLetter(iCount2)
            indexForFrequencies = iCount2;
        end
    end
    fakePercentOfEachLetter(indexForFrequencies) = -1;
    arrayOfDeterminedLetters(indexForFrequencies) = arrayOfKnownLetterFrequencies(iCount);
    for iCount3 = 1:26
        if strcmpi(arrayOfKnownLetterFrequencies(iCount),arrayOfLetters(iCount3))
            arrayOfSomething(iCount3) = arrayOfLetters(indexForFrequencies);
        end
    end
end

decodedString = encodedString;

for iCountLetter = 1:26
    for iCount = 1:stringLength
        if strcmpi(encodedString(iCount),arrayOfLetters(iCountLetter))
            decodedString(iCount) = arrayOfDeterminedLetters(iCountLetter);
            
        end
    end
end

for i = 1:26
    handles.Translation.String(1+2*(i-1)) = upper(arrayOfDeterminedLetters(i));
end

close(hwb);

% disp(decodedString)
handles.OutPut.String = decodedString;