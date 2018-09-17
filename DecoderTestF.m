function DecoderTestF(handles)

%% Decoder Test
% DecoderTest.m

% This program is a rough draft for decoding monoalphabetic
% substitution cipher encrypted messages.

% Author: Ryker McIntyre
% 2/23/2017

%% monoalphabeticDecryption1.m
% complex scan
% Chris Wall

%% Variables

encodedString = handles.InPut.String;

% String being scanned

% encodedString = 'Fli xvmgfirvh, prmth, jfvvmh zmw tvmvizoh szev ivorvw lm vuurxrvmg xlnnfmrxzgrlm rm liwvi gl tlevim gsvri xlfmgirvh zmw xlnnzmw gsvri zinrvh. Ag gsv hznv grnv, gsvb szev zoo yvvm zdziv lu gsv xlmhvjfvmxvh lu gsvri nvhhztvh uzoormt rmgl gsv dilmt szmwh, ivevzormt kivxrlfh hvxivgh gl irezo mzgrlmh zmw yvgizbrmt ergzo rmulinzgrlm gl lkklhrmt ulixvh. Ig dzh gsv gsivzg lu vmvnb rmgvixvkgrlm gszg nlgrezgvw gsv wvevolknvmg lu xlwvh zmw xrksvih: gvxsmrjfvh uli wrhtfrhrmt z nvhhztv hl gszg lmob gsv rmgvmwvw ivxrkrvmg xzm ivzw rg. Tsv wvhriv uli hvxivxb szh nvzmg gszg mzgrlmh szev lkvizgvw xlwvnzprmt wvkzignvmgh, dsrxs dviv ivhklmhryov uli vmhfirmt gsv hvxfirgb lu xlnnfmrxzgrlmh yb rmevmgrmt zmw rnkovnvmgrmt gsv yvhg klhhryov xlwvh. Ag gsv hznv grnv, vmvnb xlwvyivzpvih szev zggvnkgvw gl yivzp gsvhv xlwvh zmw hgvzo hvxivgh. Clwvyivzpvih ziv ormtfrhgrx zoxsvnrhgh, z nbhgrxzo giryv zggvnkgrmt gl xlmqfiv hvmhryov dliwh lfg lu nvzmrmtovhh hbnyloh. Tsv srhglib lu xlwvh zmw xrksvih rh gsv hglib lu gsv xvmgfirvh-low yzggov yvgdvvm xlwvnzpvih zmw xlwvyivzpvih, zm rmgvoovxgfzo zinh izxv gszg szh szw z wiznzgrx rnkzxg lm gsv xlfihv lu srhglib. Im dirgrmt Tsv Clwv Bllp, I szev szw gdl nzrm lyqvxgrevh. Tsv urihg rh gl xszig gsv velofgrlm lu xlwvh. Eelofgrlm rh z dsloob zkkilkirzgv gvin, yvxzfhv gsv wvevolknvmg lu xlwvh xzm yv ervdvw zh zm velofgrlmzib hgifttov. A xlwv rh xlmhgzmgob';

% encodedString = encriptedMessage;

% encodedString = 'nto fhgueoihm, aigxm, cehhgm bgr xhghoblm vbzh ohlihr tg hnnifihgu ftwwegifbuitg ig torho ut xtzhog uvhio fteguoihm bgr ftwwbgr uvhio bowihm. bu uvh mbwh uiwh, uvhk vbzh bll dhhg bsboh tn uvh ftgmhcehgfhm tn uvhio whmmbxhm nblligx igut uvh sotgx vbgrm, ohzhbligx qohfitem mhfohum ut oizbl gbuitgm bgr dhuobkigx ziubl igntowbuitg ut tqqtmigx ntofhm. iu sbm uvh uvohbu tn hghwk iguhofhquitg uvbu wtuizbuhr uvh rhzhltqwhgu tn ftrhm bgr fiqvhom: uhfvgicehm nto rimxeimigx b whmmbxh mt uvbu tglk uvh iguhgrhr ohfiqihgu fbg ohbr iu. uvh rhmioh nto mhfohfk vbm whbgu uvbu gbuitgm vbzh tqhobuhr ftrhwbaigx rhqbouwhgum, svifv shoh ohmqtgmidlh nto hgmeoigx uvh mhfeoiuk tn ftwwegifbuitgm dk igzhguigx bgr iwqlhwhguigx uvh dhmu qtmmidlh ftrhm. bu uvh mbwh uiwh, hghwk ftrhdohbahom vbzh buuhwquhr ut dohba uvhmh ftrhm bgr muhbl mhfohum. ftrhdohbahom boh ligxeimuif blfvhwimum, b wkmuifbl uoidh buuhwquigx ut ftgyeoh mhgmidlh storm teu tn whbgigxlhmm mkwdtlm. uvh vimutok tn ftrhm bgr fiqvhom im uvh mutok tn uvh fhgueoihm-tlr dbuulh dhushhg ftrhwbahom bgr ftrhdohbahom, bg iguhllhfuebl bowm obfh uvbu vbm vbr b robwbuif iwqbfu tg uvh fteomh tn vimutok. ig soiuigx uvh ftrh dtta, i vbzh vbr ust wbig tdyhfuizhm. uvh niomu im ut fvbou uvh hztleuitg tn ftrhm. hztleuitg im b svtllk bqqotqoibuh uhow, dhfbemh uvh rhzhltqwhgu tn ftrhm fbg dh zihshr bm bg hztleuitgbok muoexxlh. b ftrh im ftgmubgulk egrho buubfa notw ftrhdohbahom. svhg uvh ftrhdohbahom vbzh rhzhltqhr b ghs shbqtg uvbu ohzhblm b ftrh?m shbaghmm, uvhg uvh ftrh im gt ltgxho emhnel. iu hiuvho dhftwhm hjuigfu to iu hztlzhm igut b ghs, muotgxho ftrh. ig ueog, uvim ghs ftrh uvoizhm tglk eguil uvh ftrhdohbahom irhguink ium shbaghmm, bgr mt tg. uvim im miwilbo ut uvh miuebuitg nbfigx, nto hjbwqlh, b muobig tn ignhfuitem dbfuhoib. uvh dbfuhoib lizh, uvoizh bgr meozizh eguil rtfutom rimftzho bg bguidituif uvbu hjqtmhm b shbaghmm ig uvh dbfuhoib bgr aillm uvhw. uvh dbfuhoib boh ntofhr ut hztlzh bgr teusiu uvh bguidituif, bgr in meffhmmnel, uvhk sill uvoizh tgfh bxbig bgr ohhmubdlimv uvhwmhlzhm. vimutok im qegfuebuhr siuv ftrhm. uvhk vbzh rhfirhr uvh teuftwhm tn dbuulhm bgr lhr ut uvh rhbuvm tn aigxm bgr cehhgm. i vbzh uvhohntoh dhhg bdlh ut fbll eqtg mutoihm tn qtliuifbl iguoixeh bgr ublhm tn linh bgr rhbuv ut illemuobuh uvh ahk ueogigx qtigum ig uvh hztleuitgbok rhzhltqwhgu tn ftrhm. uvh vimutok tn ftrhm im mt igtorigbuhlk oifv uvbu i vbzh dhhg ntofhr ut lhbzh teu wbgk nbmfigbuigx mutoihm, svifv ig ueog whbgm uvbu wk bfftegu im gtu rhnigiuizh. in kte stelr liah ut nigr teu wtoh bdteu kteo nbztoiuh ublh to kteo nbztoiuh ftrhdohbaho, uvhg i stelr ohnho kte ut uvh limu tn neouvho ohbrigx. vbzigx rimfemmhr uvh hztleuitg tn ftrhm bgr uvhio iwqbfu tg vimutok, uvh dtta?m mhftgr tdyhfuizh im ut rhwtgmuobuh vts uvh medyhfu im wtoh ohlhzbgu utrbk uvbg hzho dhntoh. bm igntowbuitg dhftwhm bg igfohbmigxlk zblebdlh ftwwtriuk, bgr bm uvh ftwwegifbuitgm ohztleuitg fvbgxhm mtfihuk, mt uvh qotfhmm tn hgftrigx whmmbxhm, agtsg bm hgfokquitg, sill qlbk bg igfohbmigx otlh ig hzhokrbk linh. gtsbrbkm teo qvtgh fbllm dtegfh tnn mbuhlliuhm bgr teo h-wbilm qbmm uvotexv zboitem ftwqeuhom, bgr dtuv ntowm tn ftwwegifbuitg fbg dh iguhofhquhr siuv hbmh, mt yhtqboripigx teo qoizbfk. miwilbolk, bm wtoh bgr wtoh demighmm im ftgrefuhr tzho uvh iguhoghu, mbnhxeborm wemu dh qeu ig qlbfh ';

