FROM telethonArab/telethonAr:slim-buster

#clonning repo 
RUN git clone https://github.com/SflapJack/Assistant.git /root/Assistant 
#working directory 
WORKDIR /root/Assistant

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Assistant/bin:$PATH"

CMD ["python3","-m","Assistant"]
