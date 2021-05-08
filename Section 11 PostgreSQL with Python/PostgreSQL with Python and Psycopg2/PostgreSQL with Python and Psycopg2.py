import psycopg2 as pg2


# creating a connection with postgresql
conn = pg2.connect(dbname='dvdrental', password=9946855730, user='postgres')

# Establish connection and start cursor to be ready to query
cur = conn.cursor()

# Pass in a PostgreSQL query as a string
cur.execute("SELECT * FROM payment")

# fetchall() - fetch all data, fetchone() - fetch data of first row, fetchmany(n) - fetch data of first n rows

# Return All rows at once and To save and index results, assign it to a variable
all_data = cur.fetchall()

# INSERTING INFORMATION
query1 = '''
        CREATE TABLE new_table (
            userid integer
            , tmstmp timestamp
            , type varchar(10)
        );
        '''

cur.execute(query1)

# commit the changes to the database
cur.commit()

# Don't forget to close the connection!
conn.close()
