import psycopg2

username = 'danylenko'
password = 'danylenko'
database = 'postgres'
host = 'localhost'
port = '5432'


query_1 = '''
SELECT TRIM(product_name), SUM(spent_money) FROM customers JOIN spendings USING(customer_id) JOIN products USING(product_barcode) GROUP BY product_name ORDER BY sum DESC
'''

query_2 = '''
SELECT TRIM(customer_id), SUM(100 * spent_money) / (customer_income / 12) FROM customers JOIN spendings USING(customer_id) GROUP BY customer_id
'''

query_3 = '''
SELECT TRIM(customer_id), customer_income, SUM(spent_money) FROM customers JOIN spendings USING(customer_id) GROUP BY customer_id ORDER BY customer_income
'''

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


with con:

    cur = con.cursor()

    print('1.  \n')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\n2.  \n')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\n3.  \n')
    cur.execute(query_3)
    for row in cur:
        print(row)
