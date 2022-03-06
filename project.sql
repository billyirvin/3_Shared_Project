-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 01:03 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `IV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ID`, `Name`, `Number`, `Email`, `IV`) VALUES
(21, 'iwzCv/22DB9w', '2lmOp6HwQk8t5Q==', 'iwzC3/OpGx9y+tN5qw==', 'ddc02c5b8d2f734e4564919e242c32d3'),
(21, 'Iy1IKDZMDNnT+Q==', 'eXMUcS4QRpmPow==', 'Iy1IKFZCE87T+89mY7o=', '70f5989d9b6b0288d5faa7d5947eef35'),
(21, 'm5T5cztIe3PU', 'ycqvZGoPNSyPEA==', 'm5T5EzVXbHPWCoTgIg==', '79e73c8d9bea40d7ea82628777bd606f');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` mediumblob NOT NULL,
  `IV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `name`, `address`, `DOB`, `phone`, `image`, `IV`) VALUES
(21, 'sL4VxAA=', '$2y$10$GWum8Ul.zAea/VSO5HidPOUrRqjkm8SJJFg1UNQ/QEUWVyfPVMZZO', 'sL4VxAAJFsUJ7XM=', '4+NAiA5BFsMa4nQsuf05', '4uVUmUgETYdPtQ==', '4u9MkEwdR45Mtg==', 0x224c512b4753486b354e66453277683149314a6c4b39433750356e786c7a75637873744263516f527435472f744436746654576f356b6b70536b376b423552685976476a4a7949547a714e794650372b6d564f565346456b57547431324a47614a5676487354697673323272304a4a6877554750624f6c2f7268724e346c6450576c3161377570494c556e41646648796b3034762b53513830694166536c564e416c35367950464338676345395668423432504c4b563953356264504d476b2f4d5945786737305973377936735a627132724846317342772b613943556f6f75595076766c61473139624f77576d56462f5a653731562f71617378757752477056754830633769435672504f5434547973314e4e4269364e4633306a6d4d744d73735a53596c62552f7766752b524d2f307337584737317249336e4f4874616969666a4a49574673715454796a486850416b753271424d66344d2f796f6a4b4665597277565476577566464346334c7236435851566d45645a6b6b693061387750426570544278716f46347938334d6a33362f724b5a4e4b344852434b6c636f737936432f436f507159354b6874784c767a3945343934696a33744651684d5a512f6d4a5378694565526f30615a4a4c5667446677757a4565566f517031495049507657506346422b6e59376f6874706a544c7070534b777167693166544f456537462f745a6c7844634f394778357533436e302b7378766f4c6552637856382f78546a564c646b516d6b69324742705842503362777479426865777679715950343757476573364f6c62374d32303377464b416a3042325173377669524b733158724f7a537467587457525a3143426b68393270305766782b415766303461452b6c466172336a33362f325362512b5276736a6f3137636654534362626432745535446a674e3478745463375247587a5a4f6e6e61535a4e7865395077664d486a734a535942477a51624f417a634464456f5a614d7779414a70787a36755076685736636f57416e4e346a6342634d4b4c72426130577368687a376549764a782f684e4c394654794457753131356973486770396a6e77415a434a4b484f326c7153336e4a61544f687257635a7041397a54346d342f546248516e313637684c796e2b5a5252743852636451563778483670624434477658694f5252736b302f61383754736263513776666f6b354674444937417a5564304e45446f3278332f49633434536646324a69327059413943647945744f6243326e6d42736f71353979786f334c486a6e73376f416f576179357270636968334f6a50556464522b7a52634e50306d424271666534564244577631594353682f3865484443765a5070646f4a50336b775a7a304530532f507737545765664c7141505258566765475948766e636c50702b536741315a6630684251565349315433437147664c4e7751644d415665344c6f6e7647314846554e4f6a6e52515671546579696e776e794a452f326f33396f5867656f6a4e4474665151462b4e4c416b337842663943633454546331466d66706b4177487834773149462b41776149524850314866426c5730556a4f5a3168614d747869396f747453584e7474553564336f7838425766392f573454425a6a425375746552567757776c65432f474b57387339434561654745624d4e6877416b70415a5151686f6462724b77626f715778656155313161394e785a3174566f4a364d7947436b5834704b44765545335464504641557961482b5a626d492f574152387368696e48687158646a3839646b5239724132326335354345785a34464f6645597848715a375a79774f5047434a766f736368423969655955694c395151472f72643339596d3866474b694c7676796552703844354f7a765638414e71776b59675738734c72476d656a45496e54776f77717a454c6a56334a6943736a5152724e5333646d7037796d5232756d736c356f3970445164335a7377784d42774b6f63436e59766a796d445a636f5354785a6b7a516e5176392f644164715843574c587574475254733665627a764e535073336e366b6d6f424f48706f6c5044344d746a45643743674d51482b7963666f696b6a75736e6345762f2f34365a36663639337036596573392f7a67754134694d4c38726f39694b6e5a557073774561715a66634174536b4670324746333533556255586632364b792f535133784c63717a7568434a554a4866716a5331566137774f3033657350556f626f7139512f32506f6d6873507a483043466c72346f4152485163354270305a345977312b55662f6d38652b36556e7553534839786c516b4951735a4e626235504562716f466c5647633067636c6c7a452f564d6858635958786e6b4a626d346e626a434450703341735765744949766439306d70416c41303543555938626b746f31585a52725574337943586e39455a6a5538315370422b544c2b303473456d3470506e7741726c7245714a4d696e3966324a3651454a30562b4133366271316c44583933696d415377454f4d39422b4d7879673933745345544a4b4275696d646e306a754b5277503051666b725873754d374b676c7839576f56792b637530523246757555314c56544a4f517261704335522b7a476c513842456a7a54736a574b5376582f506f4138484a66343346553051652f375a554a4c677977476e476c524f426f4c5a7645774b384548387475565a4759352b51634c437a664b6b56626375356446524846545277504e444b52784d45364e5941364a484f73376e6f38474c596f79357a534769712b6c746c632b686e766e7362495748596841443845614354654673745535425170423656735041524938647a686442424d4a44694558746f39505231494a5577636752304b634d4c33706e454855756a3955397558756b664d6b30514e487962396271423354324d7434626e6b307054524b62417a5961316942334373666b572f6b78476a536957616e53755466472b746862426556775254555833535955634f6131766e6c7442706a394336314b6f6a735433426b4e4b3659496f6734646c5153542b416c61494930394c61586252735267314f786f3459363574696f53714e4949384e76776e6a362f49454f42524a664d59304c7646446e5063534942424f35333477764d6c716435434d35414e77584b55745a61536f4a7153714579473648594475687644335964414a556c5948686b514873676e4450665537486446702b42426b39787a683765736e6f62685a566b445035575649573151366959422b6344537745696876715a59484b6d426239545141664e51496c457a365a4c546d2f5779634c64394c44416d594f354b49397034756d31306c3366343743617a5833487a6651727069396846306e6366314375616a4671336e2f38345646414f6b68706d4a49353053636633475354356241674e595347684f49747a7441364247482f386f2b314f336b7566727a2b6d586c516842686265563961496d636538453945594e734d6852456f6b6f76724b444d6a63753464755a4a62633741753459666f4f51634b574d7774784f38746d79586938416e6b354e79446f304661415a6546413567336a53434343757a482f6279635842334f4f51667a534a7475765642625872593734344c786f71516c5a65475a4c51693266365949576861576467466d78356c33376e56493247744c7534426f335269502f374e2f2f50537a4e6b364c7765546a327965494177464f6a6b30373755454f3671745a45727a684174364f70583262774f4b4f736269496b774e575545774579486d506a6c626731467968386b65685163484e6c6b43417832486c6952446d6a7a5577326a796c37684f2b7764644f6f6947465a76714769664a615779754a4143446d754a7a636930322f59396e39733842624c59336d6a75736b7a5963416c48536948364e772b4f4d4d355738544e35374c78454745764e786264684f77653265686c565167683830584e527648584677432f334c4345384554632b4171566c504d497143696958566d4570716f726139413275624a386278697332354858695a384450676d4542523172537574355358727a5649753570486142426e375a566d53766a37686538716d436669514c70727446476c36445455717868304678497661384c2b484367513743697938464175566d65467878303833616d6b30533234537854723637544e7842756563445772747232766f2b4b6274533144772b724d3363724a514a6676544c76716c424d47797a794b4e554749436f394a36774634794b54617178777a553454557a7a704a437042585a4b714a2f2b32454a674c49797375743370686f6e43554c70634e726a596875652b646c31363549304a5a7741304170474c72416b6d5a42544743506e736e377052396d326c6d534e43553578616f5466674343507a39772b4c5462707a334e524e79695a657737734248347a4d366d42453969774148556d344b3774776f4e464d2b597679784a48725263664e6a5a77716f307174673666496467374a7371434c42766a726361584a5176626c712f7867772f3356414d3565755356466b694c424a502f717947454c2f33565a2f7a7531386f636b536d384a39487543504a766452625956486c75694f376a63557775556e706f56695069393847416e43582b31416b486e654a65526a306850302f4350487451574935346730434c456577484a504332744a3237627142533776476c556a65626d434b5635364c4e45392b5549516d62314467776a486b526b414b4155513764753573747a4e6341676a34412f486e586e35594f4b35505a50687351694b656459692f56765a415258577630352f7034444c364e4b6d4231764d6930324e473733745a746d4a454e4475556b6e744e5741576f57346b35724a65416a313736446873514351376459386a755a3871647858384555674c36706b766a61706b7034574446767246506f3238654d344d554d436c676562425a4d6550396d584568414c4649735253373258593146546d6b57666a6f7361682f323767614333774534526a6c674634393750556f6f4d634f5479304845714d744e72744353696b61394c6b4243524d44686b2b512f6d484649507639784f5030305a4c752f576864326b4e4233436e666f646545376b69327257557a463241762f484f50714d334c6b43587a6756474949663059505263734b56574b534b5233506a7a35597044336b634b33314453373275396b63667a2b6b6e50416d415a4264694658302f2b2f3751567346775769546b45314e6f4357717153484c55595054632f727a38676d51625448454578684d4b623061337266614f376c4e485165445a4f75724273682b374f474946337572505855374e44744f6b6e47733141394f364c2b71314242586a45574446304243696c6c73556231546532705973794b48763738434b39596a4f5043685649366f4d72577a51457337794d48316f695767724846576c674672615a5837516d694b7853614e66584d6d6a346d4e2b423135594a673971686a6f2f547a75557953624a782f766a4745694a70627369523138576a485a2f507556697156334e786f4e41596f2f415852704757675650533747706e58484e56346c3136634d77504e536e73546e416a4b346755796534754373416375555355726150486a7759467341446f4f3154326f335a4b616777616d616b733874706a596d6b4272723343614d596e4353735774767a376f4a527576454e383770636745322b48586c525678374c624c63616941304f6d51436e45516a4e6b53744a7a42674f7a3873596a536866624763315168743138414276563857326a416e4e7377504f694548516a6b6c355131572b4e2f476c62346239304645767754443856316a4e57522b47456f534c663835456c544a63413842767941344372794c61653033733864647551635748396272526175413957706f2f2b6a50432b634d46714a3769366b6f7877336b3663533746686b586c3077364a53646437394b3165584942525858716c58494155624b57556b3630507565354c764a7967326c464f647967374f335854767550486c784c65583663414f5572484456686f4365667352442f72586278334332372b2b6e6e7656542f344c497736644b487633396a4e494a524c74533870686d454752474a36707a50314779733138564834594e4e352f6d35334e4c524a425a5a77416e3439696e5a446a344d5074733476595642465275656b5561526435453144327751784f6e4355494a33545639663134424f67725156464366496f307362787779307870337a6e386936693076423736394e416a324674734d4e596e6150313652734f6b6c49564538716e39316a326d71344a6c574d73794144505a4c755177653758665a364377514b564f7a31314368584456574c62774a526d2b2f564d49416749616d4a535665713761334838444c47672f6f622b352b5843654d43614c687033336d56416c7875716b6c54556235496f454d427974486c5a77664550373176574a6a6876546877484c743759534b51655063794672324a4641366b4c417648475277676569462b4248314759387650564d42644f41353745487771624b5557583142715551624359357632614c344b31355959354c4652514d7751397a765a4d645166523372366d6b6a727758554f6f616a78304556484e756f333948764d32415163385534304e4246385565474c533878577a56393739333139707435514a6152784d59656e767469685a467432316a4c2b3274796a696c48694b51376b777459682f6b725a2b707238475146524862412f74756362677568387a6d4e50643130426d6b704a457a4466556666785a74377a56777979703253657569763235376972303469766d71594b58456871395a364a6c64682b76724331394e6c4c76347777756d6f54392f6b723263775a3451336c3343534162353539634554596553614c7248766176737a2b71376d73646a4d5344692f4c7544444266684966522f7933616a4866305944784c582b456d31584368376652316d5a31757530564762474c3978494a2b65744166656b684d6c636a686a46386271396f7631512b314d504e376e42694e33697750653348636c56577631386d5878755554646938532f4233476f717873453742393151456a7a68485742694b5657665552674d54336b383937414f64305947717555365265787058575a7a555a387062773637546f366758495a4c7a6d4f67445768694b413665534541676f4d7249736a4e6f502f39446a4868335533514f74596e585a6273467738323730346878576f6b41646457756f5a53447372766e2b69684e5833726544716c712b69544b47733845344b6d6963326c4d314655794d652f44512f7a724162433833695174537a486b36345143365039534c794461363557544463485a6663565a744d2f335663484745447a467969504c7935776d494d41396c4b6c44635546682f44396f71434c335379656b746d4a337651447742796c32564f467341426f584b7234574174553379533333315769493268786a4756316b595a42306d364f506e6f3544424b532f3356625a4f6a49744f71584f4772637a582b716a6434707454313751494a6c3575396d6854327a48414e637a6a6b4736756a3737765943692b72754b2f4b4e526936514f2b35537336657a78715950774530596255556f6b543168436b484d6e76543262334e33386c396b4456374b70302f3545523671325873756f4250626d43704879344d4c454c316e6a686c63674a4a4b5771793679455134674c2f6378707342506b66754c34584e6a52486d794f724261673050652b655971546c2b32442b6b7a6a744b4c5a434a492f596b6e75554877745a2f5357454b47776e5643746b567a4a784b397268734c476c787639794e31544d6e4131526350534f703772445a427a4746426671556d72567a373254653973316c7a4d43386b6766666a38687a577153706a624465564e646d315330685a49316977597a2f7a4147304c4372664951587946663972504a45784d6d356658525a566c754e3858667442674569723333496e444b4e3974463466675a324c6b56692f725a317245556d7777387552314a57524f2b2b67756961696f78765854366b6442444d6e675930384c634d532f654b6842704b583041794a614d726f4b5a384162386671532f4959325262736a6575544c3962457637374156493931746b704556474c7258786956587331525655434b724f776239355058514c487463565a452b642b48397238674d424371496b364c5a6b782f67474673334b754772642b364f55324a6c6155764f3454674632337939534d437433634b5374765569506e2b4f7247476c435679373432554752654c49556f4a76386d564a6c66726d6a3176766b344f59676b544861784c54446c4e314d3131625344765330464a64454d6c7a325253766c38397075714e49584f484445624b557767534b706b2b3241726f4c36594566534f754d5141566e6d5a41674471674f774e7632303066704b4f7579372f645a39396f646b356b2f762f66797a42366e6f6863565654594c3954655771617a57763453526b792f5143613055756b6a525873782b7346435279512f314e6d44523948724b34304c2f70566a5470616b58694c67435630456d6c4a356e54384f526f7456627643414a39393353396a52494736694573683452423966726462582b4757425a643833346b77303231375954615773384b5a704847574b45354d564534463131392f346f7468526b64706f77716d77776871716e424462584e6935634a696361616a306d6d7a78733056555450735542594b6b746a2f6b4e3330765637566d355a67587665347a4e56393472537865642f68344171723378583873474b304f35684d4551394f7a5955366c4b5636506b364c53347671665032696f36547669426d39475349746852504c443375576c456e6d664c413652746464487355504c4668706571396a327749667062637a2b7169584b68302b66547a3155576a544b67346b492b563452794f4b74536953656f2f31624d4277774848554c3143426970744c6c42756b6d7166656b416e642b6c383531484c5766704634764a33566c39446d6b336d636b6d3375545148594e4a3850467253514b7a34574d5452774764735974334d72654b66577a4c5977526943316a38576e4c2b67416a3378667a4862485771694d7a66572b6b415452374f596e44652b774459427146596f63706e673367395a2f51395749394477537a416748394145434349467a384e59656b736a374b4e5a6e66427331386c65534a32334273634b4f4e6c475335316f4b7353514358676d704f37344a4a7055524c754a4a48444f706763735331674d5758684548772b7356424f34784d706d673572417158694a6e5169516962636451325731506a564b35473946486731304f4e77434445594263575439547a496a6171554f477647744b50385537775979313538524b4645687757463364694c706f2b6f7652376751344f6465566b6c6e51427949772f4331704b507833456548616a572f62797a2b5576586a47774875537357386c4b2f5a78414f6a465242342f366a2f575430326a662b4a4f7a6754444e4b5971665766676a774944557a4175726f4f677a3370664b5976685137376868586a7330435758436a39775477595276705a364f676d4d4d6a747766616d7935687430724f78677666685670547a454358363361792b6a595a776a4e774b6270676455746f564836504b2b6a2b6a58755a694d3166545157532f6b4f445167717179477659467450454d654f59635a3831797459456c64566e644661376671386155306c74417a7830774c7632732f763646784f4c656a2b585a54444c394c557261504643786558366d6b7655424e6f7576314a736a464b426c5136447074532b624d4658352f4d723253656c734855304565426a423431647a334c414c6e46724a506f4f504970677265336f386c78646e4e77334f6c2b75554a6f373246754b497850774a4b324c5a44436c587353567855345669484d7752734d42665a46315751766c394243356866724a49616e6755356e6c506b754e34314c4750395673704b4367505a4647646c384e707574306d364c444456626f39354b49327a514e46364c782f485478654951764a772f653635464d4951456d505138587561674f524c544e34742f7668737250562b7756674d5345366d4a7a71635a7a4c775259304b616d6b76677931746e39634f695a724861564f596744537a5077644970565a4f686e4f716746774f6662377946437754514834595378484633334d504958665133324a6c50624d75757a6a786a43636b4a474f554b46534351424c532b744d4e7550522b352b565753524266386235484167426e324f2b3759737538356656316d6b6f546e714441734d2f3078475a4a417333394367556f476b306c463051666833683779554d416a704c44596e35366b416a4b52513132744e706845796372596274584662502b5a57684573707a387a2b73514a6b43564537392f2f64592b4d537771432f4b746d554e6a6e6b563146573643564b5a59623730566a336e45334172736e676434624b786f2f79376a31764e7075764f517634766641795a685267326d682b312f2f4567715569563970554c6158365931704f77434e71705a34424744555a6639694f706c6650446151316f7a43612b6765375179526438716c777870624a766e546e2b6f4f6b59696c2b5850626276776f49306e64736e762b744c36466b6d4e795253344e5931707a52583364546a425475656945346f50576873322f4148583630794e636b732f67696a794f656b4b4a59726a5731485655624d6142793159416f3838364f344b774c4f69457a4d4b4a312b5145567a476b6e4f71777172373562747435584c6763594d31586f624b5357355a51623564644c2f50783258584a33547652684e4a4779316e375571314e5a7747774b36776e76452b584d627845646d6377326443464a376e4a6b6a58562f4f366a546644737a61673637463237342b44696c30514656556e786368524a70434e51626d487931733633526f416257315159475835797478774b59686a727237396a757152374b4772424b7a66626e4d6764534d6745425a364a526f494a75767936455072642b38752f783048533069415745364f36534e57735677507a56755a494a6e546838332b325867474b3144592f5479723477636769794e75524e776f64366f5838326a7748624c5058657358355a594359684b366d71437930314a2f303058536a31787966485a32335971772b7870317443745437526b616d4147554a61414c396f756e626e6f72516c3941555132635177452b5474372b32527a65525a7744673479445232546456304844522f764d393851434c6a625a507374327774517276536f76564c3557712f48524938514e57707071673935537442477a652f6f50724c577a33787051465961546b3132477a4b336342342b6469576d53313068413746356771416e732f56687a6c4e6c504c4f6c6b496e536a6f334c7a53716d634f7a6c31724b77754252445236387745354d5747726c686d4c55354d6e64493373756c665638416279377078475476305145436b4d4458336b697144676f717755707a704637696630546a6b2b45626a772b57626f51376539716e574e4e616d565131776f557862475a326b78645758486361756f43496948775753746b797243587043643164477356334268654d446d587753645866694875704a7865644135634f346e476e4d78616f59327a6d44775631344f69644535724a70484d616d63576a4f6751747a6d72546d35796c732f6d73585235626c4d77686a69736a527730425134684437584f4d746c326f39686a53534c4a497957456a5146335838756f614f5135494b736551657245616570546a31317031636f6e776333584e6f4668612f444f3343304647353266784c725276454957517750667678595332624f502f63355575426e58646479376b655636393459665577414861756949612f745a6d34664e38516830372f71526662316c6b6f51304d4934426e3679473251356c4d72427448705730395037666a52386d77515154396241797357444f6d31335343744c44633159323339725a694e71437243534748554d5762647459617977724f57676f34614f2b556858524e6b576244306b76733977744e506a676c78534f78714a372b496c564a4d555255617758784b47654f6857474741387746576c454467304f4e7573615077485a544670526b4f30576d5754585456626d67344a6d70446f783973575361583867774f6834674b5239624c4d324e42784b6a4e344a626f715554453964773d22, '049d38f659ffa124a9cac646763c3ccb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
