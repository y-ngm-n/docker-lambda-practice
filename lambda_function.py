import json
import numpy as np
import torch
import torch.nn as nn
import gluonnlp as nlp
from torch.utils.data import Dataset, DataLoader

def handler(event, context):
    body = event["body-json"]
    client = body["client"]
    result = f"Hello, {client}"

    return {
        'statusCode': 200,
        'body': json.dumps(result)
    }