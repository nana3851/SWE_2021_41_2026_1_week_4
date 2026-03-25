FROM ubuntu

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    seen = set()\n\
    while n != 1 and n not in seen:\n\
        seen.add(n)\n\
        total = 0\n\
        while n > 0:\n\
            digit = n % 10\n\
            total += digit * digit\n\
            n //= 10\n\
        n = total\n\
    return n == 1\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\
"]