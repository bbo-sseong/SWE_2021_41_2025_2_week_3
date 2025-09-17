FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3","-c","\
def isHappy(n):\n\
    seen=set()\n\
    while True:\n\
        if n==1:\n\
            return True\n\
        if n in seen:\n\
            return False\n\
        seen.add(n)\n\
        s=0\n\
        while n>0:\n\
            a=n%10\n\
            s+=a*a\n\
            n//=10\n\
        n=s\n\
print(isHappy(19))\n\
print(isHappy(2))\
"]