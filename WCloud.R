
#wordcloud
## cargando los paquetes requeridos

require(tm)
require(SnowballC)
require(wordcloud)
require(NLP)
require(RColorBrewer)
require(tidytext)

## Cargando el texto

dataFrame <- df_loan
#colnames(dataFrame)[11]<-"GrupoDeAsignacion"
text <- dataFrame$emp_title
text <- gsub(" ", "",text) # quitar espacios

## Convirtiendo el archivo como un cuerpo de text para manejarlo de manera mas facil con las funciones de tm

Body_Corpus<-Corpus(VectorSource(text))

## Limpiando un poco el texto

Body_Corpus<- tm_map(Body_Corpus, tolower)
Body_Corpus<- tm_map(Body_Corpus, removePunctuation)
Body_Corpus<- tm_map(Body_Corpus, removeNumbers)
Body_Corpus<- tm_map(Body_Corpus, stripWhitespace)
Body_Corpus<- tm_map( Body_Corpus, stemDocument)
Body_Corpus<-tm_map(Body_Corpus, removeWords, stopwords("english"))

## Realizando una matriz de documentos y frecuencias

dtm<-TermDocumentMatrix(Body_Corpus)
matz<-as.matrix(dtm)
sort_m<- sort(rowSums(matz), decreasing = TRUE)
Data_Final<- data.frame(word= names(sort_m), freq= sort_m)

head(Data_Final, 20)


## Realizando la nube de palabras

wordcloud(words = Data_Final$word, freq = Data_Final$freq, min.freq = 1, max.words = 200, random.order = FALSE, colors = brewer.pal(8, "Dark2"))


