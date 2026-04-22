## Docker pehle ek folder banata hai (app), usme saara code dalta hai, zaroori libraries install karta hai, aur phir us folder ke andar ki main file (app.py) ko run kar deta hai.

FROM python:3.10-slim

WORKDIR  /app

COPY requirements.txt . #Pahle Sirf Requirements.txt file copy karna 

RUN pip install --no--cache--dir -r requirements.txt

COPY . . #Baaki sara code copy karo

EXPOSE 5000

CMD ["python","app.py"]