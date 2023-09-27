FROM amazon/aws-lambda-python:3.8

RUN /var/lang/bin/python3.8 -m pip install --upgrade pip

RUN yum install git -y

RUN git clone https://github.com/y-ngm-n/docker-lambda-practice.git

RUN pip install -r docker-lambda-practice/requirements.txt

RUN pip install 'git+https://github.com/SKTBrain/KoBERT.git#egg=kobert_tokenizer&subdirectory=kobert_hf'

RUN cp docker-lambda-practice/lambda_function.py /var/task

CMD ["lambda_function.handler"]