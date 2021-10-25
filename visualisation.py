import psycopg2
import matplotlib.pyplot as plt

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


    cur.execute(query_1)
    graph_data = {}
    for row in cur:
        graph_data[row[0]] = row[1]

    plt.bar(graph_data.keys(), graph_data.values(), width=0.5)
    plt.xlabel('Товари')
    plt.ylabel('Витрати')
    plt.show()


    cur.execute(query_2)
    graph_data = {}
    pie_values = [0, 0, 0, 0]
    for row in cur:
        graph_data[row[0]] = row[1]

    for key in graph_data:
        if graph_data[key] < 1:
            pie_values[0] += 1
        elif graph_data[key] <= 5:
            pie_values[1] += 1
        elif graph_data[key] <= 7:
            pie_values[2] += 1
        else:
            pie_values[3] += 1

    labels = ['< 1%', '1-5%', '5-7%', '7-10%']
    fig, ax = plt.subplots()
    ax.pie(pie_values, labels=labels, autopct='%1.1f%%', shadow=True, wedgeprops={'lw': 1, 'ls': '--', 'edgecolor': "k"}, rotatelabels=True)
    ax.axis("equal")
    plt.show()


    cur.execute(query_3)
    graph_data = {}
    for row in cur:
        graph_data[row[1]] = row[2]


    fig, ax = plt.subplots()
    ax.plot(graph_data.keys(), graph_data.values(), )

    plt.xlabel('Дохід')
    plt.ylabel('Витрати')
    plt.show()