% encodedString = ['For centuries, kings, queens and generals have relied on efficient communication in order to govern their countries and command their armies. At the same time, they have all been aware of the consequences of their messages falling into the ', ... 
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

% encodedString = ['From the outset, University founder Fr. Edward Sorin emphasized recreational activity when establishing Notre Dame in 1842.  In 1847 he turned his attention to constructing ?the last word in recreational facilities?, complementing an environment conducive to hunting, fishing, swimming, and skating. The extensive grounds fielded games of football in its then earliest form, cricket and other games to ?invigorate the body and recreate the mind.? ',...
%     'Recreation during the early years enabled students to develop close bonds with the priests, and especially the Irish brothers, who spoke the language more fluently.  Readily accessible to students, the brothers acted not only as coordinators and officials, but served the role of counselor.  A student run athletic association was replaced in 1898 by the Faculty Board of Control.   The first recognized club sports on campus were Cricket, founded in 1862; gymnastics, recognized in 1864; and rowing, dating to1867. ',...
%     'Organized baseball first appeared on campus in 1865. The 1866-1868 rosters were headlined by one Adrian C. ?Cap? Anson, who would eventually star for twenty-one years for the Chicago White Stockings. Anson is regarded as the first Major League superstar, and was an original member of the Hall of Fame. ',...
%     'Rudimentary football was first played on campus in the late 1860?s, more closely resembling rugby, with the first record of a game found in the October 24, 1885 edition of Scholastic. From these early recreational players, as was true with baseball, Notre Dame would field its first intercollegiate varsity teams.  Earlest games pitted the Blacks against the Browns, or the Specials against the Anti-Specials.  By 1890, however, Interhall play was a campus staple.  Goalposts were first erected on Brownson Field in 1906, and Corby Hall was recognized as the first campus dynasty. ',...
%     'The first recorded interhall basketball game, Carroll 11, Brownson 7, was played in 1897; the first track meet held in 1899; and water polo was first played in the new natatorium in 1901. As the 20th century dawned, a new gymnasium replaced one lost in a devastating fire. Later, both interhall and club sports were actively promoted by Knute Rockne, also known for his accomplishments outside the realm of RecSports. Notre Dame established the Department of Physical Education in 1921, and placed recreational activity under its direction. This would remain in effect until 1966. ',...
%     'Athletic competition sprang up in dozens of sports over the decades, one notable club being boxing. Rockne started a team in 1923, with the first of the legendary Bengal Bouts staged in 1930. Women?s boxing with its Baraka Bouts first entered the ring in 2003. ',...
%     'In 1968, the Department of Interhall/Intramural Athletics became the Department of Non-Varsity Athletics (NVA).  The new nomenclature was to reflect the growth of recreational activity outside intramural and club participation. In 1983, Recreational Services was added to NVA, was designed to provide venues and encouragement to the growing women?s population on campus. RecServices offered 22 programs its first year. ',...
%     '1991 marked Notre Dame?s sesquicentennial, and the introduction of NVA?s successor, the Office of Receational Sports (RecSports), renamed in part to remove any negative connotations of the prior name. Notre Dame fully embraced the concept of wellness, or ?whole health?, terms just then coming into vogue.  Nationally, the field of recreational sports was changing dramatically both in philosophical and professional development.  Notre Dame?s RecSports Mission Statement was developed and introduced in 2005: To serve the Notre Dame community by enhancing the mind, body, and spirit through recreational sports. Emphasis was now widespread to include fitness and wellness programming, and offerings to the entire campus community and their families. ',...
%     'RecSports in all its iterations boasts a proud heritage of service to the Notre Dame family. Today, the number of programs offered is 482. The future is promising as new programming, facilities and professional staff will enhance customer service while meeting ever evolving interests with current programming.'];
%  
% encodedString = 'IDU WTPNQUSTA, ZSPFA, JQTTPA RPE FTPTURVA MRGT UTVSTE DP TIISWSTPN WDKKQPSWRNSDP SP DUETU ND FDGTUP NMTSU WDQPNUSTA RPE WDKKRPE NMTSU RUKSTA. RN NMT ARKT NSKT, NMTC MRGT RVV OTTP RYRUT DI NMT WDPATJQTPWTA DI NMTSU KTAARFTA IRVVSPF SPND NMT YUDPF MRPEA, UTGTRVSPF LUTWSDQA ATWUTNA ND USGRV PRNSDPA RPE OTNURCSPF GSNRV SPIDUKRNSDP ND DLLDASPF IDUWTA. SN YRA NMT NMUTRN DI TPTKC SPNTUWTLNSDP NMRN KDNSGRNTE NMT ETGTVDLKTPN DI WDETA RPE WSLMTUA: NTWMPSJQTA IDU ESAFQSASPF R KTAARFT AD NMRN DPVC NMT SPNTPETE UTWSLSTPN WRP UTRE SN. NMT ETASUT IDU ATWUTWC MRA KTRPN NMRN PRNSDPA MRGT DLTURNTE WDETKRZSPF ETLRUNKTPNA, YMSWM YTUT UTALDPASOVT IDU TPAQUSPF NMT ATWQUSNC DI WDKKQPSWRNSDPA OC SPGTPNSPF RPE SKLVTKTPNSPF NMT OTAN LDAASOVT WDETA. RN NMT ARKT NSKT, TPTKC WDETOUTRZTUA MRGT RNNTKLNTE ND OUTRZ NMTAT WDETA RPE ANTRV ATWUTNA. WDETOUTRZTUA RUT VSPFQSANSW RVWMTKSANA, R KCANSWRV NUSOT RNNTKLNSPF ND WDPHQUT ATPASOVT YDUEA DQN DI KTRPSPFVTAA ACKODVA. NMT MSANDUC DI WDETA RPE WSLMTUA SA NMT ANDUC DI NMT WTPNQUSTA-DVE ORNNVT OTNYTTP WDETKRZTUA RPE WDETOUTRZTUA, RP SPNTVVTWNQRV RUKA URWT NMRN MRA MRE R EURKRNSW SKLRWN DP NMT WDQUAT DI MSANDUC. SP YUSNSPF NMT WDET ODDZ, S MRGT MRE NYD KRSP DOHTWNSGTA. NMT ISUAN SA ND WMRUN NMT TGDVQNSDP DI WDETA. TGDVQNSDP SA R YMDVVC RLLUDLUSRNT NTUK, OTWRQAT NMT ETGTVDLKTPN DI WDETA WRP OT GSTYTE RA RP TGDVQNSDPRUC ANUQFFVT. R WDET SA WDPANRPNVC QPETU RNNRWZ IUDK WDETOUTRZTUA. YMTP NMT WDETOUTRZTUA MRGT ETGTVDLTE R PTY YTRLDP NMRN UTGTRVA R WDET?A YTRZPTAA, NMTP NMT WDET SA PD VDPFTU QATIQV. SN TSNMTU OTWDKTA TBNSPWN DU SN TGDVGTA SPND R PTY, ANUDPFTU WDET. SP NQUP, NMSA PTY WDET NMUSGTA DPVC QPNSV NMT WDETOUTRZTUA SETPNSIC SNA YTRZPTAA, RPE AD DP. NMSA SA ASKSVRU ND NMT ASNQRNSDP IRWSPF, IDU TBRKLVT, R ANURSP DI SPITWNSDQA ORWNTUSR. NMT ORWNTUSR VSGT, NMUSGT RPE AQUGSGT QPNSV EDWNDUA ESAWDGTU RP RPNSOSDNSW NMRN TBLDATA R YTRZPTAA SP NMT ORWNTUSR RPE ZSVVA NMTK. NMT ORWNTUSR RUT IDUWTE ND TGDVGT RPE DQNYSN NMT RPNSOSDNSW, RPE SI AQWWTAAIQV, NMTC YSVV NMUSGT DPWT RFRSP RPE UTTANROVSAM NMTKATVGTA. MSANDUC SA LQPWNQRNTE YSNM WDETA. NMTC MRGT ETWSETE NMT DQNWDKTA DI ORNNVTA RPE VTE ND NMT ETRNMA DI ZSPFA RPE JQTTPA. S MRGT NMTUTIDUT OTTP ROVT ND WRVV QLDP ANDUSTA DI LDVSNSWRV SPNUSFQT RPE NRVTA DI VSIT RPE ETRNM ND SVVQANURNT NMT ZTC NQUPSPF LDSPNA SP NMT TGDVQNSDPRUC ETGTVDLKTPN DI WDETA. NMT MSANDUC DI WDETA SA AD SPDUESPRNTVC USWM NMRN S MRGT OTTP IDUWTE ND VTRGT DQN KRPC IRAWSPRNSPF ANDUSTA, YMSWM SP NQUP KTRPA NMRN KC RWWDQPN SA PDN ETISPSNSGT. SI CDQ YDQVE VSZT ND ISPE DQN KDUT RODQN CDQU IRGDUSNT NRVT DU CDQU IRGDUSNT WDETOUTRZTU, NMTP S YDQVE UTITU CDQ ND NMT VSAN DI IQUNMTU UTRESPF. MRGSPF ESAWQAATE NMT TGDVQNSDP DI WDETA RPE NMTSU SKLRWN DP MSANDUC, NMT ODDZ?A ATWDPE DOHTWNSGT SA ND ETKDPANURNT MDY NMT AQOHTWN SA KDUT UTVTGRPN NDERC NMRP TGTU OTIDUT. RA SPIDUKRNSDP OTWDKTA RP SPWUTRASPFVC GRVQROVT WDKKDESNC, RPE RA NMT WDKKQPSWRNSDPA UTGDVQNSDP WMRPFTA ADWSTNC, AD NMT LUDWTAA DI TPWDESPF KTAARFTA, ZPDYP RA TPWUCLNSDP, YSVV LVRC RP SPWUTRASPF UDVT SP TGTUCERC VSIT. PDYRERCA DQU LMDPT WRVVA ODQPWT DII ARNTVVSNTA RPE DQU T-KRSVA LRAA NMUDQFM GRUSDQA WDKLQNTUA, RPE ODNM IDUKA DI WDKKQPSWRNSDP WRP OT SPNTUWTLNTE YSNM TRAT, AD HTDLRUESXSPF DQU LUSGRWC. ASKSVRUVC, RA KDUT RPE KDUT OQASPTAA SA WDPEQWNTE DGTU NMT SPNTUPTN, ARITFQRUEA KQAN OT LQN SP LVRWT'; 



% encodedString = ['letter retains its identity but changes its position, whereas in substitution each letter changes its identity but retains its position. The first documented use of a substitution cipher for military purposes appears in Julius Caesar?s Gallic Wars. Caesar describes ', ... 
%    'how he sent a message to Cicero, who was besieged and on the verge of surrendering. The substitution replaced Roman letters with Greek letters, making the message unintelligible to the enemy. Caesar described the dramatic delivery of the message: ', ...
%    'The messenger was instructed, if he could not approach, to hurl a spear, with the letter fastened to the thong, inside the entrenchment of the camp. Fearing danger, the Gaul discharged the spear, as he had been instructed. By chance it stuck fast in the tower, and for two days was not sighted by our troops; on ', ...
%    'the third day it was sighted by a soldier, taken down, and delivered to Cicero. He read it through and then recited it at a parade of the troops, bringing the greatest rejoicing to all. Caesar used secret writing so frequently that Valerius Probus ', ...
%    'wrote an entire treatise on his ciphers, which unfortunately has not survived. However, thanks to Suetonius? Lives of the Caesars LVI, written in the second century A.D., we do have a detailed description of one of the types of substitution cipher used by Julius Caesar. He simply replaced each letter in the message ', ...
%    'with the letter that is three places further down the alphabet. Cryptographers often think in terms of the plain alphabet, the alphabet used to write the original message, and the cipher alphabet, the letters that are substituted in place of the plain letters. When the plain alphabet is placed above the cipher ', ...
%    'alphabet, as shown in Figure 3, it is clear that the cipher alphabet has been shifted by three places, and hence this form of substitution is often called the Caesar shift cipher, or simply the Caesar cipher. Cipher is the name given to any form of'];

% If I want to scan user input
% x = input('Input the words you would like scanned', 's')

% encodedString = ['Engineering was defined at the beginning of this unit as the application of practical and scientific knowledge to the solving of a problem through the use of a methodical process.  Discussed above were some different types of knowledge that engineers apply to solving a problem, but the process itself has not been mentioned.  What methodical process do engineers use to solve problems? ',...
%     'The engineering design process is a series of steps that engineers follow when they are trying to solve a problem and design a solution for something; it is a methodical approach to problem solving.  This is similar to the ?Scientific Method? which is taught to young scientists.  There is no single universally accepted design process.  It seems as though most engineers have their own twist for how the process works.  The process generally starts with a problem and ends with a solution, but the middle steps can vary. ',...
%     'One can think of the engineering design process as a recipe for banana bread; it can be made a lot of different ways but it?s usually going to start with bananas and it?s going to end with a loaf of bread.  One such ?recipe? for the engineering design process will be outlined in this unit; this is not the only correct version of the process, it is just one example.  It will provide a good starting point for students to explore the engineering process. ',...
%     'The design process in its simplest terms can be seen as a 3-step loop: ',...
%     'In this simple design loop an idea is generated (1).  This idea is implemented (2).  After the idea is implemented, the design group would test the product or evaluate the result of the implementation through testing (3).  Typically, during this testing and evaluation, additional ideas are generated, and the process starts over again.  This cycle and repetition is why it can be said that design is an iterative process.',...
%     'Iteration is the act of repeating something over and over again in order to improve the process and eventually achieve a desired goal. ',...
%     'Obviously this process could go on forever (or until the design group stops thinking of new ideas and stops finding problems with the design).  There is a saying sometimes used by veteran engineers: ?At some point in every design process someone needs to get rid of the engineer and just build the thing!?'];

% encodedString = ['What can regular people do to stop NSA spying? That?s the big question in the wake of the NSA surveillance news that?s shaken the nation. ',...
%     'Unfortunately, it doesn?t have a simple answer. There?s no way to block NSA surveillance completely. Even if you rebelled against technology, ditched your mobile phone, and avoided using heavily-tracked web services like Facebook and Google, you?d still be on surveillance cameras that capture your face, license plate scanners, and credit databases, among other things. ',...
%     'But let?s not get pessimistic. There are tools you can use to make it harder for others to track you. They won?t eliminate your footprint, but they?ll blur the picture of you that emerges through your data. Read on to learn about them.  ',...
%     'Let?s start with a little context. It?s important to remember that almost all surveillance starts with private companies. Apple, AT&T, Microsoft, Google, Verizon?companies like these mine your data for commercial reasons, but they end up having to give it up to law enforcement when asked. Staying more private means keeping your data out of the hands of the private companies that feed the government. ',...
%     'Once the private sector collects personal data, three main things can happen to it. You might not care about all three, but you?ll probably care about one: ',...
%     '1. It?s lost in a data breach. Look at the LivingSocial breach as an example: 50 million people?s names, emails, birthdates, and encrypted passwords gone in one hack. ',...
%     '2. The company misuses it in a way you didn?t expect or intend, that violates your privacy, or that makes you uncomfortable. Facebook is a champion of this kind of misuse by constantly changing its privacy policies and eroding default protections.',...
%     '3. The government may use it. Enter PRISM and the NSA. ',...
%     'Whether you?re concerned with 1, 2, or 3, the results are the same and the solution for consumers is the same: use tools and best practices to avoid private companies from ever getting your data in the first place. Privacy laws certainly need an overhaul, but regulation isn?t an immediate solution for the everyday Internet user.'];

% encodedString = ' The quick brown fox jumps over the lazy dog';
% 
% encodedString = ' z ';
% Used later to create an array of letters
variableNumber=0;

% Calculates the length of the string being scanned
stringLength = length(encodedString);

%% Convert to lower case

encodedString = lower(encodedString);

%% Array of Variables for Cipher Text

arrayOfCipherTextPositions = zeros(1,26);

iGuess = 0;

%% Initialize indeces

aIndex = 0;
bIndex = 0;
cIndex = 0;
dIndex = 0;
eIndex = 0;
fIndex = 0;
gIndex = 0;
hIndex = 0;
iIndex = 0;
jIndex = 0;
kIndex = 0;
lIndex = 0;
mIndex = 0;
nIndex = 0;
oIndex = 0;
pIndex = 0;
qIndex = 0;
rIndex = 0;
sIndex = 0;
tIndex = 0;
uIndex = 0;
vIndex = 0;
wIndex = 0;
xIndex = 0;
yIndex = 0;
zIndex = 0;

%% Scan

hwb = waitbar(0,'Decoding...','Name','Progress','WindowStyle','modal');

for scanLetter = 'a':'z'
    
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
percentOfEachLetter = arrayOfVariables ./ totalAmountOfLetters ;

percentOfEachLetter = 100 .* percentOfEachLetter;
percentOfEachLetterOG = percentOfEachLetter;

axes(handles.plotAxes)
bar(percentOfEachLetterOG)
xlabel('A   B   C  D  E   F  G  H   I   J   K  L   M  N  O  P  Q  R  S   T  U  V   W  X  Y  Z ')
ylabel('Letter Frequencies (Percent)');
axis([0,27,0,max(percentOfEachLetterOG) + 1])
handles.plotAxes.XColor = 'white';
handles.plotAxes.YColor = 'white';
handles.plotAxes.GridColor = 'black';
handles.plotAxes.MinorGridColor = 'black';

% Changes the height of the bar graph to the max value + 1
grid on
grid minor
drawnow



%% A Scan

% arrayOfa = zeros(1,26);
% 
% % _a_
% for iLetter = 1:26
%     aCounter = 0;
%     for iCount = 1:(stringLength-2)
%         compareString = encodedString(iCount:iCount+2);
%         compareString2 = [' ',arrayOfLetters(iLetter),' '];
%         if strcmp(compareString,compareString2)
%             aCounter = aCounter + 2;
%         end
%     end
%     arrayOfa(iLetter) = arrayOfa(iLetter) + aCounter;
% end
% 
% potential_a = zeros(1,2);
% 
% newArrayOfa = arrayOfa;
% aIndexPossibility = zeros(1,2);
% iCount = 0;
% endit = false;
% while ~endit
%     iCount = iCount + 1;
%     if max(newArrayOfa) == newArrayOfa(iCount) && iCount < 27
%         potential_a(1) = newArrayOfa(iCount);
%         aIndexPossibility(1) = iCount;
%         newArrayOfa(iCount) = 0;
%         endit = true;
%     end
%     if iCount > 26
%         endit = true;
%     end
% end
% 
% iCount = 0;
% endit = false;
% while ~endit
%     iCount = iCount + 1;
%     if max(newArrayOfa) == newArrayOfa(iCount) && iCount < 27
%         potential_a(2) = newArrayOfa(iCount);
%         aIndexPossibility(2) = iCount;
%         newArrayOfa(iCount) = 0;
%         endit = true;
%     end
%     if iCount > 26
%         endit = true;
%     end
% end
% 
% for i = 1:2
%     aCounter = 0;
%     iLetter = potential_a(i);
%     if iLetter > 0
%         for jLetter = 1:26
%             for iCount = 1:(stringLength-2)
%                 compareString = encodedString(iCount:iCount+2);
%                 compareString2 = [' ',arrayOfLetters(iLetter),arrayOfLetters(jLetter)];
%                 if strcmp(compareString,compareString2)
%                     aCounter = aCounter + 1;
%                 end
%             end
%         end
%     end
%     potential_a(i) = potential_a(i) + aCounter;
% end
% 
% for i = 1:2
%     if potential_a(i) == max(potential_a) && sum(potential_a) ~= 0
%         aIndex = aIndexPossibility(i);
%         aGuess = arrayOfLetters(aIndex);
%     end
% end
% 
% closeness = zeros(1,26);
% if aIndex == 0
%     for i = 1:26
%         closeness(i) = abs( percentOfEachLetter(i) - 8.000395);
%     end
%     for i = 1:26
%         if closeness(i) == min(closeness)
%             aIndex = i;
%             aGuess = arrayOfLetters(i);
%         end
%     end
% end
% percentOfEachLetter(aIndex) = 1000;
% aGuess = 'a';
% aIndex = 1;
% disp(['aGuess: ',aGuess]);

%% ai Scan

arrayOfaiPossibilities = ['0','0'];

% Sets aiTallies
aiTally1 = 0;
aiTally2 = 0;

% Used to put a or i possibilities in an array
aiCounter = 0;


for iLetter = 'a':'z'
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [' ',iLetter,' '];
        if strcmpi(compareString,compareString2)
            % array of possible letters for a and i
            arrayOfaiPossibilities(aiCounter+1) = iLetter;
        else
        end
        
    end
    
    if strcmpi(arrayOfaiPossibilities(1),'0')
        
    else
        aiCounter = 1;
        
    end
    
    
end


if strcmp(arrayOfaiPossibilities(1),'0') && strcmp(arrayOfaiPossibilities(2),'0')
    arrayOfaiPossibilities = zeros(1,30);
elseif ~strcmp(arrayOfaiPossibilities(1),'0') && strcmp(arrayOfaiPossibilities(2),'0')
    arrayOfaiPossibilities = arrayOfaiPossibilities(1);
elseif strcmp(arrayOfaiPossibilities(1),'0') && ~strcmp(arrayOfaiPossibilities(2),'0')
    arrayOfaiPossibilities = arrayOfaiPossibilities(2);
end

cancelA = false;
% In case I want to see the length of arrayOfaiPossibilities, which used to
% tell me if I was getting a guess for a or a and i (It doesn't anymore
% because if the matrix length was only 1, iGuess would output an error and
% stop the program, so arrayOfaiPossibilities is now predefined as 1x2
%disp(sum(length(arrayOfaiPossibilities)))
for iCount = 1:stringLength-1
    if length(arrayOfaiPossibilities) == 1
        % If there is only 1 entry in the array, it assumes the author did
        % not use the first person and attributes it to "a"
        aGuess = arrayOfaiPossibilities;
        iGuess = aGuess;
    elseif length(arrayOfaiPossibilities) == 30
        
        closeness = zeros(1,26);
        if aIndex == 0
            for i = 1:26
                closeness(i) = abs( percentOfEachLetter(i) - 8.000395);
            end
            
            for i = 1:26
                if closeness(i) == min(closeness)
                    aIndex = i;
                    aGuess = arrayOfLetters(i);
                    cancelA = true;
                end
            end
        end
        percentOfEachLetter(aIndex) = 1000;
        
        
    else
        compareString3 = encodedString(iCount:iCount+1);
        compareString4 = [' ',arrayOfaiPossibilities(1)];
        compareString5 = [' ',arrayOfaiPossibilities(2)];
        % You need to scan for the frequencies of each of your two options
        % and see how frequently they start a word, the most frequent will
        % be "a"
        if strcmpi(compareString3,compareString4)
            aiTally1 = aiTally1 + 1;
        elseif strcmpi(compareString3,compareString5)
            aiTally2 = aiTally2 + 1;
        else
        end
        
    end
end

if length(arrayOfaiPossibilities) > 1 && length(arrayOfaiPossibilities) < 30
    if aiTally1 >= aiTally2
        aGuess = arrayOfaiPossibilities(1);
        iGuess = arrayOfaiPossibilities(2);
    else
        aGuess = arrayOfaiPossibilities(2);
        iGuess = arrayOfaiPossibilities(1);
    end
end

% arrayOfCipherTextPositions(1) = aGuess;
% arrayOfCipherTextPositions(9) = iGuess;


for iCount = 1:26
    if strcmp(aGuess,arrayOfLetters(iCount)) && ~cancelA
        aIndex = iCount;
    end
    if strcmp(iGuess,arrayOfLetters(iCount))
        iIndex = iCount;
    end
end

disp(['aGuess: ',aGuess])

waitbar(1/26,hwb)

%% and Scan

% keepers
andCounter = 0;
andRowCounter = 0;
andColumnCounter = 0;
matrixOfandPossibilities = zeros(26,26);

for iLetter1 = 'a':'z'
    andColumnCounter = 0;
    andRowCounter = andRowCounter + 1;
    waitbar((1 + (andRowCounter/26))/26,hwb)
    for iLetter2 = 'a':'z'
        andColumnCounter = andColumnCounter + 1;
        andCounter = 0;
        for iCount = 1:(stringLength -4)
            compareString1 = encodedString(iCount:iCount+4);
            compareString2 = [' ',aGuess,iLetter1,iLetter2,' '];
            if strcmpi(compareString1,compareString2)
                andCounter = andCounter + 1;
                matrixOfandPossibilities(andRowCounter,andColumnCounter) = andCounter;
                
            else
            end
        end
    end
    
    % Remove when added?
    
    variableNumber= variableNumber +1;
    arrayOfLetters(variableNumber) = iLetter1;
    
end

ndGuessVector = [matrixOfandPossibilities(1,:),matrixOfandPossibilities(2,:),...
    matrixOfandPossibilities(3,:),matrixOfandPossibilities(4,:),matrixOfandPossibilities(5,:),...
    matrixOfandPossibilities(6,:),matrixOfandPossibilities(7,:),matrixOfandPossibilities(8,:),...
    matrixOfandPossibilities(9,:),matrixOfandPossibilities(10,:),matrixOfandPossibilities(11,:),...
    matrixOfandPossibilities(12,:),matrixOfandPossibilities(13,:),matrixOfandPossibilities(14,:),...
    matrixOfandPossibilities(15,:),matrixOfandPossibilities(16,:),matrixOfandPossibilities(17,:),...
    matrixOfandPossibilities(18,:),matrixOfandPossibilities(19,:),matrixOfandPossibilities(20,:),...
    matrixOfandPossibilities(21,:),matrixOfandPossibilities(22,:),matrixOfandPossibilities(23,:),...
    matrixOfandPossibilities(24,:),matrixOfandPossibilities(25,:),matrixOfandPossibilities(26,:)];

ndGuessNumerical = max(ndGuessVector);
%Incase I want to check the numerical representation of ndGuess (which
%equal to how many times ['a',nGuess,dGuess] appears, which is ideally how
%many times the plaintext "and" appears.
% disp(ndGuessNumerical)
for iCount1 = 1:26
    for iCount2 = 1:26
        if matrixOfandPossibilities(iCount1,iCount2) == ndGuessNumerical
            ndGuessRowColumn = [iCount1,iCount2];
        else
        end
    end
    
end

if sum(ndGuessVector) > 0
    nGuess = arrayOfLetters(ndGuessRowColumn(1));
    dGuess = arrayOfLetters(ndGuessRowColumn(2));
    
    for iCount = 1:26
        if strcmp(nGuess,arrayOfLetters(iCount))
            nIndex = iCount;
        end
        if strcmp(dGuess,arrayOfLetters(iCount))
            dIndex = iCount;
        end
    end
    
end

percentOfEachLetter(aIndex) = 1000;
if sum(ndGuessVector) == 0
    
    closeness = zeros(1,26);
    if nIndex == 0
        for i = 1:26
            closeness(i) = abs( percentOfEachLetter(i) - 6.903785);
        end
        
        for i = 1:26
            if closeness(i) == min(closeness)
                nIndex = i;
                nGuess = arrayOfLetters(i);
            end
        end
    end
    percentOfEachLetter(nIndex) = 1000;
    
    closeness = zeros(1,26);
    if dIndex == 0
        for i = 1:26
            closeness(i) = abs( percentOfEachLetter(i) - 4.317924);
        end
        
        for i = 1:26
            if closeness(i) == min(closeness)
                dIndex = i;
                dGuess = arrayOfLetters(i);
            end
        end
    end
    
end

percentOfEachLetter(nIndex) = 1000;
percentOfEachLetter(dIndex) = 1000;

disp(['nGuess: ', nGuess])
disp(['dGuess: ', dGuess])

waitbar(3/26,hwb)

%% T scan

arrayOft = zeros(1,26);
arrayOfVariablesForTScan = arrayOfVariables;
arrayOfVariablesForTScan(aIndex) = 0;

for i = 1:6
    tArrayMax = max(arrayOfVariablesForTScan);
    for j = 1:26
        if arrayOfVariablesForTScan(j) == tArrayMax
            arrayOfTIndexes(i) =  j;
            arrayOfVariablesForTScan(j) = 0;
        end
    end
end

% the
for i = 1:5
    iLetter = arrayOfTIndexes(i);
    toggle = true;
    tCounter = 0;
    waitbar((3 + (i/7))/26,hwb)
    while iLetter ~= aIndex && iLetter ~= nIndex && iLetter ~= dIndex && toggle

        for jLetter = 1:26
            toggle = true;
            tCounter = 0;
            while jLetter ~= aIndex && jLetter ~= nIndex && jLetter ~= dIndex && toggle

                for kLetter = 1:26
                    toggle = true;
                    tCounter = 0;
                    while kLetter ~= aIndex && kLetter ~= nIndex && kLetter ~= dIndex && toggle

                        for iCount = 1:(stringLength - 4)
                            if strcmp(iLetter,jLetter) || strcmp(iLetter,kLetter) || strcmp(jLetter,kLetter)
                                % do nothing
                            else
                                compareString = encodedString(iCount:iCount+4);
                                compareString2 = [' ',arrayOfLetters(iLetter),arrayOfLetters(jLetter),arrayOfLetters(kLetter),' '];
                                if strcmp(compareString,compareString2)
                                    tCounter = tCounter + 1;
                                end
                            end
                            
                        end
                        arrayOft(iLetter) = arrayOft(iLetter) + tCounter;
                        toggle = false;
                    end
                end
                toggle = false;
            end
        end
        toggle = false;
    end

end

% that
for i = 1:5
    iLetter = arrayOfTIndexes(i);
    toggle = true;
    tCounter = 0;
    waitbar(((26/7) + (i/5))/26,hwb)
    while iLetter ~= aIndex && iLetter ~= nIndex && iLetter ~= dIndex && toggle
        
        for jLetter = 1:26
            tCounter = 0;
            toggle = true;
            while jLetter ~= aIndex && jLetter ~= nIndex && jLetter ~= dIndex && toggle
                
                for iCount = 1:(stringLength - 5)
                    if strcmp(iLetter,jLetter)
                        % do nothing
                    else
                        compareString = encodedString(iCount:iCount+5);
                        compareString2 = [' ',arrayOfLetters(iLetter),arrayOfLetters(jLetter),aGuess,arrayOfLetters(iLetter),' '];
                        if strcmp(compareString,compareString2)
                            tCounter = tCounter + 20;
                        end
                    end
                    
                end
                arrayOft(iLetter) = arrayOft(iLetter) + tCounter;
                toggle = false;
                
            end
        end
        toggle = false;
    end
    
end


for i = 1:26
    if arrayOft(i) < 0
        arrayOft(i) = 0;
    end
end

for i = 1:26
    if arrayOft(i) == max(arrayOft) && sum(arrayOft) ~= 0
        tIndex = i;
        tGuess = arrayOfLetters(tIndex);
    end
end

closeness = zeros(1,26);
if tIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 9.085226);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            tIndex = i;
            tGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(tIndex) = 1000;

disp(['tGuess: ',tGuess]);

waitbar(4/26,hwb)

%% H scanner

% Used to create tGuessMinusOne
tGuessCounter = 0;

% Used to create tGuessTotals
tGuessTotalsCounter = 0;

for iCount = 1:(stringLength-1) % Counts all the entries in the string 'x'
    compareValue= encodedString(iCount);
    if strcmpi(compareValue,tGuess)
        if iCount == 1
        else
            tGuessCounter = tGuessCounter + 1;
            % creates array for tguess
            tGuessPositionArray(tGuessCounter) = iCount;
            % Creates an array of letters that come before tGuess
            beforetGuess(tGuessCounter) = encodedString(iCount-1);
            % Creates an array of letters that come after tGuess
            aftertGuess(tGuessCounter) = encodedString(iCount+1);
        end
    else
    end
    
end

for iScanLetter = 'a':'z'
    
    tGuessTotalsCounter = tGuessTotalsCounter + 1;
    
    % Counts the amount of each letter in the arrays for before 
    % and after tGuess
    if tGuessCounter == 0
    else
        beforetGuessTotals(tGuessTotalsCounter) = count(beforetGuess,iScanLetter);
        aftertGuessTotals(tGuessTotalsCounter) = count(aftertGuess,iScanLetter);
    end
    
end

if tGuessCounter == 0
else
    finaltGuessTotals = aftertGuessTotals - beforetGuessTotals;
    
    for i = 1:26
        if finaltGuessTotals(i) < 0
            finaltGuessTotals(i) = 0;
        end
    end
    
    if sum(finaltGuessTotals) > 0
        
        finaltGuessMax = max(finaltGuessTotals);
        
        for iTotalsCount = 1:26
            if finaltGuessTotals(iTotalsCount) == finaltGuessMax
                hGuess = arrayOfLetters(iTotalsCount);
                hIndex = iTotalsCount;
            end
        end
        
    end
end

closeness = zeros(1,26);
if hIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 6.236609);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            hIndex = i;
            hGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(hIndex) = 1000;

while hIndex == aIndex || hIndex == nIndex || hIndex == dIndex || hIndex == tIndex || ...
        strcmp(hGuess,aGuess) || strcmp(hGuess,nGuess) || strcmp(hGuess,dGuess) || strcmp(hGuess,tGuess)
    hIndex = hIndex + 1;
    if hIndex > 26
        hIndex = 1;
        hGuess = arrayOfLetters(hIndex);
    else
        hGuess = arrayOfLetters(hIndex);
    end
end

disp(['hGuess: ',hGuess])

waitbar(5/26,hwb)

%% E Scan (using the)

% arrayOft = zeros(1,26);
arrayOfe = zeros(1,26);

% % Find T
% for iLetter = 1:26
%     tCounter = 0;
%     for jLetter = 1:26
%         for iCount = 1:(stringLength-4)
%             compareString = encodedString(iCount:iCount+4);
%             compareString2 = [' ',arrayOfLetters(iLetter),hGuess,arrayOfLetters(jLetter),' '];
%             if strcmp(compareString,compareString2)
%                 tCounter = tCounter + 1;
%             end
%         end
%     end
%     arrayOft(iLetter) = tCounter;
% end
% 
% for i = 1:26
%     if arrayOft(i) == max(arrayOft)
%         tIndex = i;
%     end
% end
% 
% tGuess = arrayOfLetters(tIndex);
% disp(['tGuess: ',tGuess]);

% Find E
for iLetter = 1:26
    eCounter = 0;
        for iCount = 1:(stringLength-4)
            compareString = encodedString(iCount:iCount+4);
            compareString2 = [' ',tGuess,hGuess,arrayOfLetters(iLetter),' '];
            if strcmp(compareString,compareString2)
                eCounter = eCounter + 1;
            end
        end
    arrayOfe(iLetter) = eCounter;
end

arrayOfe(aIndex) = 0;
arrayOfe(nIndex) = 0;
arrayOfe(dIndex) = 0;
arrayOfe(hIndex) = 0;
arrayOfe(tIndex) = 0;

for i = 1:26
    if arrayOfe(i) < 0
        arrayOfe(i) = 0;
    end
end

for i = 1:26
    if arrayOfe(i) == max(arrayOfe) && sum(arrayOfe) ~= 0
        eIndex = i;
        eGuess = arrayOfLetters(eIndex);
    end
end

closeness = zeros(1,26);
if eIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 12.575645);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            eIndex = i;
            eGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(eIndex) = 1000;

