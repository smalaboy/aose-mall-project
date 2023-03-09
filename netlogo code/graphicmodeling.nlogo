breed [Workers worker]
breed [Non-workers Non_worker]
breed [assistants assistant]

Workers-own [gender income]
Non-workers-own [gender income]

globals [


]

to setup
  clear-all
  ask patches [ setup-mall  ]

  ; create the mall
  ;ask patches with [pxcor < 10 and pycor < 5 and  pxcor > -10 and pycor > -5 ] [ set pcolor gray ]

  ; create The Workers
  create-Workers 325 [
      set shape "person"
      set color white
      set gender "men"
      set hidden? not hidden?
      setxy -20 one-of [1 0 -1]

  ]
 create-Workers 325 [
      set hidden? not hidden?
      set shape "person"
      set color white
      set gender "women"
      setxy -20 one-of [1 0 -1]
  ]


  ; create The Non-Workers
  create-Non-workers 175 [
      set hidden? not hidden?
      set shape "person"
      set color green
      set gender "men"
    setxy -20 one-of [1 0 -1]
  ]
  create-Non-workers 175[
      set hidden? not hidden?
      set shape "person"
      set color green
      set gender "women"
     ;setxy one-of [pxcor] of patches with [pcolor = black] one-of [pycor] of patches with [pcolor = black]
      setxy -30 one-of [1 0 -1]
  ]

   ; yellow : supermarkets,  orange : restaurant,  magenta : clothes,  blue : hardware & electronic store   pink : hairdresser
  ask n-of number-supermarket patches with [ all? neighbors [ pcolor = black ] and pcolor = Black and (pycor = -10 or pycor = 10 ) and (pxcor > -30 and pxcor < 30 )  ] [ set pcolor yellow ask neighbors [set pcolor yellow ask neighbors [set pcolor yellow ask neighbors [set pcolor yellow ask neighbors [set pcolor yellow ask neighbors with [pcolor = black][set pcolor red ]] ] ] ]  ]
  ask n-of number-restaurant patches with [all? neighbors [ pcolor = black ] and pcolor = Black and (pycor = -10 or pycor = 10 ) and (pxcor > -30 and pxcor < 30 ) ] [    set pcolor orange ask neighbors [set pcolor orange ask neighbors [set pcolor orange ask neighbors [set pcolor orange ask neighbors [set pcolor orange ask neighbors with [pcolor = black][set pcolor red ] ] ] ] ] ]
  ask n-of number-clothes patches with [all? neighbors [ pcolor = black ] and pcolor = Black and (pycor = -10 or pycor = 10 )and (pxcor > -30 and pxcor < 30 )] [    set pcolor magenta  ask neighbors [set pcolor magenta ask neighbors [set pcolor magenta ask neighbors [set pcolor magenta ask neighbors [set pcolor magenta ask neighbors with [pcolor = black][set pcolor red ]]]]] ]
  ask n-of number-Hardware-store patches with [all? neighbors [ pcolor = black ] and pcolor = Black and (pycor = -10 or pycor = 10 )and (pxcor > -30 and pxcor < 30 )] [    set pcolor blue ask neighbors [set pcolor blue ask neighbors [set pcolor blue ask neighbors [set pcolor blue ask neighbors [set pcolor blue ask neighbors with [pcolor = black][set pcolor red ]]]]] ]
  ask n-of number-hairdresser patches with [all? neighbors [ pcolor = black ] and pcolor = Black and (pycor = -10 or pycor = 10 )and (pxcor > -30 and pxcor < 30 )] [    set pcolor pink ask neighbors [set pcolor pink ask neighbors [set pcolor pink ask neighbors [set pcolor pink ask neighbors [set pcolor pink ask neighbors with [pcolor = black][set pcolor red ] ]]]]  ]
  init-income
  ;draw the entrance
  ask patches with [pxcor = -35 and pycor = 1  ] [set pcolor red]
  ask patches with [pxcor = -35 and pycor = 0  ] [set pcolor red]
  ask patches with [pxcor = -35 and pycor = -1  ] [set pcolor red]

END


to setup-mall

  if ( pycor = 4 ) [ set pcolor grey ]
  if ( pycor = 3 ) [ set pcolor grey ]
  if ( pycor = 2 ) [ set pcolor grey ]
  if ( pycor = 1 ) [ set pcolor grey ]
  if ( pycor = 0 ) [ set pcolor grey ]
  if ( pycor = -1 ) [ set pcolor grey ]
  if ( pycor = -2 ) [ set pcolor grey ]
  if ( pycor = -3 ) [ set pcolor grey ]
  if ( pycor = -4 ) [ set pcolor grey ]
 ; to add number coordinates to interface screen


