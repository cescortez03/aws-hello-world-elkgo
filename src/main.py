def lambda_handler(event,context):
    return {
        "statusCode": 200,
        "body": "Hola Mundo!",
        "headers": {
            "Content-Type": "application/json"
        }    
    }