disp(['eGuess: ',eGuess]);

waitbar(6/26,hwb)

%% O Scan

arrayOfo = zeros(1,26);

% % SO
% for iLetter = 1:26
%     oCounter = 0;
%     for iCount = 1:(stringLength-3)
%         compareString = encodedString(iCount:iCount+3);
%         compareString2 = [' ',sGuess,arrayOfLetters(iLetter),' '];
%         if strcmp(compareString,compareString2)
%             oCounter = oCounter + 1;
%         end
%     end
%     arrayOfo(iLetter) = oCounter;
% end

% TO
for iLetter = 1:26
    oCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',tGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            oCounter = oCounter + 1;
        end
    end
    arrayOfo(iLetter) = arrayOfo(iLetter) + oCounter;
end

% DO
for iLetter = 1:26
    oCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',dGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            oCounter = oCounter + 1;
        end
    end
    arrayOfo(iLetter) = arrayOfo(iLetter) + oCounter;
end

% NO
for iLetter = 1:26
    oCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',nGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            oCounter = oCounter + 1;
        end
    end
    arrayOfo(iLetter) = arrayOfo(iLetter) + oCounter;
end

arrayOfo(aIndex) = 0;
arrayOfo(nIndex) = 0;
arrayOfo(dIndex) = 0;
arrayOfo(hIndex) = 0;
arrayOfo(tIndex) = 0;
arrayOfo(eIndex) = 0;

