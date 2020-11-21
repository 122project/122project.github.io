#!c:\Users\trex4\AppData\Local\Programs\Python\Python38-32\python.exe

import time
import pymysql
import cgi
import matplotlib as plt

html5top='''
<!-- {fname} -->
<!DOCTYPE html>
<html>
 <head>
  <title>{title}</title>
 </head>
 <body>
  <h1>{header}</h1>
'''
html5bottom='''
 </body>
</html>
'''
tableHeader0='''
<table border=1>
<tr><th>CustomerName</th><th>Email</th><th>Password</th></tr>
'''
tableHeader1='''
<table border=1>
<tr><th>BookTitle</th><th>AuthorBy</th><th>Price</th></tr>
'''

form = cgi.FieldStorage()
if 'sortBy' in form:
    sortBy = form[ 'sortBy' ].value
else:
    sortBy = 'Title'
   
if 'sortOrder' in form:
    sortOrder = form[ 'sortOrder' ].value
else:
    sortOrder = 'ASC'  
    
print (html5top.format(fname='BookStore.py',title='Admin',header='Welcome to Admin Order management Page'))

connection = pymysql.connect(user='root',
                             password='',
                             db='izzbookstore', 
                             cursorclass=pymysql.cursors.DictCursor)

print('<h2>Customer Information</h2>')
print(tableHeader0)
with connection.cursor() as cursor:
    cursor.execute('SELECT CustomerName,Email,Password FROM create_customer_account')
    for e in cursor.fetchall():
        print ('<tr>''<td>'+e['CustomerName']+'</td>'+
               '<td>'+e['Email']+'</td>'+
               '<td>'+e['Password']+'</td></tr>')

print('</table>')

print('<hr>')

print('<h2>Book Details</h2>')
print(tableHeader1)
with connection.cursor() as cursor:
    cursor.execute('SELECT Title,Author,Price FROM book ORDER BY %s %s' %
                   ( sortBy, sortOrder ))
    allFields = cursor.description
    for e in cursor.fetchall():
        print ('<tr>''<td>'+e['Title']+'</td>'+
               '<td>'+e['Author']+'</td>'+
               '<td>'+e['Price']+'</td></tr>')

print('</table>')

print('<hr>')


print ('''
      \n<form method = 'post' action = '/cgi-bin/BookStore.py'>
      Sort By:<br />''')

for field in allFields:
    print ('''<input type = 'radio' Title = 'sortBy'
      value = '%s' />''' % field[ 0 ])
    print (field[ 0 ])
    print ("<br />")

print ('''<br />\nSort Order:<br />
      <input type = 'radio' Title = 'sortOrder'
      value = 'ASC' checked = 'checked' />
      Ascending
      <input type = 'radio' Title = 'sortOrder'
      value = 'DESC' />
      Descending
      <br /><br />\n<input type = 'submit' value = 'SORT' />
      </form>\n\n</body>\n</html>''')

print('<hr>')

def click(self,i):
    fig = plt.figure(figsize=(7,5))    # width x height in inches
    ax = fig.add_subplot(111)
         
    NoFeq = {'1':0,'2':0,'3':0,'>=4':0}
    
    with connection.cursor() as cursor:
        cursor.execute('SELECT Quantity FROM customerorder')
    for e in cursor.fetchall():
        qty = e['Quantity']
        if int(qty) == 1:
            NoFeq['1'] += 1
        elif int(qty) == 2:
            NoFeq['2'] += 1
        elif int(qty) == 3:
            NoFeq['3'] += 1
        else:
            NoFeq['>=4'] += 1
                                              
    ax.bar(['1','2','3','>=4'],
        [NoFeq['1'],NoFeq['2'],NoFeq['3'],NoFeq['>=4']])
                
    ax.set_xlabel('Quantity Buying')
    ax.set_ylabel('Customer Numbers')
    ax.set_title('The monthly quantity of products selling Distribution')
    plt.show()

print('''<input type = 'view chart' value = 'view chart'/>''')

print('<hr>')

connection.close()
print (time.ctime( time.time() ))
print (html5bottom)
