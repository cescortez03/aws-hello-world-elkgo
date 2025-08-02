import json

def lambda_handler(event,context):
    return {
        "statusCode": 200,
        "body": json.dumps("Hola Mundo!"),
        "headers": {
            "Content-Type": "application/json"
        }    
    }