for i = 1:26
    if arrayOfo(i) < 0
        arrayOfo(i) = 0;
    end
end

for i = 1:26
    if arrayOfo(i) == max(arrayOfo) && sum(arrayOfo) ~= 0
        oIndex = i;
        oGuess = arrayOfLetters(oIndex);
    end
end

closeness = zeros(1,26);
if oIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 7.591270);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            oIndex = i;
            oGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(oIndex) = 1000;

disp(['oGuess: ',oGuess]);

waitbar(7/26,hwb)

%% R Scan

arrayOfr = zeros(1,26);

% er re ar
for iLetter = 1:26
    rCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [eGuess,arrayOfLetters(iLetter)];
        compareString3 = [arrayOfLetters(iLetter),eGuess];
        compareString4 = [aGuess,arrayOfLetters(iLetter)];
        if strcmp(compareString,compareString2)
            rCounter = rCounter + 1;
        end
        if strcmp(compareString,compareString3)
            rCounter = rCounter + 1;
        end
        if strcmp(compareString,compareString4)
            rCounter = rCounter + 1;
        end
    end
    arrayOfr(iLetter) = rCounter;
end

% ARE
for iLetter = 1:26
    rCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),eGuess,' '];
        if strcmp(compareString,compareString2)
            rCounter = rCounter + 1;
        end
    end
    arrayOfr(iLetter) = arrayOfr(iLetter) + rCounter;
end

% her
for iLetter = 1:26
    rCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',hGuess,eGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            rCounter = rCounter + 10;
        end
    end
    arrayOfr(iLetter) = arrayOfr(iLetter) + rCounter;
end


% _there_
for iLetter = 1:26
    rCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',tGuess,hGuess,eGuess,arrayOfLetters(iLetter),eGuess,' '];
        if strcmp(compareString,compareString2)
            rCounter = rCounter + 10;
        end
    end
    arrayOfr(iLetter) = arrayOfr(iLetter) + rCounter;
end

% other
for iLetter = 1:26
    rCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [oGuess,tGuess,hGuess,eGuess,arrayOfLetters(iLetter)];
        if strcmp(compareString,compareString2)
            rCounter = rCounter + 100;
        end
    end
    arrayOfr(iLetter) = arrayOfr(iLetter) + rCounter;
end


arrayOfr(aIndex) = 0;
arrayOfr(nIndex) = 0;
arrayOfr(dIndex) = 0;
arrayOfr(hIndex) = 0;
arrayOfr(tIndex) = 0;
arrayOfr(eIndex) = 0;
arrayOfr(oIndex) = 0;

for i = 1:26
    if arrayOfr(i) < 0
        arrayOfr(i) = 0;
    end
end

for i = 1:26
    if arrayOfr(i) == max(arrayOfr) && sum(arrayOfr) ~= 0
        rIndex = i;
        rGuess = arrayOfLetters(rIndex);
    end
end

closeness = zeros(1,26);
if rIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 5.959034);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            rIndex = i;
            rGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(rIndex) = 1000;

disp(['rGuess: ',rGuess]);

waitbar(8/26,hwb)

%% S Scan

arrayOfs = zeros(1,26);

% ss s_
for iLetter = 1:26
    sCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [arrayOfLetters(iLetter),arrayOfLetters(iLetter)];
        compareString3 = [arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            sCounter = sCounter + 1;
        end
        if strcmp(compareString,compareString3)
            sCounter = sCounter + 1;
        end
    end
    arrayOfs(iLetter) = sCounter;
end

% _as_ (both 10)
for iLetter = 1:26
    sCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            sCounter = sCounter + 10;
        end
    end
    arrayOfs(iLetter) = arrayOfs(iLetter) + sCounter;
end

% _she_ (100)
for iLetter = 1:26
    sCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),hGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            sCounter = sCounter + 100;
        end
    end
    arrayOfs(iLetter) = arrayOfs(iLetter) + sCounter;
end

arrayOfs(aIndex) = 0;
arrayOfs(nIndex) = 0;
arrayOfs(dIndex) = 0;
arrayOfs(hIndex) = 0;
arrayOfs(tIndex) = 0;
arrayOfs(eIndex) = 0;
arrayOfs(oIndex) = 0;
arrayOfs(rIndex) = 0;

for i = 1:26
    if arrayOfs(i) < 0
        arrayOfs(i) = 0;
    end
end

for i = 1:26
    if arrayOfs(i) == max(arrayOfs) && sum(arrayOfs) ~= 0
        sIndex = i;
        sGuess = arrayOfLetters(sIndex);
    end
end

closeness = zeros(1,26);
if sIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 6.340880);
    end
    for i = 1:26
        if closeness(i) == min(closeness)
            sIndex = i;
            sGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(sIndex) = 1000;

disp(['sGuess: ',sGuess]);

waitbar(9/26,hwb)

%% I Scan
    
iIndex = 0;

    arrayOfi = zeros(1,26);
    
    % it, in, is
    for iLetter = 1:26
        iCounter = 0;
        for iCount = 1:(stringLength-3)
            compareString = encodedString(iCount:iCount+3);
            compareString2 = [' ',arrayOfLetters(iLetter),tGuess,' '];
            compareString3 = [' ',arrayOfLetters(iLetter),nGuess,' '];
            compareString4 = [' ',arrayOfLetters(iLetter),sGuess,' '];
            if strcmp(compareString,compareString2)
                iCounter = iCounter + 1;
            end
            if strcmp(compareString,compareString3)
                iCounter = iCounter + 1;
            end
            if strcmp(compareString,compareString4)
                iCounter = iCounter + 1;
            end
        end
        arrayOfi(iLetter) = iCounter;
    end
    
    % its, his
    for iLetter = 1:26
        iCounter = 0;
        for iCount = 1:(stringLength-4)
            compareString = encodedString(iCount:iCount+4);
            compareString2 = [' ',arrayOfLetters(iLetter),tGuess,sGuess,' '];
            compareString3 = [' ',hGuess,arrayOfLetters(iLetter),sGuess,' '];
            if strcmp(compareString,compareString2)
                iCounter = iCounter + 1;
            end
            if strcmp(compareString,compareString3)
                iCounter = iCounter + 1;
            end
        end
        arrayOfi(iLetter) = arrayOfi(iLetter) + iCounter;
    end
    
    % this
    for iLetter = 1:26
        iCounter = 0;
        for iCount = 1:(stringLength-5)
            compareString = encodedString(iCount:iCount+5);
            compareString2 = [' ',tGuess,hGuess,arrayOfLetters(iLetter),sGuess,' '];
            if strcmp(compareString,compareString2)
                iCounter = iCounter + 1;
            end
        end
        arrayOfi(iLetter) = arrayOfi(iLetter) + iCounter;
    end
    
    arrayOfi(aIndex) = 0;
    arrayOfi(nIndex) = 0;
    arrayOfi(dIndex) = 0;
    arrayOfi(hIndex) = 0;
    arrayOfi(tIndex) = 0;
    arrayOfi(eIndex) = 0;
    arrayOfi(oIndex) = 0;
    arrayOfi(sIndex) = 0;
    arrayOfi(rIndex) = 0;
    
for i = 1:26
    if arrayOfi(i) < 0
        arrayOfi(i) = 0;
    end
end

for i = 1:26
    if arrayOfi(i) == max(arrayOfi) && sum(arrayOfi) ~= 0
        iIndex = i;
        iGuess = arrayOfLetters(iIndex);
    end
end

closeness = zeros(1,26);
if iIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 6.920007);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            iIndex = i;
            iGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(iIndex) = 1000;

disp(['iGuess: ',iGuess]);

waitbar(10/26,hwb)
    
%% G scan

arrayOfg = zeros(1,26);

% ing_ _go_
for iLetter = 1:26
    gCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [iGuess,nGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',arrayOfLetters(iLetter),oGuess,' '];
        if strcmp(compareString,compareString2)
            gCounter = gCounter + 1;
        end
        if strcmp(compareString,compareString3)
            gCounter = gCounter + 1;
        end
    end
    arrayOfg(iLetter) = gCounter;
end

% get(weak) got(weak)
for iLetter = 1:26
    gCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,tGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),oGuess,tGuess,' '];
        if strcmp(compareString,compareString2)
            gCounter = gCounter + .1;
        end
        if strcmp(compareString,compareString3)
            gCounter = gCounter + .1;
        end
    end
    arrayOfg(iLetter) = arrayOfg(iLetter) + gCounter;
end

% good(weak)
for iLetter = 1:26
    gCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),oGuess,oGuess,dGuess,' '];
        if strcmp(compareString,compareString2)
            gCounter = gCounter + .1;
        end
    end
    arrayOfg(iLetter) = arrayOfg(iLetter) + gCounter;
end

% going again
for iLetter = 1:26
    gCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',arrayOfLetters(iLetter),oGuess,iGuess,nGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',aGuess,arrayOfLetters(iLetter),aGuess,iGuess,nGuess,' '];
        if strcmp(compareString,compareString2)
            gCounter = gCounter + 10;
        end
        if strcmp(compareString,compareString3)
            gCounter = gCounter + 10;
        end
    end
    arrayOfg(iLetter) = arrayOfg(iLetter) + gCounter;
end

% against
for iLetter = 1:26
    gCounter = 0;
    for iCount = 1:(stringLength-8)
        compareString = encodedString(iCount:iCount+8);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),aGuess,iGuess,nGuess,sGuess,tGuess,' '];
        if strcmp(compareString,compareString2)
            gCounter = gCounter + 10;
        end
    end
    arrayOfg(iLetter) = arrayOfg(iLetter) + gCounter;
end

arrayOfg(aIndex) = 0;
arrayOfg(iIndex) = 0;
arrayOfg(nIndex) = 0;
arrayOfg(dIndex) = 0;
arrayOfg(hIndex) = 0;
arrayOfg(tIndex) = 0;
arrayOfg(eIndex) = 0;
arrayOfg(sIndex) = 0;
arrayOfg(oIndex) = 0;
arrayOfg(rIndex) = 0;

for i = 1:26
    if arrayOfg(i) < 0
        arrayOfg(i) = 0;
    end
end

for i = 1:26
    if arrayOfg(i) == max(arrayOfg) && sum(arrayOfg) ~= 0
        gIndex = i;
        gGuess = arrayOfLetters(gIndex);
    end
end

closeness = zeros(1,26);
if gIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 1.982677);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            gIndex = i;
            gGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(gIndex) = 1000;

disp(['gGuess: ',gGuess]);

waitbar(11/26,hwb)

%% L Scan

arrayOfl = zeros(1,26);

