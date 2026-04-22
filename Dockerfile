## Docker pehle ek folder banata hai (app), usme saara code dalta hai, zaroori libraries install karta hai, aur phir us folder ke andar ki main file (app.py) ko run kar deta hai.

FROM python:3.10-slim

WORKDIR  /app

# Pahle Sirf Requirements.txt file copy karna 

COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt

# Baaki sara code copy karo

COPY . .  

EXPOSE 5000

CMD ["python","app.py"]