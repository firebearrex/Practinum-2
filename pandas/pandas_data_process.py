# read csv/tsv file
df_title = pd.read_csv("/Users/fulia/Downloads/IMDb_dataset/datasets_imdb/title.basics.tsv", delimiter='\t')

# change column value by slicing and type from str to int
df_title['tconst'] = df_title['tconst'].str[2:].astype(int) 

 # change column name from tconst to titleID
 df_title.rename(columns = {'tconst':'titleID'}, inplace=True)
 
 # change cell value
 df_title.loc[(df_title.startYear == '\\N'),'startYear']=None
 
 # drop column
 df_title = df_title.drop(columns=['genres'])
 
 # find out values for ENUM type data by using groupby 
 df_title.groupby(['titleType']).count()
  
  
  
  
  
