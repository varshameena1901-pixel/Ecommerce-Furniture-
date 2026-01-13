import pandas as pd
df = pd.read_csv('Ecommerce_Furniture.csv')
# Check missing value
df.isnull().sum()
print(df.isnull().sum())

# output original price - to mane null so drop it

df.drop (columns=['originalPrice'], inplace=True)

print(df['price'])

#clean shipping

df['tagText'] = df['tagText'].fillna('others')
df['tagText'] = df['tagText'].apply(lambda x: 'free shipping' if x=='free shipping' else 'others')

#Export clean data to SQL

df.to_csv('Ecommerce_Furniture.csv', index=False)

