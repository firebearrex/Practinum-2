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
 
# export dataframe to new file (csv)
df_title.to_csv(r'/Users/fulia/Git/Practinum-2/df_data/df_title.csv', index=False, header=True)

# extract selected columns and form a new df
df_temp = df_title[["titleID", "genres"]]

# convert the genres column type from str/text to list  (prepare for next step: explode)
df_temp.loc[:, 'genres'] = df_temp['genres'].str.split(",") 

# explode the list-like value in ONE row into multiple rows with one value for each
df_temp = df_temp.explode('genres').reset_index(drop=True) 

# replace the genre name with genreID

   # genres_names & genreID
genres_dict = {"Action": 1,
               "Adult": 2,
               "Adventure": 3,
               "Animation": 4,
               "Biography": 5,
               "Comedy": 6,
               "Crime": 7,
               "Documentary": 8,
               "Drama": 9,
               "Family": 10,
               "Fantasy": 11,
               "Film-Noir": 12,
               "Game-Show": 13,
               "History": 14,
               "Horror": 15,
               "Music": 16,
               "Musical": 17,
               "Mystery": 18,
               "News": 19,
               "Reality-TV": 20,
               "Romance": 21,
               "Sci-Fi": 22,
               "Short": 23,
               "Sport": 24,
               "Talk-Show": 25,
               "Thriller": 26,
               "War": 27,
               "Western": 28, 
               "\\N": None
              }

df_title_genre = df_temp.replace({'genres': genres_dict}) 


# create a dataframe from a dictionary and then change the column name
df_genre = pd.DataFrame.from_dict(genres_dict, orient='index')
df_genre=df_genre.reset_index().rename(columns={0: "genreID", "index":"genre_name"})


# change column order
df_genre=df_genre[["genreID", "genre_name"]]  

  
  
  
  
  
