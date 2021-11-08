import psycopg2

username = 'danylenko'
password = 'danylenko'
database = 'postgres'
host = 'localhost'
port = '5432'


query_1 = '''
SELECT TRIM(product_name), SUM(order_quantity * product_price) FROM customers JOIN orders USING(customer_steamid) JOIN products USING(product_id) GROUP BY product_name ORDER BY sum DESC
'''

query_2 = '''
SELECT TRIM(customer_steamid), COUNT(order_id) FROM customers LEFT JOIN orders USING(customer_steamid) GROUP BY customer_steamid
'''

query_3 = '''
SELECT order_date, COUNT(*) FROM orders GROUP BY order_date ORDER BY order_date ASC
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
