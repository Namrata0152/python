FROM python:3

ADD palindrome.py /

RUN pip install pystrich

CMD [ "python", "./palindrome.py" ]