% _all_ _old_ _let_
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),arrayOfLetters(iLetter),' '];
        compareString3 = [' ',oGuess,arrayOfLetters(iLetter),dGuess,' '];
        compareString4 = [' ',arrayOfLetters(iLetter),eGuess,tGuess,' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter + 100;
        end
        if strcmp(compareString,compareString3)
            lCounter = lCounter + 100;
        end
        if strcmp(compareString,compareString4)
            lCounter = lCounter + 1;
        end
    end
    arrayOfl(iLetter) = lCounter;
end

% le
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [arrayOfLetters(iLetter),eGuess];
        if strcmp(compareString,compareString2)
            lCounter = lCounter + 1;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% _long_
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),oGuess,nGuess,gGuess,' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter + 1;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% _#ill_
for iLetter = 1:26
    lCounter = 0;
    for j = 1:26
        jLetter = arrayOfLetters(iLetter);
        for iCount = 1:(stringLength-5)
            if jLetter ~= iLetter || jLetter ~= aGuess || jLetter ~= nGuess || jLetter ~= dGuess || jLetter ~= tGuess || jLetter ~= hGuess || jLetter ~= eGuess || jLetter ~= oGuess || jLetter ~= sGuess || jLetter ~= iGuess || jLetter ~= gGuess || jLetter ~= rGuess
                compareString = encodedString(iCount:iCount+5);
                compareString2 = [' ',jLetter,iGuess,arrayOfLetters(iLetter),arrayOfLetters(iLetter),' '];
                if strcmp(compareString,compareString2)
                    lCounter = lCounter + 1;
                end
            end
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% _little_
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',arrayOfLetters(iLetter),iGuess,tGuess,tGuess,arrayOfLetters(iLetter),eGuess,' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter + 1;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% subtract for be
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter - 10;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% subtract for been
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,eGuess,nGuess,' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter - 10;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% ch subtract (lh)
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [arrayOfLetters(iLetter),hGuess];
        if strcmp(compareString,compareString2)
            lCounter = lCounter - 1;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% am
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter - 1;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% him man men
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',hGuess,iGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',arrayOfLetters(iLetter),aGuess,nGuess,' '];
        compareString4 = [' ',arrayOfLetters(iLetter),eGuess,nGuess,' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter - 10;
        end
        if strcmp(compareString,compareString3)
            lCounter = lCounter - 10;
        end
        if strcmp(compareString,compareString4)
            lCounter = lCounter - 10;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% made
for iLetter = 1:26
    lCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),aGuess,dGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            lCounter = lCounter - 10;
        end
    end
    arrayOfl(iLetter) = arrayOfl(iLetter) + lCounter;
end

% v subtract
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-5
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',hGuess,aGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString3 = [' ',oGuess,arrayOfLetters(iLetter),eGuess,rGuess,' '];
        compareString4 = [' ',iGuess,'''',arrayOfLetters(iLetter),eGuess,' '];
        compareString5 = [' ',eGuess,arrayOfLetters(iLetter),eGuess,rGuess,' '];
        compareString6 = [' ',eGuess,arrayOfLetters(iLetter),eGuess,nGuess,' '];
        compareString7 = [' ',gGuess,iGuess,arrayOfLetters(iLetter),eGuess,' '];
        if strcmpi(compareString,compareString2)
            arrayOfl(iLetter) = arrayOfl(iLetter) - 10;
        end
        if strcmpi(compareString,compareString3)
            arrayOfl(iLetter) = arrayOfl(iLetter) - 10;
        end
        if strcmpi(compareString,compareString4)
            arrayOfl(iLetter) = arrayOfl(iLetter) - 10;
        end
        if strcmpi(compareString,compareString5)
            arrayOfl(iLetter) = arrayOfl(iLetter) - 10;
        end
        if strcmpi(compareString,compareString6)
            arrayOfl(iLetter) = arrayOfl(iLetter) - 10;
        end
        if strcmpi(compareString,compareString7)
            arrayOfl(iLetter) = arrayOfl(iLetter) - 10;
        end
    end
end

arrayOfl(aIndex) = 0;
arrayOfl(nIndex) = 0;
arrayOfl(dIndex) = 0;
arrayOfl(tIndex) = 0;
arrayOfl(hIndex) = 0;
arrayOfl(eIndex) = 0;
arrayOfl(oIndex) = 0;
arrayOfl(sIndex) = 0;
arrayOfl(iIndex) = 0;
arrayOfl(rIndex) = 0;
arrayOfl(gIndex) = 0;

for i = 1:26
    if arrayOfl(i) < 0
        arrayOfl(i) = 0;
    end
end

for i = 1:26
    if arrayOfl(i) == max(arrayOfl) && sum(arrayOfl) ~= 0
        lIndex = i;
        lGuess = arrayOfLetters(lIndex);
    end
end

closeness = zeros(1,26);
if lIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 4.057231);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            lIndex = i;
            lGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(lIndex) = 1000;

disp(['lGuess: ',lGuess]);

waitbar(12/26,hwb)

%% U scan

arrayOfu = zeros(1,26);

% under until
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-4
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [arrayOfLetters(iLetter),nGuess,dGuess,eGuess,rGuess];
        compareString3 = [arrayOfLetters(iLetter),nGuess,tGuess,iGuess,lGuess];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 1;
        end
        if strcmpi(compareString,compareString3)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 1;
        end
    end
end

% _out(SUBTRACT FOR _OFTEN)
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-3
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',oGuess,arrayOfLetters(iLetter),tGuess];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 1;
        end
    end
end

% _un(weak because k, m)
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-2
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [' ',arrayOfLetters(iLetter),nGuess];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) + .1;
        end
    end
end

% _during_ (move g above u) _enough_
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-3
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',dGuess,arrayOfLetters(iLetter),rGuess,iGuess,nGuess,gGuess,' '];
        compareString3 = [' ',eGuess,nGuess,oGuess,arrayOfLetters(iLetter),gGuess,hGuess,' '];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 1;
        end
        if strcmpi(compareString,compareString3)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 100;
        end
    end
end

% _OUR_ _USE_
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-4
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',oGuess,arrayOfLetters(iLetter),rGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),sGuess,eGuess,' '];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 10;
        end
        if strcmpi(compareString,compareString3)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 10;
        end
    end
end

% _through
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-7
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',tGuess,hGuess,rGuess,oGuess,arrayOfLetters(iLetter),gGuess,hGuess];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 100;
        end
    end
end

% _south
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-5
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',sGuess,oGuess,arrayOfLetters(iLetter),tGuess,hGuess];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) + 100;
        end
    end
end

% Subtract _often
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-5
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',oGuess,arrayOfLetters(iLetter),tGuess,eGuess,nGuess];
        if strcmpi(compareString,compareString2)
            arrayOfu(iLetter) = arrayOfu(iLetter) - 1000;
        end
    end
end

arrayOfu(aIndex) = 0;
arrayOfu(iIndex) = 0;
arrayOfu(lIndex) = 0;
arrayOfu(nIndex) = 0;
arrayOfu(dIndex) = 0;
arrayOfu(hIndex) = 0;
arrayOfu(tIndex) = 0;
arrayOfu(eIndex) = 0;
arrayOfu(sIndex) = 0;
arrayOfu(rIndex) = 0;
arrayOfu(oIndex) = 0;
arrayOfu(gIndex) = 0;

for i = 1:26
    if arrayOfu(i) < 0
        arrayOfu(i) = 0;
    end
end

for i = 1:26
    if arrayOfu(i) == max(arrayOfu) && sum(arrayOfu) ~= 0
        uIndex = i;
        uGuess = arrayOfLetters(uIndex);
    end
end

closeness = zeros(1,26);
if uIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 2.841783);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            uIndex = i;
            uGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(uIndex) = 1000;

disp(['uGuess: ',uGuess])

waitbar(13/26,hwb)

%% F scan

arrayOff = zeros(1,26);

% ful_ _if_
for iLetter = 1:26
    fCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [arrayOfLetters(iLetter),uGuess,lGuess,' '];
        compareString3 = [' ',iGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            fCounter = fCounter + 1;
        end
        if strcmp(compareString,compareString3)
            fCounter = fCounter + 1;
        end
    end
    arrayOff(iLetter) = fCounter;
end

% for oft
for iLetter = 1:26
    fCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [arrayOfLetters(iLetter),oGuess,rGuess];
        compareString3 = [oGuess,arrayOfLetters(iLetter),tGuess];
        if strcmp(compareString,compareString2)
            fCounter = fCounter + 1;
        end
        if strcmp(compareString,compareString3)
            fCounter = fCounter + 1;
        end
    end
    arrayOff(iLetter) = arrayOff(iLetter) + fCounter;
end

% _off_ _for_
for iLetter = 1:26
    fCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',oGuess,arrayOfLetters(iLetter),arrayOfLetters(iLetter),' '];
        compareString3 = [' ',arrayOfLetters(iLetter),oGuess,rGuess,' '];
        if strcmp(compareString,compareString2)
            fCounter = fCounter + 1;
        end
        if strcmp(compareString,compareString3)
            fCounter = fCounter + 10;
        end
    end
    arrayOff(iLetter) = arrayOff(iLetter) + fCounter;
end

% _after_ _first_
for iLetter = 1:26
    fCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),tGuess,eGuess,rGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),iGuess,rGuess,sGuess,tGuess,' '];
        if strcmp(compareString,compareString2)
            fCounter = fCounter + 20;
        end
        if strcmp(compareString,compareString3)
            fCounter = fCounter + 20;
        end
    end
    arrayOff(iLetter) = arrayOff(iLetter) + fCounter;
end

% _of_
for iLetter = 1:26
    fCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',oGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            fCounter = fCounter + 1;
        end
    end
    arrayOff(iLetter) = arrayOff(iLetter) + fCounter;
end

arrayOff(aIndex) = 0;
arrayOff(iIndex) = 0;
arrayOff(lIndex) = 0;
arrayOff(nIndex) = 0;
arrayOff(dIndex) = 0;
arrayOff(hIndex) = 0;
arrayOff(tIndex) = 0;
arrayOff(eIndex) = 0;
arrayOff(sIndex) = 0;
arrayOff(rIndex) = 0;
arrayOff(oIndex) = 0;
arrayOff(uIndex) = 0;
arrayOff(gIndex) = 0;


for i = 1:26
    if arrayOff(i) < 0
        arrayOff(i) = 0;
    end
end

for i = 1:26
    if arrayOff(i) == max(arrayOff) && sum(arrayOff) ~= 0
        fIndex = i;
        fGuess = arrayOfLetters(fIndex);
    end
end

closeness = zeros(1,26);
if fIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 2.350463);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            fIndex = i;
            fGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(fIndex) = 1000;

disp(['fGuess: ',fGuess]);

waitbar(14/26,hwb)

%% M Scan

arrayOfm = zeros(1,26);

% _from_ _some_ _time_ _more_ _most_ _made_
for iLetter = 1:26
    mCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',fGuess,rGuess,oGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',sGuess,oGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString4 = [' ',tGuess,iGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString5 = [' ',arrayOfLetters(iLetter),oGuess,rGuess,eGuess,' '];
        compareString6 = [' ',arrayOfLetters(iLetter),oGuess,sGuess,tGuess,' '];
        compareString7 = [' ',arrayOfLetters(iLetter),aGuess,dGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            mCounter = mCounter + 1;
        end
        if strcmp(compareString,compareString3)
            mCounter = mCounter + 1;
        end
        if strcmp(compareString,compareString4)
            mCounter = mCounter + 1;
        end
        if strcmp(compareString,compareString5)
            mCounter = mCounter + 1;
        end
        if strcmp(compareString,compareString6)
            mCounter = mCounter + 1;
        end
        if strcmp(compareString,compareString7)
            mCounter = mCounter + 1;
        end
    end
    arrayOfm(iLetter) = arrayOfm(iLetter) + mCounter;
end

% _am_
for iLetter = 1:26
    mCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            mCounter = mCounter + 1;
        end
    end
    arrayOfm(iLetter) = arrayOfm(iLetter) + mCounter;
end

% I'M (already have D, so IF statements at end will filter out I'D) _him_
for iLetter = 1:26
    mCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',iGuess,'''',arrayOfLetters(iLetter),' '];
        compareString3 = [' ',hGuess,iGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            mCounter = mCounter + 1;
        end
        if strcmp(compareString,compareString3)
            mCounter = mCounter + 1;
        end
    end
    arrayOfm(iLetter) = arrayOfm(iLetter) + 15*mCounter;
end

% MEN
for iLetter = 1:26
    mCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [arrayOfLetters(iLetter),eGuess,nGuess];
        if strcmp(compareString,compareString2)
            mCounter = mCounter + 1;
        end
    end
    arrayOfm(iLetter) = arrayOfm(iLetter) + mCounter;
end

% _MAN_
for iLetter = 1:26
    mCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),aGuess,nGuess,' '];
        if strcmp(compareString,compareString2)
            mCounter = mCounter + 1;
        end
    end
    arrayOfm(iLetter) = arrayOfm(iLetter) + mCounter;
end

arrayOfm(aIndex) = 0;
arrayOfm(iIndex) = 0;
arrayOfm(lIndex) = 0;
arrayOfm(nIndex) = 0;
arrayOfm(dIndex) = 0;
arrayOfm(hIndex) = 0;
arrayOfm(tIndex) = 0;
arrayOfm(eIndex) = 0;
arrayOfm(sIndex) = 0;
arrayOfm(rIndex) = 0;
arrayOfm(oIndex) = 0;
arrayOfm(uIndex) = 0;
arrayOfm(fIndex) = 0;
arrayOfm(gIndex) = 0;
    
for i = 1:26
    if arrayOfm(i) < 0
        arrayOfm(i) = 0;
    end
end

for i = 1:26
    if arrayOfm(i) == max(arrayOfm) && sum(arrayOfm) ~= 0
        mIndex = i;
        mGuess = arrayOfLetters(mIndex);
    end
end

closeness = zeros(1,26);
if mIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 2.560994);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            mIndex = i;
            mGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(mIndex) = 1000;

disp(['mGuess: ',mGuess]);

waitbar(15/26,hwb)

%% V Scan

arrayOfv = zeros(1,26);

