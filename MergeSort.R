MergeSort<-function(data){
  #funkce merge sort seradi vzestupne vstupni data
  #vstup..vektor hodnot
  #vystup..serazeny vektor hodnot
  #
  #deklarace promennych
  vysledek=c()
  i=0
  if (length(data)<=1) return(data)
  #rozdeleni vektoru na dva
  stred=length(data) %/% 2
  leva=data[1:stred]
  prava=data[(stred+1):length(data)]
  #dalsi volani samotne funkce
  leva=MergeSort(leva)
  prava=MergeSort(prava)
  #skladani vysledku
  while (length(leva)>0 && length(prava)>0){     #dokud neni jeden z vektoru prazdny
    if (leva[1]<prava[1]){                       #pokud je prvni hodnota leveho vektoru mensi, radi se do vysledneho vektoru jako prvni
      vysledek[i+1]=leva[1]
      leva=leva[-1]                              #zarazena hodnota se z leveho vektoru odstrani
    }else {                                      #pokud je prvni hodnota praveho vektoru mensi nebo stejna, radi se do vysledku jako prvni
      vysledek[i+1]=prava[1]
      prava=prava[-1]
    }
    i=i+1                                        #po kazde iteraci smycky se k indexu pro vysledek pricte 1, aby se hodnoty neprepisovaly, ale tvorily vektor
  }
  vysledek=c(vysledek,leva,prava) 
  vysledek
}