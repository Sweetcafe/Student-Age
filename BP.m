clear;close all;clc
loaddata
p = [166	185	193	159	226	171	201	147	172	156	182	186	162	150	159	117	181	146	42.3	28.2	154	179	13.5	175	113	50.5	78.6	178	213	170	162	203	167	164	167	158	133	247	166	209	182	235	173	151	191	223	221	217	164	173	202	182	211	246	164	179
15.8	15.7	9.8	14.2	16.2	9.29	13.3	14.5	8.85	11.5	11.3	9.26	8.23	6.63	10.7	16.1	10.1	20.7	10.3	12.4	13.8	12.2	3.36	5.84	15.8	11.6	14.6	28.8	19.1	13.9	13.2	13	13.1	12.9	15	14.4	22.8	17.3	8.1	6.43	6.49	15.6	19.1	19.7	65.4	24.4	20.1	25	22.2	8.99	18.6	17.3	24	21.5	16.1	21
24.5	31.5	25.9	39.7	23.8	9.29	26.6	30	7.86	32.5	11.3	37.1	27.1	21	11.7	7.04	4.04	23.8	9.7	53.1	53.3	17.9	16.8	24.9	47.3	6.3	9.7	32.4	36.2	29.8	19.8	90.8	14.1	18.6	27	37	31	8.65	62.8	86.9	61.7	23.4	17	64.2	35	86	155	28.2	35.5	36	17.7	24.8	17	93.2	38	35
700	701	541	896	606	307	551	659	551	639	767	958	625	627	612	988	1437	1232	629	370	621	1139	135	807	626	608	421	992	2220	1285	1521	1544	2278	2993	2056	1025	1633	2554	1233	2157	3870	1806	2497	2031	5361	3603	3172	2343	2212	1624	3785	3073	3836	2112	2135	1560
112	125	163	99.2	152	187	101	102	75.7	107	111	233	108	140	190	95.5	184	128	93.7	44.1	105	150	32.6	123	53.6	58.9	70.8	112	249	226	166	162	212	197	260	101	401	241	252	288	432	166	295	403	392	353	368	373	281	216	225	246	428	354	152	226
179	184	128	239	70.3	45.5	49.4	154	98.4	103	264	73	62.4	179	98.5	136	101	150	439	454	160	45.2	51.6	55.6	168	58.9	133	70.2	40	47.9	36.2	98.9	46.3	36.3	64.6	44.6	180	77.9	134	74	143	68.8	65.8	182	137	97.7	150	110	153	103	31	50.7	73.5	71.7	64.3	47.9
513	427	642	726	218	257	141	680	318	552	672	347	465	639	390	572	542	1092	888	852	723	218	182	126	627	139	464	169	168	330	133	394	134	94.5	237	72.5	899	373	649	219	367	188	287	874	688	479	739	494	549	257	67.3	109	351	195	240	330];
%������ʮ�������Ĳ���
t = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2]; 
net=newff(minmax(p),[2,1],{'tansig','purelin'});       %����һ�����������������
net.trainParam.show = 50;
net.trainParam.lr = 0.001;
net.trainParam.epochs = 30000;
net.trainParam.goal = 1e-10;                            %����ѵ������
net=train(net,p,t);                                    %���������ѵ�����Ƴ�����
pp=[58.2    106 152 85.5    144 85.7    144 170 176 192 188 201 147 172 156 132 153 143 213 192 171 162 203 164 151 191 223 221 217 167 164 167 158 133 169 247 185 209 182 235
5.42    1.87    0.8 1.7 0.7 1.09    0.3 4.16    0.57    7.06    8.28    13.3    14.5    8.85    11.5    15.9    5.87    2.84    19.1    20.1    10.5    13.2    13  20.1    19.7    65.4    24.4    20.1    25  13.1    12.9    15  14.4    22.8    8   17.3    3.9 6.43    6.49    15.6
29.7    40.5    12.5    3.99    15.1    4.2 9.11    9.32    27.3    32.9    22.6    26.6    30  7.86    32.5    17.7    34.8    15.7    36.2    23.8    30.5    19.8    90.8    28.9    64.2    35  86  155 28.2    14.1    18.6    27  37  31.3    30.8    8.65    31.3    86.9    61.7    23.4
323 542 1332    503 547 790 417 943 318 1969    1208    551 659 551 639 578 328 265 2220    1606    672 1521    1544    1062    2031    5361    3603    3172    2343    2278    2993    2056    1025    1633    1068    2554    1211    2157    3870    1806
138 177 176 62.3    79.7    170 552 260 133 343 231 101 102 75.7    107 92.4    163 123 249 156 145 166 162 161 403 392 353 368 373 212 197 260 101 401 99.1    241 190 288 432 166
179 184 128 238 71  45.8    49.5    155 99.4    103 1314    49.4    154 98.4    103 1314    264 73  62  40  47  36.2    98.9    47.3    182 137 97.7    150 110 36.5    65.5    44.8    180 228 53  77.5    134 74  143 68.9
513 427 646 762.6   218.5   257.9   141.5   680.8   318.8   553 1372    141 680 318 552 1372    672.5   347.5   465.8   168 330.5   133 394.5   134.5   874 688 479 739 494 96.5    237.8   72  899.5   289 817 373.5   649.8   219.8   367.5   188
];                                      %������Ҫ�б����ʮ����Ա����
y = sim(net, pp) ;                                    %������ѵ���õ�����ʶ����ʮ����Ա
y








net.trainParam.epochs=1000;%�������ѵ������2000��
net.trainParam.goal=0.001; %ѵ��Ŀ����С���0.001
net.trainParam.show=10; %ÿ���100����ʾһ��ѵ�����
net.trainParam.lr=0.05; %ѧϰ����0.05
bpnet=train(net,p,t);