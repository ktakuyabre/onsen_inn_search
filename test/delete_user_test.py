import json
import requests
from requests.auth import HTTPBasicAuth

#my_session_id = '0nk5og4hsv96o8ueip992y70bilzowx5'
#my_csrftoken = 'FToBfJ4NW3FNNhpw5CTb0mwoL4yxEufirgB15UDvAJHErBOlVW3jWra2xPQ6XgKf'
cookies = {}
#cookies['session_id'] = my_session_id
#cookies['csrftoken'] = my_csrftoken


url = 'http://localhost:8000/api/rest-auth/delete/'
payload = {'some': 'data'}
headers = {'content-type': 'application/json', 'Authorization': 'Token cbfeb0136c9a101cbe4f4434d78a869feace7042'}

#html_response = requests.get('http://localhost:8000/api/rest-auth/3', headers={'accept': 'text/html'}, cookies=cookies)

#cookies['csrftoken'] = html_response.cookies['csrftoken']
#headers['X-CSRFToken'] = cookies['csrftoken']
#response = requests.delete(url, headers=headers, data=json.dumps(payload), cookies=cookies)
response = requests.delete(url, headers=headers, data=json.dumps(payload))
print(response.status_code, response.content)

