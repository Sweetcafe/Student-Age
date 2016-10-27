clear
clc
NA=[320	101	343	2.4
321	91	355	1.7
322	70	377	2.5
323	46	371	2.4
324	56	424	2.1
325	20	442	2.2
326	74	326	2.6
327	76	302	2.1
328	15	240	2.6
329	28	161	0.4
330	34.5	164.5	0.1
331	30	181	0.6
332	27	206	0.2
333	42	242	1.4
334	30	246	1.6
335	31	254	1.1
336	39	254	1.2
337	50	289	0.7
338	72	288	1.1
339	60	246	0.7
340	95	299	1.4
341	81	297	1.6
342	80	287	1.4
343	67	314	1.7
344	21	330	1.1
345	36	360	1.2
346	76	344	0.8
347	97	339	2.4
348	103	337	1.2
349	104	341	1.1
350	97	345	1.6
351	89	345	0.8
352	81	344.5	0.8
353	81	350	0.4
354	89	350	0.7
355	92.5	351.5	1.1
356	88	353	1.4
357	81.5	353	0.9
358	87	359	1.1
359	84	361	0.9
360	76	355	0.8
361	58.5	370	0.6
362	34	306	0.1
363	38	418.5	1.4
364	61	425	1.4
365	57	429	1.6
366	60	433	1.4
367	85	369	1.9
368	107.5	362	1.4
369	131	366.5	1.2
370	170	342	1.2
371	174	340	1.5
];%%A区路口节点.

PA=[320
321
322
323
324
325
326
327
328
];

LA=[320	350
321	356
321	358
321	368
322	367
323	363
324	364
324	365
326	347
327	343
329	330
329	331
332	330
333	331
333	334
333	339
334	328
334	335
335	336
336	333
336	337
337	338
337	343
338	339
338	342
338	327
340	341
341	342
341	327
343	344
343	326
344	345
345	346
345	323
346	326
346	352
346	360
347	348
347	320
348	340
348	349
349	320
349	371
350	351
350	355
351	352
351	354
352	353
353	354
353	357
354	355
354	356
355	321
356	357
356	358
357	358
357	360
358	359
359	360
359	367
360	361
361	362
361	323
361	322
362	332
363	325
363	324
364	367
365	364
365	366
366	369
367	368
368	349
368	369
369	370
370	371
];

for i=1: length(NA);
for j=1: length(NA);
a(i,j)=inf;
end
end
for i=1: length(NA)
a(i,i)=0;
end
for i=1:length(LA)
x1=NA((LA(i,1)-319),2);%改
y1=NA((LA(i,1)-319),3);%改
x2=NA((LA(i,2)-319),2);%改
y2=NA((LA(i,2)-319),3);%改
d=((x2-x1)^2+(y2-y1)^2)^0.5;
a(LA(i,1)-319, LA(i,2)-319)=d;%改
a(LA(i,2)-319, LA(i,1)-319)=d;%改
end %%a为邻接矩阵
[D,R]=floyd(a);
P=[]
for m=329:371
    m
    for n=329:371
        for o=329:371
            for q=329:371
                for p=329:371
           PA(9)=m;
           PA(10)=n;
           PA(11)=o;
           PA(12)=q;
           PA(13)=p;
S=D(:,PA-319);%改
[min_S,index]=min(S,[],2);
%A=[index,NA(:,4)];
%A1 = A(:,1);
%A2 = A(:,2);
%B1 = unique(index);
%B2 = arrayfun(@(a)sum(A2(A1==a)),B1);


if max(min_S)<=30%&&max(B2)<=10;
   P(end+1,1)=m;
   P(end,2)=n;
   P(end,3)=o;
   P(end,4)=q;
   P(end,5)=p
end
   end
    end
    end
    end
end
xlswrite('DP',P)