end
to init-income

  ask Workers [
   let y random-float 1
   if y >= 0 and  y < 0.25     [set income 700]
    if y >= 0.25 and  y < 0.2825778036884949     [set income 784.8484848484849]
if y >= 0.2825778036884949 and  y < 0.31477550758712164     [set income 869.6969696969697]
if y >= 0.31477550758712164 and  y < 0.3464428133463181     [set income 954.5454545454545]
if y >= 0.3464428133463181 and  y < 0.37745611460059847     [set income 1039.3939393939395]
if y >= 0.37745611460059847 and  y < 0.4077151710460081     [set income 1124.2424242424242]
if y >= 0.4077151710460081 and  y < 0.43714014522065525     [set income 1209.090909090909]
if y >= 0.43714014522065525 and  y < 0.46566896512978734     [set income 1293.939393939394]
if y >= 0.46566896512978734 and  y < 0.4932549794419975     [set income 1378.7878787878788]
if y >= 0.4932549794419975 and  y < 0.5198648752298092     [set income 1463.6363636363635]
if y >= 0.5198648752298092 and  y < 0.5454768311673595     [set income 1548.4848484848485]
if y >= 0.5454768311673595 and  y < 0.5700788817586127     [set income 1633.333333333333]
if y >= 0.5700788817586127 and  y < 0.5936674705773245     [set income 1718.181818181818]
if y >= 0.5936674705773245 and  y < 0.6162461726783238     [set income 1803.0303030303028]
if y >= 0.6162461726783238 and  y < 0.637824568309928     [set income 1887.8787878787875]
if y >= 0.637824568309928 and  y < 0.6584172518388663     [set income 1972.7272727272723]
if y >= 0.6584172518388663 and  y < 0.6780429614095405     [set income 2057.575757575757]
if y >= 0.6780429614095405 and  y < 0.6967238163148457     [set income 2142.424242424242]
if y >= 0.6967238163148457 and  y < 0.7144846503706066     [set income 2227.2727272727266]
if y >= 0.7144846503706066 and  y < 0.7313524307731896     [set income 2312.121212121211]
if y >= 0.7313524307731896 and  y < 0.7473557529919852     [set income 2396.969696969696]
if y >= 0.7473557529919852 and  y < 0.7625244032161148     [set income 2481.818181818181]
if y >= 0.7625244032161148 and  y < 0.7768889807477827     [set income 2566.6666666666656]
if y >= 0.7768889807477827 and  y < 0.7904805735221073     [set income 2651.51515151515]
if y >= 0.7904805735221073 and  y < 0.8033304806431885     [set income 2736.363636363635]
if y >= 0.8033304806431885 and  y < 0.8154699764659523     [set income 2821.21212121212]
if y >= 0.8154699764659523 and  y < 0.8269301113296696     [set income 2906.0606060606046]
if y >= 0.8269301113296696 and  y < 0.8377415445680341     [set income 2990.9090909090896]
if y >= 0.8377415445680341 and  y < 0.8479344058878011     [set income 3075.757575757574]
if y >= 0.8479344058878011 and  y < 0.8575381816282529     [set income 3160.606060606059]
if y >= 0.8575381816282529 and  y < 0.8665816227916354     [set income 3245.4545454545437]
if y >= 0.8665816227916354 and  y < 0.8750926720743648     [set income 3330.3030303030287]
if y >= 0.8750926720743648 and  y < 0.8830984074338879     [set income 3415.151515151513]
if y >= 0.8830984074338879 and  y < 0.8906249999999999     [set income 3499.999999999998]
if y >= 0.8906249999999999 and  y < 0.8976976843851918     [set income 3584.8484848484827]
if y >= 0.8976976843851918 and  y < 0.9043407396689964     [set income 3669.6969696969677]
if y >= 0.9043407396689964 and  y < 0.9105774795288035     [set income 3754.5454545454522]
if y >= 0.9105774795288035 and  y < 0.9164302501664933     [set income 3839.393939393937]
if y >= 0.9164302501664933 and  y < 0.921920434838523     [set income 3924.242424242422]
if y >= 0.921920434838523 and  y < 0.9270684639386518     [set income 4009.0909090909067]
if y >= 0.9270684639386518 and  y < 0.9318938297089638     [set income 4093.9393939393917]
if y >= 0.9318938297089638 and  y < 0.9364151047677696     [set income 4178.787878787876]
if y >= 0.9364151047677696 and  y < 0.9406499637436847     [set income 4263.636363636361]
if y >= 0.9406499637436847 and  y < 0.9446152073949435     [set income 4348.484848484846]
if y >= 0.9446152073949435 and  y < 0.9483267886729101     [set income 4433.33333333333]
if y >= 0.9483267886729101 and  y < 0.9517998402598101     [set income 4518.181818181815]
if y >= 0.9517998402598101 and  y < 0.9550487031738268     [set income 4603.0303030303]
if y >= 0.9550487031738268 and  y < 0.9580869560907054     [set income 4687.878787878784]
if y >= 0.9580869560907054 and  y < 0.960927445080625     [set income 4772.72727272727]
if y >= 0.960927445080625 and  y < 0.9635823135029964     [set income 4857.575757575754]
if y >= 0.9635823135029964 and  y < 0.9660630318406208     [set income 4942.424242424239]
if y >= 0.9660630318406208 and  y < 0.9683804272888501     [set income 5027.272727272724]
if y >= 0.9683804272888501 and  y < 0.970544712945489     [set income 5112.121212121208]
if y >= 0.970544712945489 and  y < 0.9725655164736409     [set income 5196.969696969693]
if y >= 0.9725655164736409 and  y < 0.9744519081328812     [set income 5281.818181818178]
if y >= 0.9744519081328812 and  y < 0.9762124280944328     [set income 5366.666666666663]
if y >= 0.9762124280944328 and  y < 0.9778551129737044     [set income 5451.515151515148]
if y >= 0.9778551129737044 and  y < 0.9793875215289496     [set income 5536.363636363632]
if y >= 0.9793875215289496 and  y < 0.9808167594881376     [set income 5621.212121212117]
if y >= 0.9808167594881376 and  y < 0.9821495034776598     [set income 5706.060606060602]
if y >= 0.9821495034776598 and  y < 0.983392024036402     [set income 5790.909090909087]
if y >= 0.983392024036402 and  y < 0.9845502077072025     [set income 5875.757575757571]
if y >= 0.9845502077072025 and  y < 0.9856295782049429     [set income 5960.606060606056]
if y >= 0.9856295782049429 and  y < 0.9866353166666278     [set income 6045.454545454541]
if y >= 0.9866353166666278 and  y < 0.987572280993946     [set income 6130.303030303026]
if y >= 0.987572280993946 and  y < 0.9884450243030742     [set income 6215.1515151515105]
if y >= 0.9884450243030742 and  y < 0.9892578125     [set income 6299.999999999995]
if y >= 0.9892578125 and  y < 0.9900146410024908     [set income 6384.848484848481]
if y >= 0.9900146410024908 and  y < 0.9907192506321123     [set income 6469.696969696965]
if y >= 0.9907192506321123 and  y < 0.9913751427014663     [set income 6554.54545454545]
if y >= 0.9913751427014663 and  y < 0.9919855933231531     [set income 6639.393939393935]
if y >= 0.9919855933231531 and  y < 0.9925536669679169     [set income 6724.24242424242]
if y >= 0.9925536669679169 and  y < 0.9930822293000633     [set income 6809.0909090909045]
if y >= 0.9930822293000633 and  y < 0.9935739593185823     [set income 6893.939393939389]
if y >= 0.9935739593185823 and  y < 0.9940313608325259     [set income 6978.787878787874]
if y >= 0.9940313608325259 and  y < 0.9944567732990941     [set income 7063.636363636359]
if y >= 0.9944567732990941 and  y < 0.9948523820526204     [set income 7148.484848484844]
if y >= 0.9948523820526204 and  y < 0.9952202279522442     [set income 7233.3333333333285]
if y >= 0.9952202279522442 and  y < 0.9955622164755336     [set income 7318.1818181818135]
if y >= 0.9955622164755336 and  y < 0.9958801262847037     [set income 7403.0303030302985]
if y >= 0.9958801262847037 and  y < 0.9961756172913775     [set income 7487.878787878783]
if y >= 0.9961756172913775 and  y < 0.9964502382450825     [set income 7572.7272727272675]
if y >= 0.9964502382450825 and  y < 0.9967054338698685     [set income 7657.5757575757525]
if y >= 0.9967054338698685 and  y < 0.9969425515725977     [set income 7742.4242424242375]
if y >= 0.9969425515725977 and  y < 0.997162847745596     [set income 7827.2727272727225]
if y >= 0.997162847745596 and  y < 0.9973674936854784     [set income 7912.121212121207]
if y >= 0.9973674936854784 and  y < 0.9975575811490801     [set income 7996.9696969696915]
if y >= 0.9975575811490801 and  y < 0.9977341275665472     [set income 8081.8181818181765]
if y >= 0.9977341275665472 and  y < 0.997898080930758     [set income 8166.6666666666615]
if y >= 0.997898080930758 and  y < 0.9980503243813923     [set income 8251.515151515146]
if y >= 0.9980503243813923 and  y < 0.9981916805011062     [set income 8336.36363636363]
if y >= 0.9981916805011062 and  y < 0.998322915340447     [set income 8421.212121212116]
if y >= 0.998322915340447 and  y < 0.9984447421873259     [set income 8506.0606060606]
if y >= 0.9984447421873259 and  y < 0.9985578250960814     [set income 8590.909090909085]
if y >= 0.9985578250960814 and  y < 0.998662782190401     [set income 8675.757575757569]
if y >= 0.998662782190401 and  y < 0.9987601887536325     [set income 8760.606060606055]
if y >= 0.9987601887536325 and  y < 0.9988505801192986     [set income 8845.45454545454]
if y >= 0.9988505801192986 and  y < 0.9989344543739528     [set income 8930.303030303025]
if y >= 0.9989344543739528 and  y < 0.9990122748838457     [set income 9015.151515151509]
if y >= 0.9990122748838457 and  y < 0.99908447265625     [set income 9099.999999999995]

  ]
  ask Non-Workers [
    let y random-float 1
    if y >= 0 and  y < 0.25     [set income 300]
    if y >= 0.25 and  y < 0.2825778036884949     [set income 336.3636363636364]
if y >= 0.2825778036884949 and  y < 0.31477550758712164     [set income 372.72727272727275]
if y >= 0.31477550758712164 and  y < 0.3464428133463181     [set income 409.0909090909091]
if y >= 0.3464428133463181 and  y < 0.37745611460059847     [set income 445.4545454545455]
if y >= 0.37745611460059847 and  y < 0.4077151710460081     [set income 481.8181818181818]
if y >= 0.4077151710460081 and  y < 0.43714014522065525     [set income 518.1818181818182]
if y >= 0.43714014522065525 and  y < 0.46566896512978734     [set income 554.5454545454545]
if y >= 0.46566896512978734 and  y < 0.4932549794419975     [set income 590.909090909091]
if y >= 0.4932549794419975 and  y < 0.5198648752298092     [set income 627.2727272727273]
if y >= 0.5198648752298092 and  y < 0.5454768311673595     [set income 663.6363636363635]
if y >= 0.5454768311673595 and  y < 0.5700788817586127     [set income 699.9999999999999]
if y >= 0.5700788817586127 and  y < 0.5936674705773245     [set income 736.3636363636363]
if y >= 0.5936674705773245 and  y < 0.6162461726783238     [set income 772.7272727272725]
if y >= 0.6162461726783238 and  y < 0.637824568309928     [set income 809.0909090909089]
if y >= 0.637824568309928 and  y < 0.6584172518388663     [set income 845.4545454545453]
if y >= 0.6584172518388663 and  y < 0.6780429614095405     [set income 881.8181818181815]
if y >= 0.6780429614095405 and  y < 0.6967238163148457     [set income 918.1818181818179]
if y >= 0.6967238163148457 and  y < 0.7144846503706066     [set income 954.5454545454543]
if y >= 0.7144846503706066 and  y < 0.7313524307731896     [set income 990.9090909090905]
if y >= 0.7313524307731896 and  y < 0.7473557529919852     [set income 1027.272727272727]
if y >= 0.7473557529919852 and  y < 0.7625244032161148     [set income 1063.636363636363]
if y >= 0.7625244032161148 and  y < 0.7768889807477827     [set income 1099.9999999999995]
if y >= 0.7768889807477827 and  y < 0.7904805735221073     [set income 1136.363636363636]
if y >= 0.7904805735221073 and  y < 0.8033304806431885     [set income 1172.727272727272]
if y >= 0.8033304806431885 and  y < 0.8154699764659523     [set income 1209.0909090909086]
if y >= 0.8154699764659523 and  y < 0.8269301113296696     [set income 1245.454545454545]
if y >= 0.8269301113296696 and  y < 0.8377415445680341     [set income 1281.818181818181]
if y >= 0.8377415445680341 and  y < 0.8479344058878011     [set income 1318.1818181818176]
if y >= 0.8479344058878011 and  y < 0.8575381816282529     [set income 1354.5454545454538]
if y >= 0.8575381816282529 and  y < 0.8665816227916354     [set income 1390.9090909090903]
if y >= 0.8665816227916354 and  y < 0.8750926720743648     [set income 1427.2727272727266]
if y >= 0.8750926720743648 and  y < 0.8830984074338879     [set income 1463.6363636363628]
if y >= 0.8830984074338879 and  y < 0.8906249999999999     [set income 1499.999999999999]
if y >= 0.8906249999999999 and  y < 0.8976976843851918     [set income 1536.3636363636356]
if y >= 0.8976976843851918 and  y < 0.9043407396689964     [set income 1572.7272727272718]
if y >= 0.9043407396689964 and  y < 0.9105774795288035     [set income 1609.090909090908]
if y >= 0.9105774795288035 and  y < 0.9164302501664933     [set income 1645.4545454545446]
if y >= 0.9164302501664933 and  y < 0.921920434838523     [set income 1681.8181818181808]
if y >= 0.921920434838523 and  y < 0.9270684639386518     [set income 1718.181818181817]
if y >= 0.9270684639386518 and  y < 0.9318938297089638     [set income 1754.5454545454536]
if y >= 0.9318938297089638 and  y < 0.9364151047677696     [set income 1790.9090909090899]
if y >= 0.9364151047677696 and  y < 0.9406499637436847     [set income 1827.2727272727261]
if y >= 0.9406499637436847 and  y < 0.9446152073949435     [set income 1863.6363636363626]
if y >= 0.9446152073949435 and  y < 0.9483267886729101     [set income 1899.9999999999989]
if y >= 0.9483267886729101 and  y < 0.9517998402598101     [set income 1936.3636363636351]
if y >= 0.9517998402598101 and  y < 0.9550487031738268     [set income 1972.7272727272716]
if y >= 0.9550487031738268 and  y < 0.9580869560907054     [set income 2009.0909090909079]
if y >= 0.9580869560907054 and  y < 0.960927445080625     [set income 2045.4545454545441]
if y >= 0.960927445080625 and  y < 0.9635823135029964     [set income 2081.81818181818]
if y >= 0.9635823135029964 and  y < 0.9660630318406208     [set income 2118.181818181817]
if y >= 0.9660630318406208 and  y < 0.9683804272888501     [set income 2154.545454545453]
if y >= 0.9683804272888501 and  y < 0.970544712945489     [set income 2190.909090909089]
if y >= 0.970544712945489 and  y < 0.9725655164736409     [set income 2227.272727272726]
if y >= 0.9725655164736409 and  y < 0.9744519081328812     [set income 2263.636363636362]
if y >= 0.9744519081328812 and  y < 0.9762124280944328     [set income 2299.999999999998]
if y >= 0.9762124280944328 and  y < 0.9778551129737044     [set income 2336.363636363635]
if y >= 0.9778551129737044 and  y < 0.9793875215289496     [set income 2372.727272727271]
if y >= 0.9793875215289496 and  y < 0.9808167594881376     [set income 2409.0909090909076]
if y >= 0.9808167594881376 and  y < 0.9821495034776598     [set income 2445.4545454545437]
if y >= 0.9821495034776598 and  y < 0.983392024036402     [set income 2481.81818181818]
if y >= 0.983392024036402 and  y < 0.9845502077072025     [set income 2518.1818181818167]
if y >= 0.9845502077072025 and  y < 0.9856295782049429     [set income 2554.5454545454527]
if y >= 0.9856295782049429 and  y < 0.9866353166666278     [set income 2590.909090909089]
if y >= 0.9866353166666278 and  y < 0.987572280993946     [set income 2627.2727272727257]
if y >= 0.987572280993946 and  y < 0.9884450243030742     [set income 2663.6363636363617]
if y >= 0.9884450243030742 and  y < 0.9892578125     [set income 2699.999999999998]
if y >= 0.9892578125 and  y < 0.9900146410024908     [set income 2736.3636363636347]
if y >= 0.9900146410024908 and  y < 0.9907192506321123     [set income 2772.727272727271]
if y >= 0.9907192506321123 and  y < 0.9913751427014663     [set income 2809.090909090907]
if y >= 0.9913751427014663 and  y < 0.9919855933231531     [set income 2845.4545454545437]
if y >= 0.9919855933231531 and  y < 0.9925536669679169     [set income 2881.81818181818]
if y >= 0.9925536669679169 and  y < 0.9930822293000633     [set income 2918.181818181816]
if y >= 0.9930822293000633 and  y < 0.9935739593185823     [set income 2954.5454545454527]
if y >= 0.9935739593185823 and  y < 0.9940313608325259     [set income 2990.909090909089]
if y >= 0.9940313608325259 and  y < 0.9944567732990941     [set income 3027.272727272725]
if y >= 0.9944567732990941 and  y < 0.9948523820526204     [set income 3063.6363636363617]
if y >= 0.9948523820526204 and  y < 0.9952202279522442     [set income 3099.999999999998]
if y >= 0.9952202279522442 and  y < 0.9955622164755336     [set income 3136.363636363634]
if y >= 0.9955622164755336 and  y < 0.9958801262847037     [set income 3172.7272727272707]
if y >= 0.9958801262847037 and  y < 0.9961756172913775     [set income 3209.090909090907]
if y >= 0.9961756172913775 and  y < 0.9964502382450825     [set income 3245.454545454543]
if y >= 0.9964502382450825 and  y < 0.9967054338698685     [set income 3281.8181818181797]
if y >= 0.9967054338698685 and  y < 0.9969425515725977     [set income 3318.181818181816]
if y >= 0.9969425515725977 and  y < 0.997162847745596     [set income 3354.5454545454522]
if y >= 0.997162847745596 and  y < 0.9973674936854784     [set income 3390.9090909090887]
if y >= 0.9973674936854784 and  y < 0.9975575811490801     [set income 3427.272727272725]
if y >= 0.9975575811490801 and  y < 0.9977341275665472     [set income 3463.6363636363612]
if y >= 0.9977341275665472 and  y < 0.997898080930758     [set income 3499.9999999999977]
if y >= 0.997898080930758 and  y < 0.9980503243813923     [set income 3536.363636363634]
if y >= 0.9980503243813923 and  y < 0.9981916805011062     [set income 3572.7272727272702]
if y >= 0.9981916805011062 and  y < 0.998322915340447     [set income 3609.0909090909067]
if y >= 0.998322915340447 and  y < 0.9984447421873259     [set income 3645.454545454543]
if y >= 0.9984447421873259 and  y < 0.9985578250960814     [set income 3681.8181818181793]
if y >= 0.9985578250960814 and  y < 0.998662782190401     [set income 3718.1818181818157]
if y >= 0.998662782190401 and  y < 0.9987601887536325     [set income 3754.5454545454522]
if y >= 0.9987601887536325 and  y < 0.9988505801192986     [set income 3790.9090909090883]
if y >= 0.9988505801192986 and  y < 0.9989344543739528     [set income 3827.2727272727248]
if y >= 0.9989344543739528 and  y < 0.9990122748838457     [set income 3863.636363636361]
if y >= 0.9990122748838457 and  y < 0.99908447265625     [set income 3899.9999999999973]




  ]

end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
1141
448
-1
-1
13.0
1
10
1
1
1
0
1
1
1
-35
35
-16
16
0
0
1
ticks
30.0

BUTTON
51
10
114
43
NIL
setup\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
0
61
172
94
number-supermarket
number-supermarket
0
100
1.0
1
1
NIL
HORIZONTAL

SLIDER
0
100
172
133
number-hairdresser
number-hairdresser
0
50
1.0
1
1
NIL
HORIZONTAL

SLIDER
0
212
217
245
number-Hardware-store
number-Hardware-store
0
50
1.0
1
1
NIL
HORIZONTAL

SLIDER
1
137
173
170
number-clothes
number-clothes
0
50
1.0
1
1
NIL
HORIZONTAL

SLIDER
0
173
172
206
number-restaurant
number-restaurant
0
50
1.0
1
1
NIL
HORIZONTAL

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.3.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