% eve ive (weak)
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-2
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [eGuess,arrayOfLetters(iLetter),eGuess];
        compareString3 = [iGuess,arrayOfLetters(iLetter),eGuess];
        if strcmpi(compareString,compareString2)
            arrayOfv(iLetter) = arrayOfv(iLetter) + .1;
        end
        if strcmpi(compareString,compareString3)
            arrayOfv(iLetter) = arrayOfv(iLetter) + .1;
        end
    end
end

% ove_ _evo(weak) olve elve alve
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-3
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [oGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString3 = [' ',eGuess,arrayOfLetters(iLetter),oGuess];
        compareString4 = [oGuess,lGuess,arrayOfLetters(iLetter),eGuess];
        compareString5 = [eGuess,lGuess,arrayOfLetters(iLetter),eGuess];
        compareString6 = [aGuess,lGuess,arrayOfLetters(iLetter),eGuess];
        if strcmpi(compareString,compareString2)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 1;
        end
        if strcmpi(compareString,compareString3)
            arrayOfv(iLetter) = arrayOfv(iLetter) + .1;
        end
        if strcmpi(compareString,compareString4)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 1;
        end
        if strcmpi(compareString,compareString5)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 1;
        end
        if strcmpi(compareString,compareString6)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 1;
        end
    end
end

% __ have over i've ever even give __
for iLetter = 1:26
    
    for iCount = 1:length(encodedString)-5
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',hGuess,aGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString3 = [' ',oGuess,arrayOfLetters(iLetter),eGuess,rGuess,' '];
        compareString4 = [' ',iGuess,'''',arrayOfLetters(iLetter),eGuess,' '];
        compareString5 = [' ',eGuess,arrayOfLetters(iLetter),eGuess,rGuess,' '];
        compareString6 = [' ',eGuess,arrayOfLetters(iLetter),eGuess,nGuess,' '];
        compareString7 = [' ',gGuess,iGuess,arrayOfLetters(iLetter),eGuess,' '];
        if strcmpi(compareString,compareString2)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 2;
        end
        if strcmpi(compareString,compareString3)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 1;
        end
        if strcmpi(compareString,compareString4)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 10;
        end
        if strcmpi(compareString,compareString5)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 1;
        end
        if strcmpi(compareString,compareString6)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 10;
        end
        if strcmpi(compareString,compareString7)
            arrayOfv(iLetter) = arrayOfv(iLetter) + 10;
        end
    end
end

arrayOfv(aIndex) = 0;
arrayOfv(iIndex) = 0;
arrayOfv(lIndex) = 0;
arrayOfv(nIndex) = 0;
arrayOfv(dIndex) = 0;
arrayOfv(hIndex) = 0;
arrayOfv(tIndex) = 0;
arrayOfv(eIndex) = 0;
arrayOfv(sIndex) = 0;
arrayOfv(rIndex) = 0;
arrayOfv(oIndex) = 0;
arrayOfv(mIndex) = 0;
arrayOfv(uIndex) = 0;
arrayOfv(fIndex) = 0;
arrayOfv(gIndex) = 0;

for i = 1:26
    if arrayOfv(i) < 0
        arrayOfv(i) = 0;
    end
end

for i = 1:26
    if arrayOfv(i) == max(arrayOfv) && sum(arrayOfv) ~= 0
        vIndex = i;
        vGuess = arrayOfLetters(vIndex);
    end
end

closeness = zeros(1,26);
if vIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 0.981717);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            vIndex = i;
            vGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(vIndex) = 1000;

disp(['vGuess: ',vGuess])

waitbar(16/26,hwb)

%% B scan

arrayOfb = zeros(1,26);

% be
for iLetter = 1:26
    bCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,' '];
        if strcmp(compareString,compareString2)
            bCounter = bCounter + 1;
        end
    end
    arrayOfb(iLetter) = bCounter;
end

% been
for iLetter = 1:26
    bCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,eGuess,nGuess,' '];
        if strcmp(compareString,compareString2)
            bCounter = bCounter + 1;
        end
    end
    arrayOfb(iLetter) = arrayOfb(iLetter) + bCounter;
end

% being about
for iLetter = 1:26
    bCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,iGuess,nGuess,gGuess,' '];
        compareString3 = [' ',aGuess,arrayOfLetters(iLetter),oGuess,uGuess,tGuess,' '];
        if strcmp(compareString,compareString2)
            bCounter = bCounter + 10;
        end
        if strcmp(compareString,compareString3)
            bCounter = bCounter + 10;
        end
    end
    arrayOfb(iLetter) = arrayOfb(iLetter) + bCounter;
end

% but
for iLetter = 1:26
    bCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),uGuess,tGuess,' '];
        if strcmp(compareString,compareString2)
            bCounter = bCounter + 1;
        end
    end
    arrayOfb(iLetter) = arrayOfb(iLetter) + bCounter;
end

% before
for iLetter = 1:26
    bCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,fGuess,oGuess,rGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            bCounter = bCounter + 100;
        end
    end
    arrayOfb(iLetter) = arrayOfb(iLetter) + bCounter;
end

arrayOfb(aIndex) = 0;
arrayOfb(iIndex) = 0;
arrayOfb(lIndex) = 0;
arrayOfb(nIndex) = 0;
arrayOfb(dIndex) = 0;
arrayOfb(hIndex) = 0;
arrayOfb(tIndex) = 0;
arrayOfb(eIndex) = 0;
arrayOfb(sIndex) = 0;
arrayOfb(rIndex) = 0;
arrayOfb(oIndex) = 0;
arrayOfb(mIndex) = 0;
arrayOfb(uIndex) = 0;
arrayOfb(fIndex) = 0;
arrayOfb(vIndex) = 0;
arrayOfb(gIndex) = 0;

for i = 1:26
    if arrayOfb(i) < 0
        arrayOfb(i) = 0;
    end
end

for i = 1:26
    if arrayOfb(i) == max(arrayOfb) && sum(arrayOfb) ~= 0
        bIndex = i;
        bGuess = arrayOfLetters(bIndex);
    end
end

closeness = zeros(1,26);
if bIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 1.535701);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            bIndex = i;
            bGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(bIndex) = 1000;

disp(['bGuess: ',bGuess]);

waitbar(17/26,hwb)

%% W scan

arrayOfw = zeros(1,26);

% How
for iLetter = 1:26
    wCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',hGuess,oGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            wCounter = wCounter + 1;
        end
    end
    arrayOfw(iLetter) = wCounter;
end

% _Was_ _who_ _two_
for iLetter = 1:26
    wCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),aGuess,sGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),hGuess,oGuess,' '];
        compareString4 = [' ',tGuess,arrayOfLetters(iLetter),oGuess,' '];
        if strcmp(compareString,compareString2)
            wCounter = wCounter + 1;
        end
        if strcmp(compareString,compareString3)
            wCounter = wCounter + 1;
        end
        if strcmp(compareString,compareString4)
            wCounter = wCounter + 1;
        end
    end
    arrayOfw(iLetter) = arrayOfw(iLetter) + wCounter;
end

% We
for iLetter = 1:26
    wCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,' '];
        if strcmp(compareString,compareString2)
            wCounter = wCounter + 1;
        end
    end
    arrayOfw(iLetter) = arrayOfw(iLetter) + wCounter;
end

% _what_ _when_ _with_ _were_
for iLetter = 1:26
    wCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),hGuess,aGuess,tGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),hGuess,eGuess,nGuess,' '];
        compareString4 = [' ',arrayOfLetters(iLetter),iGuess,tGuess,hGuess,' '];
        compareString5 = [' ',arrayOfLetters(iLetter),eGuess,rGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            wCounter = wCounter + 1;
        end
        if strcmp(compareString,compareString3)
            wCounter = wCounter + 1;
        end
        if strcmp(compareString,compareString4)
            wCounter = wCounter + 1;
        end
        if strcmp(compareString,compareString5)
            wCounter = wCounter + 1;
        end
    end
    arrayOfw(iLetter) = arrayOfw(iLetter) + wCounter;
end

% _where_
for iLetter = 1:26
    wCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',arrayOfLetters(iLetter),hGuess,eGuess,rGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            wCounter = wCounter + 1;
        end
    end
    arrayOfw(iLetter) = arrayOfw(iLetter) + wCounter;
end

arrayOfw(aIndex) = 0;
arrayOfw(iIndex) = 0;
arrayOfw(lIndex) = 0;
arrayOfw(nIndex) = 0;
arrayOfw(dIndex) = 0;
arrayOfw(hIndex) = 0;
arrayOfw(tIndex) = 0;
arrayOfw(eIndex) = 0;
arrayOfw(sIndex) = 0;
arrayOfw(rIndex) = 0;
arrayOfw(oIndex) = 0;
arrayOfw(mIndex) = 0;
arrayOfw(uIndex) = 0;
arrayOfw(fIndex) = 0;
arrayOfw(vIndex) = 0;
arrayOfw(gIndex) = 0;
arrayOfw(bIndex) = 0;


for i = 1:26
    if arrayOfw(i) < 0
        arrayOfw(i) = 0;
    end
end

for i = 1:26
    if arrayOfw(i) == max(arrayOfw) && sum(arrayOfw) ~= 0
        wIndex = i;
        wGuess = arrayOfLetters(wIndex);
    end
end

closeness = zeros(1,26);
if wIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 2.224893);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            wIndex = i;
            wGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(wIndex) = 1000;

disp(['wGuess: ',wGuess]);

waitbar(18/26,hwb)


%% Y scan

arrayOfy = zeros(1,26);

% ly_
for iLetter = 1:26
    yCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [lGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            yCounter = yCounter + 1;
        end
    end
    arrayOfy(iLetter) = yCounter;
end

% you, say, any, way, boy, day, may
for iLetter = 1:26
    yCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),oGuess,uGuess,' '];
        compareString3 = [' ',sGuess,aGuess,arrayOfLetters(iLetter),' '];
        compareString4 = [' ',aGuess,nGuess,arrayOfLetters(iLetter),' '];
        compareString5 = [' ',wGuess,aGuess,arrayOfLetters(iLetter),' '];
        compareString6 = [' ',bGuess,oGuess,arrayOfLetters(iLetter),' '];
        compareString7 = [' ',dGuess,aGuess,arrayOfLetters(iLetter),' '];
        compareString8 = [' ',mGuess,aGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString3)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString4)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString5)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString6)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString7)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString8)
            yCounter = yCounter + 1;
        end
    end
    arrayOfy(iLetter) = arrayOfy(iLetter) + yCounter;
end

% my, by
for iLetter = 1:26
    yCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',mGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',bGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString3)
            yCounter = yCounter + 1;
        end
    end
    arrayOfy(iLetter) = arrayOfy(iLetter) + yCounter;
end

% only, very, many, they, your
for iLetter = 1:26
    yCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',oGuess,nGuess,lGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',vGuess,eGuess,rGuess,arrayOfLetters(iLetter),' '];
        compareString4 = [' ',mGuess,aGuess,nGuess,arrayOfLetters(iLetter),' '];
        compareString5 = [' ',tGuess,hGuess,eGuess,arrayOfLetters(iLetter),' '];
        compareString6 = [' ',arrayOfLetters(iLetter),oGuess,uGuess,rGuess,' '];
        if strcmp(compareString,compareString2)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString3)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString4)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString5)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString6)
            yCounter = yCounter + 1;
        end
    end
    arrayOfy(iLetter) = arrayOfy(iLetter) + yCounter;
end

% today, every
for iLetter = 1:26
    yCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',tGuess,oGuess,dGuess,aGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',eGuess,vGuess,eGuess,rGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            yCounter = yCounter + 1;
        elseif strcmp(compareString,compareString3)
            yCounter = yCounter + 1;
        end
    end
    arrayOfy(iLetter) = arrayOfy(iLetter) + yCounter;
end

% anyway
for iLetter = 1:26
    yCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',aGuess,nGuess,arrayOfLetters(iLetter),wGuess,aGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            yCounter = yCounter + 1;
        end
    end
    arrayOfy(iLetter) = arrayOfy(iLetter) + yCounter;
end

arrayOfy(aIndex) = 0;
arrayOfy(iIndex) = 0;
arrayOfy(lIndex) = 0;
arrayOfy(nIndex) = 0;
arrayOfy(dIndex) = 0;
arrayOfy(hIndex) = 0;
arrayOfy(tIndex) = 0;
arrayOfy(eIndex) = 0;
arrayOfy(sIndex) = 0;
arrayOfy(rIndex) = 0;
arrayOfy(oIndex) = 0;
arrayOfy(mIndex) = 0;
arrayOfy(uIndex) = 0;
arrayOfy(vIndex) = 0;
arrayOfy(gIndex) = 0;
arrayOfy(bIndex) = 0;
arrayOfy(wIndex) = 0;
arrayOfy(fIndex) = 0;

for i = 1:26
    if arrayOfy(i) < 0
        arrayOfy(i) = 0;
    end
end

for i = 1:26
    if arrayOfy(i) == max(arrayOfy) && sum(arrayOfy) ~= 0
        yIndex = i;
        yGuess = arrayOfLetters(yIndex);
    end
end

closeness = zeros(1,26);
if yIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 1.900888);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            yIndex = i;
            yGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(yIndex) = 1000;

disp(['yGuess: ',yGuess]);

waitbar(19/26,hwb)

%% C scan

arrayOfc = zeros(1,26);

% nce
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [nGuess,arrayOfLetters(iLetter),eGuess];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 1;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% came come
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),aGuess,mGuess,eGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),oGuess,mGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 1;
        end
        if strcmp(compareString,compareString3)
            cCounter = cCounter + 1;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% could
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',arrayOfLetters(iLetter),oGuess,uGuess,lGuess,dGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 1;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + 5*cCounter;
end

% because
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',bGuess,eGuess,arrayOfLetters(iLetter),aGuess,uGuess,sGuess,eGuess];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 1000;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% ic_ (weak)
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [iGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + .1;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% __ can __ (weak)
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),aGuess,nGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + .1;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% __ much such call cell __
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',mGuess,uGuess,arrayOfLetters(iLetter),hGuess,' '];
        compareString3 = [' ',sGuess,uGuess,arrayOfLetters(iLetter),hGuess,' '];
        compareString4 = [' ',arrayOfLetters(iLetter),aGuess,lGuess,lGuess,' '];
        compareString5 = [' ',arrayOfLetters(iLetter),eGuess,lGuess,lGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 10;
        end
        if strcmp(compareString,compareString3)
            cCounter = cCounter + 10;
        end
        if strcmp(compareString,compareString4)
            cCounter = cCounter + 1;
        end
        if strcmp(compareString,compareString5)
            cCounter = cCounter + 1;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% __ which since __
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-6)
        compareString = encodedString(iCount:iCount+6);
        compareString2 = [' ',wGuess,hGuess,iGuess,arrayOfLetters(iLetter),hGuess,' '];
        compareString3 = [' ',sGuess,iGuess,nGuess,arrayOfLetters(iLetter),eGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 10;
        end
        if strcmp(compareString,compareString3)
            cCounter = cCounter + 10;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% __ across __
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',aGuess,arrayOfLetters(iLetter),rGuess,oGuess,sGuess,sGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 10;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

% __ country __
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-8)
        compareString = encodedString(iCount:iCount+8);
        compareString2 = [' ',arrayOfLetters(iLetter),oGuess,uGuess,nGuess,tGuess,rGuess,yGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter + 10;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end





% subtract for "p"eople and u"p"
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,oGuess,arrayOfLetters(iLetter),lGuess,eGuess,' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter - 100;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end
for iLetter = 1:26
    cCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',uGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            cCounter = cCounter - 10;
        end
    end
    arrayOfc(iLetter) = arrayOfc(iLetter) + cCounter;
end

arrayOfc(aIndex) = 0;
arrayOfc(iIndex) = 0;
arrayOfc(lIndex) = 0;
arrayOfc(nIndex) = 0;
arrayOfc(dIndex) = 0;
arrayOfc(hIndex) = 0;
arrayOfc(tIndex) = 0;
arrayOfc(eIndex) = 0;
arrayOfc(sIndex) = 0;
arrayOfc(rIndex) = 0;
arrayOfc(oIndex) = 0;
arrayOfc(mIndex) = 0;
arrayOfc(uIndex) = 0;
arrayOfc(vIndex) = 0;
arrayOfc(gIndex) = 0;
arrayOfc(bIndex) = 0;
arrayOfc(wIndex) = 0;
arrayOfc(fIndex) = 0;
arrayOfc(yIndex) = 0;

for i = 1:26
    if arrayOfc(i) < 0
        arrayOfc(i) = 0;
    end
end

for i = 1:26
    if arrayOfc(i) == max(arrayOfc) && sum(arrayOfc) ~= 0
        cIndex = i;
        cGuess = arrayOfLetters(cIndex);
    end
end

closeness = zeros(1,26);
if cIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 2.575785);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            cIndex = i;
            cGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(cIndex) = 1000;

disp(['cGuess: ',cGuess]);

waitbar(20/26,hwb)

%% P scan

arrayOfp = zeros(1,26);

% _up_ _pre
for iLetter = 1:26
    pCounter = 0;
    for iCount = 1:(stringLength-3)
        compareString = encodedString(iCount:iCount+3);
        compareString2 = [' ',uGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',arrayOfLetters(iLetter),rGuess,eGuess];
        if strcmp(compareString,compareString2)
            pCounter = pCounter + 1;
        end
        if strcmp(compareString,compareString3)
            pCounter = pCounter + 10;
        end
    end
    arrayOfp(iLetter) = arrayOfp(iLetter) + pCounter;
end

% _put_ _post
for iLetter = 1:26
    pCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),uGuess,tGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),oGuess,sGuess,tGuess];
        if strcmp(compareString,compareString2)
            pCounter = pCounter + 1;
        end
        if strcmp(compareString,compareString3)
            pCounter = pCounter + 1;
        end
    end
    arrayOfp(iLetter) = arrayOfp(iLetter) + pCounter;
end

% _upon_
for iLetter = 1:26
    pCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',uGuess,arrayOfLetters(iLetter),oGuess,nGuess,' '];
        if strcmp(compareString,compareString2)
            pCounter = pCounter + 10;
        end
    end
    arrayOfp(iLetter) = arrayOfp(iLetter) + pCounter;
end

% _people_ _public_
for iLetter = 1:26
    pCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',arrayOfLetters(iLetter),eGuess,oGuess,arrayOfLetters(iLetter),lGuess,eGuess,' '];
        compareString3 = [' ',arrayOfLetters(iLetter),uGuess,bGuess,lGuess,iGuess,cGuess,' '];
        if strcmp(compareString,compareString2)
            pCounter = pCounter + 100;
        end
        if strcmp(compareString,compareString3)
            pCounter = pCounter + 100;
        end
    end
    arrayOfp(iLetter) = arrayOfp(iLetter) + pCounter;
end

% _p
for iLetter = 1:26
    pCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [' ',arrayOfLetters(iLetter)];
        if strcmp(compareString,compareString2)
            pCounter = pCounter + 1;
        end
    end
    arrayOfp(iLetter) = arrayOfp(iLetter) + pCounter;
end

arrayOfp(aIndex) = 0;
arrayOfp(iIndex) = 0;
arrayOfp(lIndex) = 0;
arrayOfp(nIndex) = 0;
arrayOfp(dIndex) = 0;
arrayOfp(hIndex) = 0;
arrayOfp(tIndex) = 0;
arrayOfp(eIndex) = 0;
arrayOfp(sIndex) = 0;
arrayOfp(rIndex) = 0;
arrayOfp(oIndex) = 0;
arrayOfp(mIndex) = 0;
arrayOfp(uIndex) = 0;
arrayOfp(vIndex) = 0;
arrayOfp(gIndex) = 0;
arrayOfp(bIndex) = 0;
arrayOfp(wIndex) = 0;
arrayOfp(fIndex) = 0;
arrayOfp(yIndex) = 0;
arrayOfp(cIndex) = 0;

for i = 1:26
    if arrayOfp(i) < 0
        arrayOfp(i) = 0;
    end
end

for i = 1:26
    if arrayOfp(i) == max(arrayOfp) && sum(arrayOfp) ~= 0
        pIndex = i;
        pGuess = arrayOfLetters(pIndex);
    end
end

closeness = zeros(1,26);
if pIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 1.795742);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            pIndex = i;
            pGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(pIndex) = 1000;

disp(['pGuess: ',pGuess]);

waitbar(21/26,hwb)

%% K Scan IMPROVE

arrayOfk = zeros(1,26);

% book keen keel peek seek week
for iLetter = 1:26
    kCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',bGuess,oGuess,oGuess,arrayOfLetters(iLetter),' '];
        compareString3 = [' ',arrayOfLetters(iLetter),eGuess,eGuess,nGuess,' '];
        compareString4 = [' ',arrayOfLetters(iLetter),eGuess,eGuess,lGuess,' '];
        compareString5 = [' ',pGuess,eGuess,eGuess,arrayOfLetters(iLetter),' '];
        compareString6 = [' ',sGuess,eGuess,eGuess,arrayOfLetters(iLetter),' '];
        compareString7 = [' ',wGuess,eGuess,eGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            kCounter = kCounter + 10;
        end
        if strcmp(compareString,compareString3)
            kCounter = kCounter + 10;
        end
        if strcmp(compareString,compareString4)
            kCounter = kCounter + 10;
        end
        if strcmp(compareString,compareString5)
            kCounter = kCounter + 10;
        end
        if strcmp(compareString,compareString6)
            kCounter = kCounter + 10;
        end
        if strcmp(compareString,compareString7)
            kCounter = kCounter + 10;
        end
    end
    arrayOfk(iLetter) = kCounter;
end

% ck, kn
for iLetter = 1:26
    kCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [cGuess,arrayOfLetters(iLetter)];
        compareString3 = [arrayOfLetters(iLetter),nGuess];
        if strcmp(compareString,compareString2) || strcmp(compareString,compareString3)
            kCounter = kCounter + 1;
        end
    end
    arrayOfk(iLetter) = arrayOfk(iLetter) + kCounter;
end

% ks_
for iLetter = 1:26
    kCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [arrayOfLetters(iLetter),sGuess,' '];
        if strcmp(compareString,compareString2)
            kCounter = kCounter + 1;
        end
    end
    arrayOfk(iLetter) = arrayOfk(iLetter) + kCounter;
end

% like look(heavy) make take know(heavy)
for iLetter = 1:26
    kCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',lGuess,iGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString3 = [' ',lGuess,oGuess,oGuess,arrayOfLetters(iLetter),' '];
        compareString4 = [' ',mGuess,aGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString5 = [' ',tGuess,aGuess,arrayOfLetters(iLetter),eGuess,' '];
        compareString6 = [' ',arrayOfLetters(iLetter),nGuess,oGuess,wGuess,' '];
        if strcmp(compareString,compareString2)
            kCounter = kCounter + 1;
        end
        if strcmp(compareString,compareString3)
            kCounter = kCounter + 10;
        end
        if strcmp(compareString,compareString4)
            kCounter = kCounter + 1;
        end
        if strcmp(compareString,compareString5)
            kCounter = kCounter + 1;
        end
        if strcmp(compareString,compareString6)
            kCounter = kCounter + 10;
        end
    end
    arrayOfk(iLetter) = arrayOfk(iLetter) + kCounter;
end

arrayOfk(aIndex) = 0;
arrayOfk(iIndex) = 0;
arrayOfk(lIndex) = 0;
arrayOfk(nIndex) = 0;
arrayOfk(dIndex) = 0;
arrayOfk(hIndex) = 0;
arrayOfk(tIndex) = 0;
arrayOfk(eIndex) = 0;
arrayOfk(sIndex) = 0;
arrayOfk(rIndex) = 0;
arrayOfk(oIndex) = 0;
arrayOfk(mIndex) = 0;
arrayOfk(uIndex) = 0;
arrayOfk(vIndex) = 0;
arrayOfk(gIndex) = 0;
arrayOfk(bIndex) = 0;
arrayOfk(wIndex) = 0;
arrayOfk(fIndex) = 0;
arrayOfk(yIndex) = 0;
arrayOfk(cIndex) = 0;
arrayOfk(pIndex) = 0;

for i = 1:26
    if arrayOfk(i) < 0
        arrayOfk(i) = 0;
    end
end

for i = 1:26
    if arrayOfk(i) == max(arrayOfk) && sum(arrayOfk) ~= 0
        kIndex = i;
        kGuess = arrayOfLetters(kIndex);
    end
end

closeness = zeros(1,26);
if kIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 0.739906);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            kIndex = i;
            kGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(kIndex) = 1000;

disp(['kGuess: ',kGuess]);

waitbar(22/26,hwb)

%% Q Scan

qIndex = 0;
qTally = 0;
qFound = false;

for iLetter = 1:26
    for iCount = 1:length(encodedString)-2
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [arrayOfLetters(iLetter),uGuess,aGuess];
        compareString3 = [arrayOfLetters(iLetter),uGuess,eGuess];
        compareString4 = [arrayOfLetters(iLetter),uGuess,iGuess];
        compareString5 = [arrayOfLetters(iLetter),uGuess,oGuess];
        compareString6 = [arrayOfLetters(iLetter),uGuess,uGuess];
        compareString7 = [arrayOfLetters(iLetter),uGuess,yGuess];
        if strcmpi(compareString,compareString2)
            qTally = qTally +1;
        end
        if strcmpi(compareString,compareString3)
            qTally = qTally +1;
        end
        if strcmpi(compareString,compareString4)
            qTally = qTally +1;
        end
        if strcmpi(compareString,compareString5)
            qTally = qTally +1;
        end
        if strcmpi(compareString,compareString6)
            qTally = qTally +1;
        end
        if strcmpi(compareString,compareString7)
            qTally = qTally +1;
        end
    end
    if arrayOfVariables(iLetter) ~= 0
            if arrayOfVariables(iLetter) - qTally == 0 && qFound == false && arrayOfLetters(iLetter) ~= aGuess && arrayOfLetters(iLetter) ~= nGuess && arrayOfLetters(iLetter) ~= dGuess && arrayOfLetters(iLetter) ~= tGuess && arrayOfLetters(iLetter) ~= hGuess && arrayOfLetters(iLetter) ~= eGuess && arrayOfLetters(iLetter) ~= oGuess && arrayOfLetters(iLetter) ~= sGuess && arrayOfLetters(iLetter) ~= iGuess && arrayOfLetters(iLetter) ~= gGuess && arrayOfLetters(iLetter) ~= rGuess && arrayOfLetters(iLetter) ~= lGuess && arrayOfLetters(iLetter) ~= uGuess && arrayOfLetters(iLetter) ~= fGuess && arrayOfLetters(iLetter) ~= mGuess && arrayOfLetters(iLetter) ~= vGuess && arrayOfLetters(iLetter) ~= bGuess && arrayOfLetters(iLetter) ~= wGuess && arrayOfLetters(iLetter) ~= yGuess && arrayOfLetters(iLetter) ~= cGuess && arrayOfLetters(iLetter) ~= pGuess && arrayOfLetters(iLetter) ~= kGuess
                qGuess = arrayOfLetters(iLetter);
                qIndex = iLetter;
                qFound = true;
                disp(['qGuess: ',qGuess])
                percentOfEachLetter(qIndex) = 1000;
            end
    end
    qTally = 0;
end

waitbar(23/26,hwb)

%% XJZ Scan

arrayOfxjz = zeros(3,26);

% X SCAN

% exp(make heavy) ext(make heavy) _ex exa exc(make heavy) ox_ ax_ 
% subtract for... _xi _xo _xu
for iLetter = 1:26
    xCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [eGuess,arrayOfLetters(iLetter),pGuess];
        compareString3 = [eGuess,arrayOfLetters(iLetter),tGuess];
        compareString4 = [' ',eGuess,arrayOfLetters(iLetter)];
        compareString5 = [eGuess,arrayOfLetters(iLetter),aGuess];
        compareString6 = [eGuess,arrayOfLetters(iLetter),cGuess];
        compareString7 = [oGuess,arrayOfLetters(iLetter),' '];
        compareString8 = [aGuess,arrayOfLetters(iLetter),' '];
        
        % subtracting...
        
        compareString9 = [' ',arrayOfLetters(iLetter),iGuess];
        compareString10 = [' ',arrayOfLetters(iLetter),oGuess];
        compareString11 = [' ',arrayOfLetters(iLetter),uGuess];
        if strcmp(compareString,compareString2)
            xCounter = xCounter + 10;
        end
        if strcmp(compareString,compareString3)
            xCounter = xCounter + 10;
        end
        if strcmp(compareString,compareString4)
            xCounter = xCounter + 1;
        end
        if strcmp(compareString,compareString5)
            xCounter = xCounter + 1;
        end
        if strcmp(compareString,compareString6)
            xCounter = xCounter + 10;
        end
        if strcmp(compareString,compareString7)
            xCounter = xCounter + 1;
        end
        if strcmp(compareString,compareString8)
            xCounter = xCounter + 1;
        end
        
        % subtracting...
        
        if strcmp(compareString,compareString9)
            xCounter = xCounter - 10;
        end
        if strcmp(compareString,compareString10)
            xCounter = xCounter - 10;
        end
        if strcmp(compareString,compareString11)
            xCounter = xCounter - 10;
        end
    end
    arrayOfxjz(1,iLetter) = xCounter;
end

% ex
for iLetter = 1:26
    xCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [eGuess,arrayOfLetters(iLetter)];
        if strcmp(compareString,compareString2)
            xCounter = xCounter + 1;
        end
    end
    arrayOfxjz(1,iLetter) = arrayOfxjz(1,iLetter) + xCounter;
end

%_six_ (make heavy)
for iLetter = 1:26
    xCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [' ',sGuess,iGuess,arrayOfLetters(iLetter),' '];
        if strcmp(compareString,compareString2)
            xCounter = xCounter + 10;
        end
    end
    arrayOfxjz(1,iLetter) = arrayOfxjz(1,iLetter) + xCounter;
end



% J SCAN

% bj dj
for iLetter = 1:26
    jCounter = 0;
    for iCount = 1:(stringLength-1)
        compareString = encodedString(iCount:iCount+1);
        compareString2 = [bGuess,arrayOfLetters(iLetter)];
        compareString3 = [dGuess,arrayOfLetters(iLetter)];
        if strcmp(compareString,compareString2)
            jCounter = jCounter + 1;
        end
        if strcmp(compareString,compareString3)
            jCounter = jCounter + 1;
        end
    end
    arrayOfxjz(2,iLetter) = arrayOfxjz(2,iLetter) + jCounter;
end

% _ja _jo _ju
for iLetter = 1:26
    jCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [' ',arrayOfLetters(iLetter),aGuess];
        compareString3 = [' ',arrayOfLetters(iLetter),oGuess];
        compareString4 = [' ',arrayOfLetters(iLetter),uGuess];
        if strcmp(compareString,compareString2)
            jCounter = jCounter + 1;
        end
        if strcmp(compareString,compareString3)
            jCounter = jCounter + 1;
        end
        if strcmp(compareString,compareString4)
            jCounter = jCounter + 5;
        end
    end
    arrayOfxjz(2,iLetter) = arrayOfxjz(2,iLetter) + jCounter;
end

% june july just
for iLetter = 1:26
    jCounter = 0;
    for iCount = 1:(stringLength-4)
        compareString = encodedString(iCount:iCount+4);
        compareString2 = [' ',arrayOfLetters(iLetter),uGuess,nGuess,eGuess];
        compareString3 = [' ',arrayOfLetters(iLetter),uGuess,lGuess,yGuess];
        compareString4 = [' ',arrayOfLetters(iLetter),uGuess,sGuess,tGuess];
        if strcmp(compareString,compareString2)
            jCounter = jCounter + 10;
        end
        if strcmp(compareString,compareString3)
            jCounter = jCounter + 10;
        end
        if strcmp(compareString,compareString4)
            jCounter = jCounter + 10;
        end
    end
    arrayOfxjz(2,iLetter) = arrayOfxjz(2,iLetter) + jCounter;
end

% january (make heavy)
for iLetter = 1:26
    jCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [' ',arrayOfLetters(iLetter),aGuess,nGuess,uGuess,aGuess,rGuess,yGuess];
        if strcmp(compareString,compareString2)
            jCounter = jCounter + 10;
        end
    end
    arrayOfxjz(2,iLetter) = arrayOfxjz(2,iLetter) + jCounter;
end



% Z SCAN

% iza izo ize
for iLetter = 1:26
    zCounter = 0;
    for iCount = 1:(stringLength-2)
        compareString = encodedString(iCount:iCount+2);
        compareString2 = [iGuess,arrayOfLetters(iLetter),aGuess];
        compareString3 = [iGuess,arrayOfLetters(iLetter),aGuess];
        compareString4 = [iGuess,arrayOfLetters(iLetter),aGuess];
        if strcmp(compareString,compareString2)
            zCounter = zCounter + 1;
        end
        if strcmp(compareString,compareString3)
            zCounter = zCounter + 1;
        end
        if strcmp(compareString,compareString4)
            zCounter = zCounter + 1;
        end
    end
    arrayOfxjz(3,iLetter) = arrayOfxjz(3,iLetter) + zCounter;
end

% _zone_ izing_
for iLetter = 1:26
    zCounter = 0;
    for iCount = 1:(stringLength-5)
        compareString = encodedString(iCount:iCount+5);
        compareString2 = [' ',arrayOfLetters(iLetter),oGuess,nGuess,eGuess,' '];
        compareString3 = [iGuess,arrayOfLetters(iLetter),iGuess,nGuess,gGuess,' '];
        if strcmp(compareString,compareString2)
            zCounter = zCounter + 10;
        end
        if strcmp(compareString,compareString3)
            zCounter = zCounter + 1;
        end
    end
    arrayOfxjz(3,iLetter) = arrayOfxjz(3,iLetter) + zCounter;
end

% ization_
for iLetter = 1:26
    zCounter = 0;
    for iCount = 1:(stringLength-7)
        compareString = encodedString(iCount:iCount+7);
        compareString2 = [iGuess,arrayOfLetters(iLetter),aGuess,tGuess,iGuess,oGuess,nGuess];
        if strcmp(compareString,compareString2)
            zCounter = zCounter + 1;
        end
    end
    arrayOfxjz(3,iLetter) = arrayOfxjz(3,iLetter) + zCounter;
end

arrayOfxjz(:,aIndex) = 0;
arrayOfxjz(:,iIndex) = 0;
arrayOfxjz(:,lIndex) = 0;
arrayOfxjz(:,nIndex) = 0;
arrayOfxjz(:,dIndex) = 0;
arrayOfxjz(:,hIndex) = 0;
arrayOfxjz(:,tIndex) = 0;
arrayOfxjz(:,eIndex) = 0;
arrayOfxjz(:,sIndex) = 0;
arrayOfxjz(:,rIndex) = 0;
arrayOfxjz(:,oIndex) = 0;
arrayOfxjz(:,mIndex) = 0;
arrayOfxjz(:,uIndex) = 0;
arrayOfxjz(:,vIndex) = 0;
arrayOfxjz(:,gIndex) = 0;
arrayOfxjz(:,bIndex) = 0;
arrayOfxjz(:,wIndex) = 0;
arrayOfxjz(:,fIndex) = 0;
arrayOfxjz(:,yIndex) = 0;
arrayOfxjz(:,cIndex) = 0;
arrayOfxjz(:,pIndex) = 0;
arrayOfxjz(:,kIndex) = 0;

if qFound
    arrayOfxjz(:,qIndex) = 0;
end

xIndex = 0;
jIndex = 0;
zIndex = 0;

arrayOfx = arrayOfxjz(1,:);
arrayOfj = arrayOfxjz(2,:);
arrayOfz = arrayOfxjz(3,:);

for i = 1:3
    for j = 1:26
        if arrayOfxjz(i,j) < 0
            arrayOfxjz(i,j) = 0;
        end
    end
end

repeat = true;
while repeat
    for i = 1:3
        for j = 1:26
            
            vectorOfxjz = [arrayOfxjz(1,:),arrayOfxjz(2,:),arrayOfxjz(3,:)];
            
            if arrayOfxjz(i,j) == max(vectorOfxjz) && sum(vectorOfxjz) > 0
                if i == 1
                    xIndex = j;
                    xGuess = arrayOfLetters(xIndex);
                    arrayOfxjz(1,:) = 0;
                    arrayOfxjz(:,xIndex) = 0;
                    if jIndex > 0 && zIndex > 0
                        repeat = false;
                    end
                elseif i == 2
                    jIndex = j;
                    jGuess = arrayOfLetters(jIndex);
                    arrayOfxjz(2,:) = 0;
                    arrayOfxjz(:,jIndex) = 0;
                    if xIndex > 0 && zIndex > 0
                        repeat = false;
                    end
                elseif i == 3
                    zIndex = j;
                    zGuess = arrayOfLetters(zIndex);
                    arrayOfxjz(3,:) = 0;
                    arrayOfxjz(:,zIndex) = 0;
                    if jIndex > 0 && xIndex > 0
                        repeat = false;
                    end
                end
            end
            
        end
    end
    if sum(vectorOfxjz) == 0
        repeat = false;
    end
end

if xIndex == 0
    for i = 1:26
        if arrayOfxjz(1,i) < 0
            arrayOfxjz(1,i) = 0;
        end
    end
    
    for i = 1:26
        if arrayOfxjz(1,i) == max(arrayOfx) && sum(arrayOfx) ~= 0
            xIndex = i;
            xGuess = arrayOfLetters(xIndex);
        end
    end
end

closeness = zeros(1,26);
if xIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 0.179556);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            xIndex = i;
            xGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(xIndex) = 1000;

if jIndex == 0
    for i = 1:26
        if arrayOfxjz(2,i) < 0
            arrayOfxjz(2,i) = 0;
        end
    end
    
    for i = 1:26
        if arrayOfxjz(2,i) == max(arrayOfj) && sum(arrayOfj) ~= 0
            jIndex = i;
            jGuess = arrayOfLetters(jIndex);
        end
    end
end

closeness = zeros(1,26);
if jIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 0.145188);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            jIndex = i;
            jGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(jIndex) = 1000;

if zIndex == 0
    for i = 1:26
        if arrayOfxjz(3,i) < 0
            arrayOfxjz(3,i) = 0;
        end
    end
    
    for i = 1:26
        if arrayOfxjz(3,i) == max(arrayOfz) && sum(arrayOfz) ~= 0
            zIndex = i;
            zGuess = arrayOfLetters(zIndex);
        end
    end
end

closeness = zeros(1,26);
if zIndex == 0
    for i = 1:26
        closeness(i) = abs( percentOfEachLetter(i) - 0.079130);
    end
    
    for i = 1:26
        if closeness(i) == min(closeness)
            zIndex = i;
            zGuess = arrayOfLetters(i);
        end
    end
end
percentOfEachLetter(zIndex) = 1000;

disp(['xGuess: ',xGuess]);

disp(['jGuess: ',jGuess]);

disp(['zGuess: ',zGuess]);

for i = 1:26
    if ~qFound
        if aIndex == i || bIndex == i || cIndex == i || ...
                dIndex == i || eIndex == i || fIndex == i || ...
                gIndex == i || hIndex == i || iIndex == i || ...
                jIndex == i || kIndex == i || lIndex == i || ...
                mIndex == i || nIndex == i || oIndex == i || ...
                pIndex == i || rIndex == i || ...
                sIndex == i || tIndex == i || uIndex == i || ...
                vIndex == i || wIndex == i || xIndex == i || ...
                yIndex == i || zIndex == i
            
            % do nothing
            
        else
            
            qIndex = i;
            qGuess = arrayOfLetters(qIndex);
            disp(['qGuess: ',qGuess]);
            qFound = true;
            
        end
    end
end

waitbar(26/26,hwb)

%% Decode String

decodedString = encodedString;
arrayOfGuesses = [aGuess,bGuess,cGuess,dGuess,eGuess,fGuess,gGuess,hGuess,iGuess,jGuess,kGuess,lGuess,mGuess,nGuess,...
    oGuess,pGuess,qGuess,rGuess,sGuess,tGuess,uGuess,vGuess,wGuess,xGuess,yGuess,zGuess];
arrayOfIndeces = [aIndex,bIndex,cIndex,dIndex,eIndex,fIndex,gIndex,hIndex,iIndex,jIndex,kIndex,lIndex,mIndex,nIndex,...
    oIndex,pIndex,qIndex,rIndex,sIndex,tIndex,uIndex,vIndex,wIndex,xIndex,yIndex,zIndex];

for iLetter = 1:26
    for iCount = 1:length(decodedString)
        if strcmpi(encodedString(iCount),arrayOfGuesses(iLetter))
            decodedString(iCount) = arrayOfLetters(iLetter);
        end
    end
end

close(hwb)

%% Connect back to GUI

handles.OutPut.String = decodedString;

newArray = zeros(1,26);
for i = 1:26
    m = arrayOfIndeces(i);
    newArray(m) = i;
end

for i = 1:26
    j = 1+2*(i-1);
    handles.Translation.String(j) = upper(arrayOfLetters(newArray(i)));
end

% handles.A.String = aGuess;
% handles.B.String = bGuess;
% handles.C.String = cGuess;
% handles.D.String = dGuess;
% handles.E.String = eGuess;
% handles.F.String = fGuess;
% handles.G.String = gGuess;
% handles.H.String = hGuess;
% handles.I.String = iGuess;
% handles.J.String = jGuess;
% handles.K.String = kGuess;
% handles.L.String = lGuess;
% handles.M.String = mGuess;
% handles.N.String = nGuess;
% handles.O.String = oGuess;
% handles.P.String = pGuess;
% handles.Q.String = qGuess;
% handles.R.String = rGuess;
% handles.S.String = sGuess;
% handles.T.String = tGuess;
% handles.U.String = uGuess;
% handles.V.String = vGuess;
% handles.W.String = wGuess;
% handles.X.String = xGuess;
% handles.Y.String = yGuess;
% handles.Z.String = zGuess;

end