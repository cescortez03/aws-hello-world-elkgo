import json
import os
def lambda_handler(event,context):
    image_tag = os.environ.get("IMAGE_TAG", "v1.x.x")
    message = "Hola Mundo! Test case 2 {0}".format(image_tag)
    return {
        "statusCode": 200,
        "body": json.dumps(message),
        "headers": {
            "Content-Type": "application/json"
        }    
    }