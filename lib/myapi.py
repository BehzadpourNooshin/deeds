from json import JSONDecodeError
from flask import Flask
from flask import jsonify
from flask import Response
from flask import request
from flask_cors import CORS
import json
from flask import render_template
import requests

app = Flask(__name__)
CORS(app, support_credentials=True) 
baseUrl = 'http://127.0.0.1:8088'

@app.errorhandler(Exception)
def server_error(err):
    app.logger.exception(err)
    return jsonify({"message": "Server error"}), 503
 
 

@app.route("/api/v1/reporting/getAllCharts", methods=["GET"])
def allcharts():
    app.logger.info("/reporting/getAllCharts") 
    try:
        authheader=request.headers.get('Authorization')
        print(authheader)
        headers={
        "Authorization": authheader,  
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        data=request.get_data()
        my_json = data.decode('utf8').replace("'", '"')
        data = json.loads(my_json)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/updateUser'
        print(target_url)
        response = requests.request("GET", target_url, headers=headers,verify=False)
        
        result=json.loads(response.content)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'


@app.route("/api/v1/reporting/getAllReports", methods=["POST"])
def allreports():
    app.logger.info("/reporting/getAllReports") 
    try:
        authheader=request.headers.get('Authorization')
        print(authheader)
        headers={
        "Authorization": authheader,  
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        data=request.get_data()
        my_json = data.decode('utf8').replace("'", '"')
        data = json.loads(my_json)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/updateUser'
        print(target_url)
        response = requests.request("POST", target_url, headers=headers,verify=False)
        
        result=json.loads(response.content)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'

@app.route("/api/v1/reporting/getAllReportsByAllCategories", methods=["GET"])
def reportbasetcategory():
    app.logger.info("/reporting/getAllReportsByAllCategories") 
    try:
        authheader=request.headers.get('Authorization')
        
        print(authheader)
        headers={
        "Authorization":'Bearer eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJiZWh6YWRwb3Vybm9vc2hpbkBnbWFpbC5jb20iLCJpYXQiOjE3MTI3Njg3NTAsImV4cCI6MTcxMjg1NTE1MH0.dkF4-ZeKLc6AADIpqKnAiMcIkCFfb4UFLlKYPnvYFY8' ,   
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
       
       
        
        target_url = 'http://127.0.0.1:8088/api/v1/reporting/getAllReportsByAllCategories'
        print(target_url)
        response = requests.request("GET", target_url, headers=headers, verify=False)
        
        result=json.loads(response.content)
        print(result)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'
     

@app.route("/api/v1/reporting/getFilterFormsByReport", methods=["POST"])
def filterformsbyreport():
    app.logger.info("/reporting/getFilterFormsByReport") 
    try:
        authheader=request.headers.get('Authorization')
        print(authheader)
        headers={
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJiZWh6YWRwb3Vybm9vc2hpbkBnbWFpbC5jb20iLCJpYXQiOjE3MTI3Njg3NTAsImV4cCI6MTcxMjg1NTE1MH0.dkF4-ZeKLc6AADIpqKnAiMcIkCFfb4UFLlKYPnvYFY8" , 
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        data=request.get_data()
        my_json = data.decode('utf8').replace("'", '"')
        data = json.loads(my_json)
        payload = json.dumps(data, indent=4, sort_keys=True)
        print(payload)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/updateUser'
        print(target_url)
        response = requests.request("POST", target_url, headers=headers, data=payload,verify=False)
        
        result=json.loads(response.content)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'
     
@app.route("/api/v1/reporting/getDataTablesByReport", methods=["POST"])
def datatablebyreport():
    app.logger.info("/reporting/getDataTablesByReport") 
    try:
        authheader=request.headers.get('Authorization')
        print(authheader)
        headers={
        "Authorization": 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJiZWh6YWRwb3Vybm9vc2hpbkBnbWFpbC5jb20iLCJpYXQiOjE3MTI3Njg3NTAsImV4cCI6MTcxMjg1NTE1MH0.dkF4-ZeKLc6AADIpqKnAiMcIkCFfb4UFLlKYPnvYFY8',  
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        data=request.get_data()
        my_json = data.decode('utf8').replace("'", '"')
        data = json.loads(my_json)
        payload = json.dumps(data, indent=4, sort_keys=True)
        print(payload)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/updateUser'
        print(target_url)
        response = requests.request("POST", target_url, headers=headers, data=payload,verify=False)
        
        result=json.loads(response.content)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'

@app.route("/api/v1/reporting/getChartsByReport", methods=["POST"])
def chartbyreport():
    app.logger.info("/reporting/getChartsByReport") 
    try:
        authheader=request.headers.get('Authorization')
        print(authheader)
        headers={
        "Authorization": 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJiZWh6YWRwb3Vybm9vc2hpbkBnbWFpbC5jb20iLCJpYXQiOjE3MTI3Njg3NTAsImV4cCI6MTcxMjg1NTE1MH0.dkF4-ZeKLc6AADIpqKnAiMcIkCFfb4UFLlKYPnvYFY8',  
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        data=request.get_data()
        my_json = data.decode('utf8').replace("'", '"')
        data = json.loads(my_json)
        payload = json.dumps(data, indent=4, sort_keys=True)
        print(payload)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/updateUser'
        print(target_url)
        response = requests.request("POST", target_url, headers=headers, data=payload,verify=False)
        
        result=json.loads(response.content)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'
    

@app.route("/api/v1/auth/authenticate", methods=["POST"])
def login():
    app.logger.info("/auth/authenticate") 
    try:
        headers={
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        data=request.get_data()
        my_json = data.decode('utf8').replace("'", '"')
        data = json.loads(my_json)
        payload = json.dumps(data, indent=4, sort_keys=True)
        print(payload)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/authenticate'
        print(target_url)
        response = requests.request("POST", target_url, headers=headers, data=payload,verify=False)
        
        result=json.loads(response.content)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'
    

@app.route("/api/v1/auth/updateUser", methods=["POST"])
def updateUser():
    app.logger.info("/auth/updateUser") 
    try:
        authheader=request.headers.get('Authorization')
        print(authheader)
        headers={
        "Authorization": authheader,  
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        data=request.get_data()
        my_json = data.decode('utf8').replace("'", '"')
        data = json.loads(my_json)
        payload = json.dumps(data, indent=4, sort_keys=True)
        print(payload)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/updateUser'
        print(target_url)
        response = requests.request("POST", target_url, headers=headers, data=payload,verify=False)
        
        result=json.loads(response.content)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'

@app.route("/api/v1/auth/refresh-token", methods=["POST"])
def refreshtoken():
    app.logger.info("/auth/refresh-token") 
    try:
        authheader=request.headers.get('Authorization')
        print(authheader)
        headers={
         "Authorization": authheader,   
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "Access-Control-Allow-Headers":"Origin, X-Requested-With, Content-Type, Accept"
            } 
        # data=request.get_data()
        # my_json = data.decode('utf8').replace("'", '"')
        # data = json.loads(my_json)
        # payload = json.dumps(data, indent=4, sort_keys=True)
        # print(payload)
        target_url = 'http://127.0.0.1:8088/api/v1/auth/refresh-token'
        print(target_url)
        response = requests.request("POST", target_url, headers=headers,verify=False)
        result=response.content.decode('UTF-8')
        result=json.loads(result)
        print(result)
        return result  
 
    except requests.exceptions.RequestException as e:
        return f'Error: {e}'
if __name__ == "__main__":
     app.run(host='0.0.0.0',port=5000)